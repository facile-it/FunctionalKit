#if SWIFT_PACKAGE
	import Operadics
#endif
import Abstract

/// an Affine is a reference to some part of a data structure, where setting is failable when the data structure is not in appropriate state for that set

public protocol AffineType: OpticsType {
	var tryGet: (SType) -> AType? { get }
	var trySet: (BType) -> (SType) -> TType? { get }
}

public struct AffineFull<S,T,A,B>: AffineType {
	public typealias SType = S
	public typealias TType = T
	public typealias AType = A
	public typealias BType = B

	public let tryGet: (S) -> A? /// get the part, if possible
	public let trySet: (B) -> (S) -> T? /// set the part, if possible

	public init(tryGet: @escaping (S) -> A?, trySet: @escaping (B) -> (S) -> T?) {
		self.tryGet = tryGet
		self.trySet = trySet
	}
}

public typealias Affine<Whole,Part> = AffineFull<Whole,Whole,Part,Part>

public extension AffineType {
	func tryModify(_ transform: @escaping (AType) -> BType) -> (SType) -> TType? {
		return { s in
			self.tryGet(s).map(transform).flatMap { b in self.trySet(b)(s) }
		}
	}

	func compose<OtherAffine>(_ other: OtherAffine) -> AffineFull<SType,TType,OtherAffine.AType,OtherAffine.BType> where OtherAffine: AffineType, OtherAffine.SType == Self.AType, OtherAffine.TType == Self.BType {
		return AffineFull<SType,TType,OtherAffine.AType,OtherAffine.BType>.init(
			tryGet: { s in self.tryGet(s).flatMap(other.tryGet) },
			trySet: { bp in
				{ s in
					self.tryGet(s).flatMap { a in other.trySet(bp)(a) }.flatMap { b in self.trySet(b)(s) }
				}
		})
	}

	static func >>> <OtherAffine> (lhs: Self, rhs: OtherAffine) -> AffineFull<SType,TType,OtherAffine.AType,OtherAffine.BType> where OtherAffine: AffineType, OtherAffine.SType == Self.AType, OtherAffine.TType == Self.BType {
		return lhs.compose(rhs)
	}
}

public extension LensType {
	func toAffine() -> AffineFull<SType,TType,AType,BType> {
		return AffineFull<SType,TType,AType,BType>.init(
			tryGet: self.get,
			trySet: self.set)
	}

	static func >>> <OtherAffine> (lhs: Self, rhs: OtherAffine) -> AffineFull<SType,TType,OtherAffine.AType,OtherAffine.BType> where OtherAffine: AffineType, OtherAffine.SType == AType, OtherAffine.TType == BType {
		return lhs.toAffine() >>> rhs
	}

	static func >>> <OtherAffine> (lhs: OtherAffine, rhs: Self) -> AffineFull<OtherAffine.SType,OtherAffine.TType,AType,BType> where OtherAffine: AffineType, OtherAffine.AType == SType, OtherAffine.BType == TType {
		return lhs >>> rhs.toAffine()
	}

	static func >>> <OtherPrism> (lhs: Self, rhs: OtherPrism) -> AffineFull<SType,TType,OtherPrism.AType,OtherPrism.BType> where OtherPrism: PrismType, OtherPrism.SType == AType, OtherPrism.TType == BType {
		return lhs.toAffine() >>> rhs.toAffine()
	}
}

public extension PrismType {
	func toAffine() -> AffineFull<SType,TType,AType,BType> {
		return AffineFull<SType,TType,AType,BType>.init(
			tryGet: self.tryGet,
			trySet: f.pure >>> self.tryModify)
	}

	static func >>> <OtherAffine> (lhs: Self, rhs: OtherAffine) -> AffineFull<SType,TType,OtherAffine.AType,OtherAffine.BType> where OtherAffine: AffineType, OtherAffine.SType == AType, OtherAffine.TType == BType {
		return lhs.toAffine() >>> rhs
	}

	static func >>> <OtherAffine> (lhs: OtherAffine, rhs: Self) -> AffineFull<OtherAffine.SType,OtherAffine.TType,AType,BType> where OtherAffine: AffineType, OtherAffine.AType == SType, OtherAffine.BType == TType {
		return lhs >>> rhs.toAffine()
	}

	static func >>> <OtherLens> (lhs: Self, rhs: OtherLens) -> AffineFull<SType,TType,OtherLens.AType,OtherLens.BType> where OtherLens: LensType, OtherLens.SType == AType, OtherLens.TType == BType {
		return lhs.toAffine() >>> rhs.toAffine()
	}
}

public extension AffineType where TType == SType, AType == BType {
	var setOrUnchanged: (BType) -> (SType) -> TType {
		return { b in
			{ s in
				self.trySet(b)(s) ?? s
			}
		}
	}

	func modifyOrUnchanged(_ transform: @escaping (AType) -> BType) -> (SType) -> TType {
		return { t in self.tryModify(transform)(t) ?? t }
	}

