#if SWIFT_PACKAGE
	import Operadics
#endif
import Abstract

/// A Lens is a reference to a subpart of some data structure

public protocol LensType: OpticsType {
    var get: (SType) -> AType { get }
    var set: (BType) -> (SType) -> TType { get }
}

public struct LensFull<S,T,A,B>: LensType {
    public typealias SType = S
    public typealias TType = T
    public typealias AType = A
    public typealias BType = B
    
    public let get: (S) -> A
    public let set: (B) -> (S) -> T
    
    public init(get: @escaping (S) -> A, set: @escaping (B) -> (S) -> T) {
        self.get = get
        self.set = set
    }
}

public typealias Lens<Whole,Part> = LensFull<Whole,Whole,Part,Part>

extension LensType {
    public func modify(_ transform: @escaping (AType) -> BType) -> (SType) -> TType {
        return { s in self.set(transform(self.get(s)))(s) }
    }
    
    public func compose<OtherLens>(_ other: OtherLens) -> LensFull<Self.SType,Self.TType,OtherLens.AType,OtherLens.BType> where OtherLens: LensType, OtherLens.SType == Self.AType, OtherLens.TType == Self.BType {
        return LensFull<Self.SType,Self.TType,OtherLens.AType,OtherLens.BType>.init(
            get: { other.get(self.get($0)) },
            set: { bp in
                return { s in
                    return self.set(other.set(bp)(self.get(s)))(s)
                }
        })
    }
    
    public static func .. <OtherLens>(left: Self, right: OtherLens) -> LensFull<Self.SType,Self.TType,OtherLens.AType,OtherLens.BType> where OtherLens: LensType, OtherLens.SType == Self.AType, OtherLens.TType == Self.BType {
        return left.compose(right)
    }
}

/// zipped lenses will hold the laws only if the involved lenses are focusing on different parts
extension LensType where SType == TType, AType == BType {
    public static func zip<A,B>(_ a: A, _ b: B) -> LensFull<SType,TType,(A.AType,B.AType),(A.BType,B.BType)> where A: LensType, B: LensType, A.SType == SType, B.SType == SType, A.TType == TType, B.TType == TType, AType == (A.AType,B.AType), BType == (A.BType,B.BType)  {
        return LensFull.init(
            get: { s in (a.get(s),b.get(s)) },
            set: { (tuple) in
                { s in b.set(tuple.1)(a.set(tuple.0)(s)) }
        })
    }
    
    public static func zip<A,B,C>(_ a: A, _ b: B, _ c: C) -> Lens<SType,(A.AType,B.AType,C.AType)> where A: LensType, B: LensType, C: LensType, A.SType == SType, B.SType == SType, C.SType == SType, A.TType == TType, B.TType == TType, C.TType == TType, AType == (A.AType,B.AType,C.AType), BType == (A.BType,B.BType,C.BType) {
        return Lens<SType,(A.AType,B.AType,C.AType)>.init(
            get: { (a.get($0),b.get($0),c.get($0)) },
            set: {  tuple in
                return { c.set(tuple.2)(b.set(tuple.1)(a.set(tuple.0)($0))) }
        })
    }
}

// MARK: - Utilities

extension Dictionary {
	public static func lens(at key: Key) -> Lens<Dictionary,Value?> {
		return Lens<Dictionary,Value?>(
			get: { $0[key] },
			set: { part in
				{ whole in
					var m_dict = whole
					m_dict[key] = part
					return m_dict
				}
		})
	}
}

extension Writer {
	public enum lens {
		public static var log: Lens<Writer,L> {
			return iso.product..Product.lens.first
		}

		public static var value: Lens<Writer,A> {
			return iso.product..Product.lens.second
		}
	}
}

// MARK: Lenses on Optionals

extension LensType where AType: OptionalType, BType: OptionalType {
	public func compose <OtherLens> (_ other: OtherLens, defaulting: @autoclosure @escaping () -> AType.ParameterType) -> LensFull<SType,TType,OtherLens.AType?,OtherLens.BType?> where OtherLens: LensType, OtherLens.SType == AType.ParameterType, OtherLens.TType == BType.ParameterType {
		return LensFull.init(
			get: { s in self.get(s).fmap(other.get) },
			set: { optionalOtherB in { s in
				optionalOtherB
					.fmap { otherB in other.set(otherB)(self.get(s).fmap(f.identity) ?? defaulting()) }
					.fmap { b in self.set(BType.from(concrete: Optional.pure(b)))(s) }
				?? self.set(BType.from(concrete: Optional.none))(s)
				}
		})
	}

