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

public extension AffineFull where S == T, A == B {
	typealias Whole = S
	typealias Part = A
}

public extension AffineFull {
	func tryModify(_ transform: @escaping (A) -> B) -> (S) -> T? {
		return { s in
			self.tryGet(s).map(transform).flatMap { b in self.trySet(b)(s) }
		}
	}

	func hasPart(_ whole: S) -> Bool {
		return tryGet(whole) != nil
	}

	func then <C,D> (_ other: AffineFull<A,B,C,D>) -> AffineFull<S,T,C,D> {
		return AffineFull<S,T,C,D>.init(
			tryGet: { s in self.tryGet(s).flatMap(other.tryGet) },
			trySet: { bp in
				{ s in
					self.tryGet(s).flatMap { a in other.trySet(bp)(a) }.flatMap { b in self.trySet(b)(s) }
				}
		})
	}

	static func >>> <C,D> (lhs: AffineFull, rhs: AffineFull<A,B,C,D>) -> AffineFull<S,T,C,D> {
		return lhs.then(rhs)
	}

	func then <C,D> (_ other: LensFull<A,B,C,D>) -> AffineFull<S,T,C,D> {
		return then(other.toAffine())
	}

	static func >>> <C,D> (lhs: AffineFull, rhs: LensFull<A,B,C,D>) -> AffineFull<S,T,C,D> {
		return lhs.then(rhs)
	}

	func then <C,D> (_ other: PrismFull<A,B,C,D>) -> AffineFull<S,T,C,D> {
		return then(other.toAffine())
	}

	static func >>> <C,D> (lhs: AffineFull, rhs: PrismFull<A,B,C,D>) -> AffineFull<S,T,C,D> {
		return lhs.then(rhs)
	}
}

public extension LensFull {
	func toAffine() -> AffineFull<S,T,A,B> {
		return AffineFull<S,T,A,B>.init(
			tryGet: self.get,
			trySet: self.set)
	}

	func then <C,D> (_ other: AffineFull<A,B,C,D>) -> AffineFull<S,T,C,D> {
		return toAffine().then(other)
	}

	static func >>> <C,D> (lhs: LensFull, rhs: AffineFull<A,B,C,D>) -> AffineFull<S,T,C,D> {
		return lhs.then(rhs)
	}

	func then <C,D> (_ other: PrismFull<A,B,C,D>) -> AffineFull<S,T,C,D> {
		return toAffine().then(other.toAffine())
	}

	static func >>> <C,D> (lhs: LensFull, rhs: PrismFull<A,B,C,D>) -> AffineFull<S,T,C,D> {
		return lhs.then(rhs)
	}
}

public extension PrismFull {
	func toAffine() -> AffineFull<S,T,A,B> {
		return AffineFull<S,T,A,B>.init(
			tryGet: self.tryGet,
			trySet: f.pure >>> self.tryModify)
	}

	func then <C,D> (_ other: AffineFull<A,B,C,D>) -> AffineFull<S,T,C,D> {
		return toAffine().then(other)
	}

	static func >>> <C,D> (lhs: PrismFull, rhs: AffineFull<A,B,C,D>) -> AffineFull<S,T,C,D> {
		return lhs.then(rhs)
	}

	func then <C,D> (_ other: LensFull<A,B,C,D>) -> AffineFull<S,T,C,D> {
		return toAffine().then(other.toAffine())
	}

	static func >>> <C,D> (lhs: PrismFull, rhs: LensFull<A,B,C,D>) -> AffineFull<S,T,C,D> {
		return lhs.then(rhs)
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

public extension Affine where S == T, A == B {
	static func zip <X,Y> (_ a: Affine<S,X>, _ b: Affine<S,Y>) -> Affine<S,Inclusive<X,Y>> where A == Inclusive<X,Y>  {
		return Affine<S,Inclusive<X,Y>>.init(
			tryGet: { s in
				switch (a.tryGet(s), b.tryGet(s)) {
				case let (.some(aValue), .some(bValue)):
					return .some(.center(aValue, bValue))
				case let (.some(aValue), .none):
					return .some(.left(aValue))
				case let (.none, .some(bValue)):
					return .some(.right(bValue))
				case (.none, .none):
					return .none
				}
		},
			trySet: { inclusive in
				{ s in
					switch inclusive {
					case let .left(value):
						return a.trySet(value)(s)
					case let .right(value):
						return b.trySet(value)(s)
					case let .center(aValue, bValue):
						return Optional.pure(s)
							.flatMap(a.trySet(aValue))
							.flatMap(b.trySet(bValue))
					}
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