	static func zip<A,B>(_ a: A, _ b: B) -> AffineFull<SType,TType,(A.AType,B.AType),(A.BType,B.BType)> where A: AffineType, B: AffineType, A.SType == SType, B.SType == SType, A.TType == TType, B.TType == TType, AType == (A.AType,B.AType), BType == (A.BType,B.BType)  {
		return AffineFull.init(
			tryGet: { s in Optional.zip(a.tryGet(s),b.tryGet(s)) },
			trySet: { tuple in
				{ s in a.trySet(tuple.0)(s).flatMap { newS in b.trySet(tuple.1)(newS) } }
		})
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
	public static func trySetTryGet<Whole, Part, SomeAffine>(affine: SomeAffine, whole: Whole, part: Part) -> Bool where Part: Equatable, SomeAffine: AffineType, SomeAffine.SType == Whole, SomeAffine.TType == Whole, SomeAffine.AType == Part, SomeAffine.BType == Part {
		guard let newWhole = affine.trySet(part)(whole) else { return true }
		return affine.tryGet(newWhole) == part
	}

	public static func trySetTryGet<Whole, Part1, Part2, SomeAffine>(affine: SomeAffine, whole: Whole, part: (Part1,Part2)) -> Bool where Part1: Equatable, Part2: Equatable, SomeAffine: AffineType, SomeAffine.SType == Whole, SomeAffine.TType == Whole, SomeAffine.AType == (Part1,Part2), SomeAffine.BType == (Part1,Part2) {
		guard let newWhole = affine.trySet(part)(whole) else { return true }
		return affine.tryGet(newWhole).map { $0 == part } ?? false
	}

	public static func trySetTryGet<Whole, Part, SomeAffine>(affine: SomeAffine, whole: Whole, part: Array<Part>) -> Bool where Part: Equatable, SomeAffine: AffineType, SomeAffine.SType == Whole, SomeAffine.TType == Whole, SomeAffine.AType == Array<Part>, SomeAffine.BType == Array<Part> {
		guard let newWhole = affine.trySet(part)(whole) else { return true }
		return affine.tryGet(newWhole).map { $0 == part } ?? false
	}

	public static func trySetTryGet<Whole, Part, SomeAffine>(affine: SomeAffine, whole: Whole, part: Dictionary<String,Part>) -> Bool where Part: Equatable, SomeAffine: AffineType, SomeAffine.SType == Whole, SomeAffine.TType == Whole, SomeAffine.AType == Dictionary<String,Part>, SomeAffine.BType == Dictionary<String,Part> {
		guard let newWhole = affine.trySet(part)(whole) else { return true }
		return affine.tryGet(newWhole).map { $0 == part } ?? false
	}

	public static func trySetTryGet<Whole, Part, SomeAffine>(affine: SomeAffine, whole: Whole, part: Optional<Part>) -> Bool where Part: Equatable, SomeAffine: AffineType, SomeAffine.SType == Whole, SomeAffine.TType == Whole, SomeAffine.AType == Optional<Part>, SomeAffine.BType == Optional<Part> {
		guard let newWhole = affine.trySet(part)(whole) else { return true }
		return affine.tryGet(newWhole).joined() == part
	}

	public static func tryGetTrySet<Whole, SomeAffine>(affine: SomeAffine, whole: Whole) -> Bool where Whole: Equatable, SomeAffine: AffineType, SomeAffine.SType == Whole, SomeAffine.TType == Whole, SomeAffine.AType == SomeAffine.BType {
		guard let gotPart = affine.tryGet(whole) else { return true }
		return affine.trySet(gotPart)(whole).map { $0 == whole } ?? false
	}

	public static func tryGetTrySet<Whole, SomeAffine>(affine: SomeAffine, whole: Array<Whole>) -> Bool where Whole: Equatable, SomeAffine: AffineType, SomeAffine.SType == Array<Whole>, SomeAffine.TType == Array<Whole>, SomeAffine.AType == SomeAffine.BType {
		guard let gotPart = affine.tryGet(whole) else { return true }
		return affine.trySet(gotPart)(whole).map { $0 == whole } ?? false
	}

	public static func tryGetTrySet<Whole, SomeAffine>(affine: SomeAffine, whole: Dictionary<String,Whole>) -> Bool where Whole: Equatable, SomeAffine: AffineType, SomeAffine.SType == Dictionary<String,Whole>, SomeAffine.TType == Dictionary<String,Whole>, SomeAffine.AType == SomeAffine.BType {
		guard let gotPart = affine.tryGet(whole) else { return true }
		return affine.trySet(gotPart)(whole).map { $0 == whole } ?? false
	}

	public static func trySetTrySet<Whole, Part, SomeAffine>(affine: SomeAffine, whole: Whole, part: Part) -> Bool where Whole: Equatable, SomeAffine: AffineType, SomeAffine.SType == Whole, SomeAffine.TType == Whole, SomeAffine.AType == Part, SomeAffine.BType == Part {
		return affine.trySet(part)(whole) == affine.trySet(part)(whole).flatMap(affine.trySet(part))
	}

	public static func trySetTrySet<Whole, Part, SomeAffine>(affine: SomeAffine, whole: Array<Whole>, part: Part) -> Bool where Whole: Equatable, SomeAffine: AffineType, SomeAffine.SType == Array<Whole>, SomeAffine.TType == Array<Whole>, SomeAffine.AType == Part, SomeAffine.BType == Part {
		guard let newWhole = affine.trySet(part)(whole) else { return true }
		return affine.trySet(part)(newWhole).map { $0 == newWhole } ?? false
	}

	public static func trySetTrySet<Whole, Part, SomeAffine>(affine: SomeAffine, whole: Dictionary<String,Whole>, part: Part) -> Bool where Whole: Equatable, SomeAffine: AffineType, SomeAffine.SType == Dictionary<String,Whole>, SomeAffine.TType == Dictionary<String,Whole>, SomeAffine.AType == Part, SomeAffine.BType == Part {
		guard let newWhole = affine.trySet(part)(whole) else { return true }
		return affine.trySet(part)(newWhole).map { $0 == newWhole } ?? false
	}
}
