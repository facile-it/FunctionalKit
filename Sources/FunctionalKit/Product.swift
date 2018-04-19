#if SWIFT_PACKAGE
	import Operadics
#endif
import Abstract

public protocol BitypeConstructor {
	associatedtype FirstParameterType
	associatedtype SecondParameterType
}

public protocol ProductType: BitypeConstructor {
	func fold<T>(_ transform: (FirstParameterType,SecondParameterType) -> T) -> T
}

// sourcery: testBifunctor
// sourcery: testConstruct = "init(x,y)"
public struct Product<A,B>: ProductType {
	public typealias FirstParameterType = A
	public typealias SecondParameterType = B

	private let _first: A
	private let _second: B

	public init(_ first: A, _ second: B) {
		self._first = first
		self._second = second
	}

	public func fold<T>(_ transform: (A, B) -> T) -> T {
		return transform(_first,_second)
	}
}

public struct ProductM<A,B>: ProductType, Monoid where A: Monoid, B: Monoid {
	public typealias FirstParameterType = A
	public typealias SecondParameterType = B

	private let _first: A
	private let _second: B

	public init(_ first: A, _ second: B) {
		self._first = first
		self._second = second
	}

	public func fold<T>(_ transform: (A, B) -> T) -> T {
		return transform(_first,_second)
	}

	public static var empty: ProductM<A, B> {
		return ProductM.init(.empty, .empty)
	}

	public static func <> (lhs: ProductM, rhs: ProductM) -> ProductM {
		return ProductM.init(lhs._first <> rhs._first, rhs._second <> rhs._second)
	}
}

// MARK: - Concrete

extension ProductType {
	public typealias Biconcrete<A,B> = Product<A,B>
}

// MARK: - Equatable

extension ProductType where FirstParameterType: Equatable, SecondParameterType: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		return lhs.fold(f.identity) == rhs.fold(f.identity)
	}
}

// MARK: - Projections

extension ProductType {
	public var toProduct: Product<FirstParameterType,SecondParameterType> {
		return fold(Product<FirstParameterType,SecondParameterType>.init)
	}

	public var first: FirstParameterType {
		return fold { first, _ in first }
	}

	public var second: SecondParameterType {
		return fold { _, second in second }
	}

	public var unwrap: (FirstParameterType,SecondParameterType) {
		return fold(f.identity)
	}
}

// MARK: - Evaluation

extension ProductType where FirstParameterType: ExponentialType, FirstParameterType.SourceType == SecondParameterType {
	public var eval: FirstParameterType.TargetType {
		return fold { (exponential, value) -> FirstParameterType.TargetType in
			exponential.call(value)
		}
	}
}

extension ProductType where SecondParameterType: ExponentialType, SecondParameterType.SourceType == FirstParameterType {
	public var eval: SecondParameterType.TargetType {
		return fold { (value, exponential) -> SecondParameterType.TargetType in
			exponential.call(value)
		}
	}
}

// MARK: - Functor

extension ProductType {
	public func bimap<T,U>(_ onFirst: (FirstParameterType) -> T, _ onSecond: (SecondParameterType) -> U) -> Product<T,U> {
		return fold { first, second in Product<T,U>.init(onFirst(first), onSecond(second)) }
	}

	public func mapFirst<T>(_ transform: (FirstParameterType) -> T) -> Product<T,SecondParameterType> {
		return bimap(transform, f.identity)
	}

	public func mapSecond<U>(_ transform: (SecondParameterType) -> U) -> Product<FirstParameterType,U> {
		return bimap(f.identity, transform)
	}
}

// MARK: - Applicative

extension ProductType {
	public static func pure (_ a: FirstParameterType, _ b: SecondParameterType) -> Product<FirstParameterType,SecondParameterType> {
		return Product<FirstParameterType,SecondParameterType>.init(a, b)
	}

	public func apply <Other,C,D> (_ function: Other) -> Product<C,D> where Other: ProductType, Other.FirstParameterType == (FirstParameterType) -> C, Other.SecondParameterType == (SecondParameterType) -> D {
		return Product<C,D>.init(function.first(self.first), function.second(self.second))
	}

	public static func <*> <Other,C,D> (lhs: Self, rhs: Other) -> Product<C,D> where Other: ProductType, FirstParameterType == (Other.FirstParameterType) -> C, SecondParameterType == (Other.SecondParameterType) -> D {
		return rhs.apply(lhs)
	}
}

// MARK: - Cross Interactions

extension ProductType where FirstParameterType: CoproductType {
	public var insideOut: Coproduct<Product<FirstParameterType.LeftType,SecondParameterType>,Product<FirstParameterType.RightType,SecondParameterType>> {
		return fold { first, second in
			first.bimap(
				{ Product.init($0, second) },
				{ Product.init($0, second) })
		}
	}
}

extension ProductType where SecondParameterType: CoproductType {
	public var insideOut: Coproduct<Product<FirstParameterType,SecondParameterType.LeftType>,Product<FirstParameterType,SecondParameterType.RightType>> {
		return fold { first, second in
			second.bimap(
				{ Product.init(first, $0) },
				{ Product.init(first, $0) })
		}
	}
}