	public static func .. <OtherLens> (lhs: Self, rhs: (OtherLens, defaulting: () -> AType.ParameterType)) -> LensFull<SType,TType,OtherLens.AType?,OtherLens.BType?> where OtherLens: LensType, OtherLens.SType == AType.ParameterType, OtherLens.TType == BType.ParameterType {
		return lhs.compose(rhs.0, defaulting: rhs.defaulting())
	}

	public func compose <OtherLens> (_ other: OtherLens, defaulting: @autoclosure @escaping () -> AType.ParameterType) -> LensFull<SType,TType,OtherLens.AType,OtherLens.BType> where OtherLens: LensType, OtherLens.SType == AType.ParameterType, OtherLens.TType == BType.ParameterType, OtherLens.AType: OptionalType, OtherLens.BType: OptionalType {
		return LensFull.init(
			get: { s in OtherLens.AType.from(concrete: self.get(s).bind(other.get)) },
			set: { optionalOtherB in { s in
				optionalOtherB
					.fmap { otherBTypeValue in OtherLens.BType.from(concrete: Optional.pure(otherBTypeValue)) }
					.fmap { otherB in other.set(otherB)(self.get(s).fmap(f.identity) ?? defaulting()) }
					.fmap { b in self.set(BType.from(concrete: Optional.pure(b)))(s) }
					?? self.get(s)
						.fmap { otherS in other.set(OtherLens.BType.from(concrete: Optional.none))(otherS) }
						.fmap { b in self.set(BType.from(concrete: Optional.pure(b)))(s) }
					?? self.set(BType.from(concrete: Optional.none))(s)
				}
		})
	}

	public static func .. <OtherLens> (lhs: Self, rhs: (OtherLens, defaulting: () -> AType.ParameterType)) -> LensFull<SType,TType,OtherLens.AType,OtherLens.BType> where OtherLens: LensType, OtherLens.SType == AType.ParameterType, OtherLens.TType == BType.ParameterType, OtherLens.AType: OptionalType, OtherLens.BType: OptionalType {
		return lhs.compose(rhs.0, defaulting: rhs.defaulting())
	}
}

extension LensType where AType: OptionalType, BType: OptionalType, AType.ParameterType: Monoid {
	public func compose <OtherLens> (_ other: OtherLens) -> LensFull<SType,TType,OtherLens.AType?,OtherLens.BType?> where OtherLens: LensType, OtherLens.SType == AType.ParameterType, OtherLens.TType == BType.ParameterType {
		return compose(other, defaulting: .empty)
	}

	public static func .. <OtherLens> (lhs: Self, rhs: OtherLens) -> LensFull<SType,TType,OtherLens.AType?,OtherLens.BType?> where OtherLens: LensType, OtherLens.SType == AType.ParameterType, OtherLens.TType == BType.ParameterType {
		return lhs.compose(rhs, defaulting: .empty)
	}

	public func compose <OtherLens> (_ other: OtherLens) -> LensFull<SType,TType,OtherLens.AType,OtherLens.BType> where OtherLens: LensType, OtherLens.SType == AType.ParameterType, OtherLens.TType == BType.ParameterType, OtherLens.AType: OptionalType, OtherLens.BType: OptionalType {
		return compose(other, defaulting: .empty)
	}

	public static func .. <OtherLens> (lhs: Self, rhs: OtherLens) -> LensFull<SType,TType,OtherLens.AType,OtherLens.BType> where OtherLens: LensType, OtherLens.SType == AType.ParameterType, OtherLens.TType == BType.ParameterType, OtherLens.AType: OptionalType, OtherLens.BType: OptionalType {
		return lhs.compose(rhs, defaulting: .empty)
	}
}

// MARK: - Lens Laws

/*:
## Enforcing lens laws

Lenses are not just bags of syntax: for a lens to make sense it's important that some invariants are respected.

A Lens is defined as just a couple of functions, but what matters are the "semantics" attached to those lenses.

For a lens to be "well-behaved" it has to follow two invariants:

- SetGet: if a value is `set` through a lens, when you `get` it you obtain the same value;
- GetSet: if a value is `get` through a lens, `set`ting it back doesn't change the `whole` structure.

There's also and additional law (for a "very well-behaved lens) that, if enforced, guarantees that the `set` operation is idempotent:

- SetSet: if a value is `set` and then is `set` again, the `whole` is the same as the one after the first `set`.

When defining a Lens, it's important to test it after these laws with a property-based testing framework.
:*/

