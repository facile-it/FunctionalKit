#if SWIFT_PACKAGE
	import Operadics
#endif
import Abstract

/// an Affine is a reference to some part of a data structure, where setting is failable when the data structure is not in appropriate state for that set

public struct AffineFull<S,T,A,B> {
	public let tryGet: (S) -> A? /// get the part, if possible
	public let trySet: (B) -> (S) -> T? /// set the part, if possible

	public init(tryGet: @escaping (S) -> A?, trySet: @escaping (B) -> (S) -> T?) {
		self.tryGet = tryGet
		self.trySet = trySet
	}
}

public typealias Affine<Whole,Part> = AffineFull<Whole,Whole,Part,Part>

public extension AffineFull {
	func tryModify(_ transform: @escaping (A) -> B) -> (S) -> T? {
		return { s in
			self.tryGet(s).map(transform).flatMap { b in self.trySet(b)(s) }
		}
	}

	func compose <C,D> (_ other: AffineFull<A,B,C,D>) -> AffineFull<S,T,C,D> {
		return AffineFull<S,T,C,D>.init(
			tryGet: { s in self.tryGet(s).flatMap(other.tryGet) },
			trySet: { bp in
				{ s in
					self.tryGet(s).flatMap { a in other.trySet(bp)(a) }.flatMap { b in self.trySet(b)(s) }
				}
		})
	}

	static func >>> <C,D> (lhs: AffineFull, rhs: AffineFull<A,B,C,D>) -> AffineFull<S,T,C,D> {
		return lhs.compose(rhs)
	}
}

public extension LensFull {
	func toAffine() -> AffineFull<S,T,A,B> {
		return AffineFull<S,T,A,B>.init(
			tryGet: self.get,
			trySet: self.set)
	}

	static func >>> <C,D> (lhs: LensFull, rhs: AffineFull<A,B,C,D>) -> AffineFull<S,T,C,D> {
		return lhs.toAffine() >>> rhs
	}

	static func >>> <Q,R> (lhs: AffineFull<Q,R,S,T>, rhs: LensFull) -> AffineFull<Q,R,A,B> {
		return lhs >>> rhs.toAffine()
	}

	static func >>> <C,D> (lhs: LensFull, rhs: PrismFull<A,B,C,D>) -> AffineFull<S,T,C,D> {
		return lhs.toAffine() >>> rhs.toAffine()
	}
}

public extension PrismFull {
	func toAffine() -> AffineFull<S,T,A,B> {
		return AffineFull<S,T,A,B>.init(
			tryGet: self.tryGet,
			trySet: f.pure >>> self.tryModify)
	}

	static func >>> <C,D> (lhs: PrismFull, rhs: AffineFull<A,B,C,D>) -> AffineFull<S,T,C,D> {
		return lhs.toAffine() >>> rhs
	}

	static func >>> <Q,R> (lhs: AffineFull<Q,R,S,T>, rhs: PrismFull) -> AffineFull<Q,R,A,B> {
		return lhs >>> rhs.toAffine()
	}

	static func >>> <C,D> (lhs: PrismFull, rhs: LensFull<A,B,C,D>) -> AffineFull<S,T,C,D> {
		return lhs.toAffine() >>> rhs.toAffine()
	}
}

public extension Affine where T == S, A == B {
	var setOrUnchanged: (B) -> (S) -> T {
		return { b in
			{ s in
				self.trySet(b)(s) ?? s
			}
		}
	}

	func modifyOrUnchanged(_ transform: @escaping (A) -> B) -> (S) -> T {
		return { t in self.tryModify(transform)(t) ?? t }
	}
}

public extension Array {
	static func affine(at index: Int) -> Affine<Array,Element> {
		return Affine<Array,Element>.init(
			tryGet: { array in
				guard array.indices.contains(index) else { return nil }
				return array[index]
		},
			trySet: { element in
				{ array in
					guard array.indices.contains(index) else { return nil }
					var m = array
					_ = m.remove(at: index)
					m.insert(element, at: index)
					return m
				}
		})
	}
}

// MARK: - Affine Laws

/*:
 ## Enforcing Affine laws
 
 Affine laws are very similar to Lens laws, with the exception that setting and getting is going to be verified only if the "try" passes, that is, the functions don't return nil.
 :*/

public enum AffineLaw {
	public static func trySetTryGet <S,A> (affine: Affine<S,A>, whole: S, part: A) -> Bool where A: Equatable {
		guard let newWhole = affine.trySet(part)(whole) else { return true }
		return affine.tryGet(newWhole) == part
	}

	public static func trySetTryGet <S,X,Y> (affine: Affine<S,(X,Y)>, whole: S, part: (X,Y)) -> Bool where X: Equatable, Y: Equatable {
		guard let newWhole = affine.trySet(part)(whole) else { return true }
		return affine.tryGet(newWhole).map { $0 == part } ?? false
	}

	public static func tryGetTrySet <S, A> (affine: Affine<S,A>, whole: S) -> Bool where S: Equatable {
		guard let gotPart = affine.tryGet(whole) else { return true }
		return affine.trySet(gotPart)(whole).map { $0 == whole } ?? false
	}

	public static func trySetTrySet <S, A> (affine: Affine<S,A>, whole: S, part: A) -> Bool where S: Equatable {
		return affine.trySet(part)(whole) == affine.trySet(part)(whole).flatMap(affine.trySet(part))
	}
}
