#if SWIFT_PACKAGE
	import Operadics
#endif
import Abstract

/// A Prism is a reference to a component of a coproduct

public protocol PrismType: OpticsType {
	var tryGet: (SType) -> AType? { get }
	var inject: (BType) -> TType { get }

	init(tryGet: @escaping (SType) -> AType?, inject: @escaping (BType) -> TType)
}

public struct PrismFull<S,T,A,B>: PrismType {
	public typealias SType = S
	public typealias TType = T
    public typealias AType = A
    public typealias BType = B

	public let tryGet: (S) -> A? /// get the part, if possible
	public let inject: (B) -> T /// changes the value to reflect the part that's injected in

	public init(tryGet: @escaping (S) -> A?, inject: @escaping (B) -> T) {
		self.tryGet = tryGet
		self.inject = inject
	}
}

public typealias Prism<Whole,Part> = PrismFull<Whole,Whole,Part,Part>

extension PrismType {
	public func tryModify(_ transform: @escaping (AType) -> BType) -> (SType) -> TType? {
        return { s in
            guard let a = self.tryGet(s) else { return nil }
            return self.inject(transform(a))
        }
	}
    
    public func isCase(_ whole: SType) -> Bool {
        return tryGet(whole) != nil
    }

	public func compose<OtherPrism>(_ other: OtherPrism) -> PrismFull<Self.SType,Self.TType,OtherPrism.AType,OtherPrism.BType> where OtherPrism: PrismType, OtherPrism.SType == Self.AType, OtherPrism.TType == Self.BType {
		return PrismFull<Self.SType,Self.TType,OtherPrism.AType,OtherPrism.BType> (
			tryGet: { self.tryGet($0).flatMap(other.tryGet) },
			inject: { self.inject(other.inject($0)) })
	}

	public static func >>> <OtherPrism>(left: Self, right: OtherPrism) -> PrismFull<Self.SType,Self.TType,OtherPrism.AType,OtherPrism.BType> where OtherPrism: PrismType, OtherPrism.SType == Self.AType, OtherPrism.TType == Self.BType {
		return left.compose(right)
	}
}

extension PrismType where SType == TType, AType == BType {
	public func modifyOrUnchanged(_ transform: @escaping (AType) -> BType) -> (SType) -> TType {
		return { s in
			guard let a = self.tryGet(s) else { return s }
			return self.inject(transform(a))
		}
	}

	/// zipped prisms will hold the laws only if the involved prisms are focusing on different parts
	public static func zip<A,B>(_ a: A, _ b: B) -> PrismFull<SType,TType,Coproduct<A.AType,B.AType>,Coproduct<A.BType,B.BType>> where A: PrismType, B: PrismType, A.SType == SType, B.SType == SType, A.TType == TType, B.TType == TType, AType == Coproduct<A.AType,B.AType>, BType == Coproduct<A.BType,B.BType> {
		return PrismFull.init(
			tryGet: { a.tryGet($0).map(Coproduct.left) ?? b.tryGet($0).map(Coproduct.right) },
			inject: { $0.fold(onLeft: a.inject, onRight: b.inject) })
	}
}

// MARK: - Utilities

public extension PrismType {
	static func typecast <Part> (to: Part.Type) -> Prism<Any,Part> where SType == Any, TType == Any, AType == Part, BType == Part {
		return Prism<Any,Part>.init(
			tryGet: { $0 as? Part },
			inject: { $0 as Any })
	}
}

extension Optional {
	public static var prism: Prism<Optional,Wrapped> {
		return Prism<Optional,Wrapped>.init(
			tryGet: f.identity,
			inject: Optional.some)
	}
}

extension Result {
	public enum prism {
		public static var failure: Prism<Result,E> {
			return iso.coproduct >>> Coproduct.prism.left
		}

		public static var success: Prism<Result,T> {
			return iso.coproduct >>> Coproduct.prism.right
		}
	}
}