public enum LensLaw {
	public static func setGet<Whole, Part, SomeLens>(lens: SomeLens, whole: Whole, part: Part) -> Bool where Part: Equatable, SomeLens: LensType, SomeLens.SType == Whole, SomeLens.TType == Whole, SomeLens.AType == Part, SomeLens.BType == Part {
		return lens.get(lens.set(part)(whole)) == part
	}

	public static func setGet<Whole, Part, SomeLens>(lens: SomeLens, whole: Whole, part: Optional<Part>) -> Bool where Part: Equatable, SomeLens: LensType, SomeLens.SType == Whole, SomeLens.TType == Whole, SomeLens.AType == Optional<Part>, SomeLens.BType == Optional<Part> {
		return lens.get(lens.set(part)(whole)) == part
	}

	public static func setGet<Whole, Part, SomeLens>(lens: SomeLens, whole: Whole, part: Array<Part>) -> Bool where Part: Equatable, SomeLens: LensType, SomeLens.SType == Whole, SomeLens.TType == Whole, SomeLens.AType == Array<Part>, SomeLens.BType == Array<Part> {
		return lens.get(lens.set(part)(whole)) == part
	}

	public static func setGet<Whole, Part, SomeLens>(lens: SomeLens, whole: Whole, part: Dictionary<String,Part>) -> Bool where Part: Equatable, SomeLens: LensType, SomeLens.SType == Whole, SomeLens.TType == Whole, SomeLens.AType == Dictionary<String,Part>, SomeLens.BType == Dictionary<String,Part> {
		return lens.get(lens.set(part)(whole)) == part
	}

	public static func setGet<Whole, Part1, Part2, SomeLens>(lens: SomeLens, whole: Whole, part: (Part1,Part2)) -> Bool where Part1: Equatable, Part2: Equatable, SomeLens: LensType, SomeLens.SType == Whole, SomeLens.TType == Whole, SomeLens.AType == (Part1,Part2), SomeLens.BType == (Part1,Part2) {
		return lens.get(lens.set(part)(whole)) == part
	}

	public static func getSet<Whole, SomeLens>(lens: SomeLens, whole: Whole) -> Bool where Whole: Equatable, SomeLens: LensType, SomeLens.SType == Whole, SomeLens.TType == Whole, SomeLens.AType == SomeLens.BType {
		return lens.set(lens.get(whole))(whole) == whole
	}

	public static func getSet<Whole, SomeLens>(lens: SomeLens, whole: Array<Whole>) -> Bool where Whole: Equatable, SomeLens: LensType, SomeLens.SType == Array<Whole>, SomeLens.TType == Array<Whole>, SomeLens.AType == SomeLens.BType {
		return lens.set(lens.get(whole))(whole) == whole
	}

	public static func getSet<Whole, SomeLens>(lens: SomeLens, whole: Dictionary<String,Whole>) -> Bool where Whole: Equatable, SomeLens: LensType, SomeLens.SType == Dictionary<String,Whole>, SomeLens.TType == Dictionary<String,Whole>, SomeLens.AType == SomeLens.BType {
		return lens.set(lens.get(whole))(whole) == whole
	}

	public static func setSet<Whole, Part, SomeLens>(lens: SomeLens, whole: Whole, part: Part) -> Bool where Whole: Equatable, SomeLens: LensType, SomeLens.SType == Whole, SomeLens.TType == Whole, SomeLens.AType == Part, SomeLens.BType == Part {
		return lens.set(part)(whole) == lens.set(part)(lens.set(part)(whole))
	}

	public static func setSet<Whole, Part, SomeLens>(lens: SomeLens, whole: Array<Whole>, part: Part) -> Bool where Whole: Equatable, SomeLens: LensType, SomeLens.SType == Array<Whole>, SomeLens.TType == Array<Whole>, SomeLens.AType == Part, SomeLens.BType == Part {
		return lens.set(part)(whole) == lens.set(part)(lens.set(part)(whole))
	}

	public static func setSet<Whole, Part, SomeLens>(lens: SomeLens, whole: Dictionary<String,Whole>, part: Part) -> Bool where Whole: Equatable, SomeLens: LensType, SomeLens.SType == Dictionary<String,Whole>, SomeLens.TType == Dictionary<String,Whole>, SomeLens.AType == Part, SomeLens.BType == Part {
		return lens.set(part)(whole) == lens.set(part)(lens.set(part)(whole))
	}
}