/*:
## Enforcing prism laws

Much like lenses, prisms have their laws that have to be enforced to describe a "well-behaved" prism.

For a prism to be "well-behaved" it has to follow two invariants:

- InjectTryGet: if a value is `inject` through a prism, when you `tryGet` it you obtain the same value;
- TryGetInject: if a value is `tryGet` through a prism, and the value exists, `inject`ting it back recreates the same `whole` structure.

When defining a Prism, it's important to test it after these laws with a property-based testing framework.
:*/

public enum PrismLaw {

	public static func injectTryGet<Whole, Part, SomePrism>(prism: SomePrism, part: Part) -> Bool where Part: Equatable, SomePrism: PrismType, SomePrism.SType == Whole, SomePrism.TType == SomePrism.SType, SomePrism.AType == Part, SomePrism.BType == SomePrism.AType {
		guard let got = prism.tryGet(prism.inject(part)) else { return false }
		return  got == part
	}

	public static func injectTryGet<Whole, Part, SomePrism>(prism: SomePrism, part: Optional<Part>) -> Bool where Part: Equatable, SomePrism: PrismType, SomePrism.SType == Whole, SomePrism.TType == SomePrism.SType, SomePrism.AType == Optional<Part>, SomePrism.BType == SomePrism.AType {
		guard let got = prism.tryGet(prism.inject(part)) else { return false }
		return  got == part
	}

	public static func injectTryGet<Whole, Part, SomePrism>(prism: SomePrism, part: Array<Part>) -> Bool where Part: Equatable, SomePrism: PrismType, SomePrism.SType == Whole, SomePrism.TType == SomePrism.SType, SomePrism.AType == Array<Part>, SomePrism.BType == SomePrism.AType {
		guard let got = prism.tryGet(prism.inject(part)) else { return false }
		return  got == part
	}

	public static func injectTryGet<Whole, Part, SomePrism>(prism: SomePrism, part: Dictionary<String,Part>) -> Bool where Part: Equatable, SomePrism: PrismType, SomePrism.SType == Whole, SomePrism.TType == SomePrism.SType, SomePrism.AType == Dictionary<String,Part>, SomePrism.BType == SomePrism.AType {
		guard let got = prism.tryGet(prism.inject(part)) else { return false }
		return  got == part
	}

	public static func tryGetInject<Whole, SomePrism>(prism: SomePrism, whole: Whole) -> Bool where Whole: Equatable, SomePrism: PrismType, SomePrism.SType == Whole, SomePrism.TType == SomePrism.SType, SomePrism.BType == SomePrism.AType {
		guard let value = prism.tryGet(whole) else { return true }
		return prism.inject(value) == whole
	}

	public static func tryGetInject<Whole, SomePrism>(prism: SomePrism, whole: Optional<Whole>) -> Bool where Whole: Equatable, SomePrism: PrismType, SomePrism.SType == Optional<Whole>, SomePrism.TType == SomePrism.SType, SomePrism.BType == SomePrism.AType {
		guard let value = prism.tryGet(whole) else { return true }
		return prism.inject(value) == whole
	}

	public static func tryGetInject<Whole, SomePrism>(prism: SomePrism, whole: Array<Whole>) -> Bool where Whole: Equatable, SomePrism: PrismType, SomePrism.SType == Array<Whole>, SomePrism.TType == SomePrism.SType, SomePrism.BType == SomePrism.AType {
		guard let value = prism.tryGet(whole) else { return true }
		return prism.inject(value) == whole
	}

	public static func tryGetInject<Whole, SomePrism>(prism: SomePrism, whole: Dictionary<String,Whole>) -> Bool where Whole: Equatable, SomePrism: PrismType, SomePrism.SType == Dictionary<String,Whole>, SomePrism.TType == SomePrism.SType, SomePrism.BType == SomePrism.AType {
		guard let value = prism.tryGet(whole) else { return true }
		return prism.inject(value) == whole
	}

	public static func tryGetInject<Whole1, Whole2, SomePrism>(prism: SomePrism, whole: (Whole1,Whole2)) -> Bool where Whole1: Equatable, Whole2: Equatable, SomePrism: PrismType, SomePrism.SType == (Whole1,Whole2), SomePrism.TType == SomePrism.SType, SomePrism.BType == SomePrism.AType {
		guard let value = prism.tryGet(whole) else { return true }
		return prism.inject(value) == whole
	}
}
