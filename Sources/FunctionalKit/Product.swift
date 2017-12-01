#if !XCODE_BUILD
	import Operadics
#endif
import Abstract

public protocol ProductType {
	associatedtype FirstType
	associatedtype SecondType

	func fold<T>(_ transform: @escaping (FirstType,SecondType) -> T) -> T
}

// sourcery: functor, mapFirst, mapSecond, mapBoth, simpleValue, secondValue, init2Args
public struct Product<A,B>: ProductType {
	private let _first: A
	private let _second: B

	public init(_ first: A, _ second: B) {
		self._first = first
		self._second = second
	}

	public func fold<T>(_ transform: @escaping (A, B) -> T) -> T {
		return transform(_first,_second)
	}
}

public struct ProductM<A,B>: ProductType, Monoid where A: Monoid, B: Monoid {
	private let _first: A
	private let _second: B

	public init(_ first: A, _ second: B) {
		self._first = first
		self._second = second
	}

	public func fold<T>(_ transform: @escaping (A, B) -> T) -> T {
		return transform(_first,_second)
	}

	public static var empty: ProductM<A, B> {
		return ProductM.init(.empty, .empty)
	}

	public static func <> (lhs: ProductM, rhs: ProductM) -> ProductM {
		return ProductM.init(lhs._first <> rhs._first, rhs._second <> rhs._second)
	}
}

// MARK: - Equatable

extension ProductType where FirstType: Equatable, SecondType: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		return lhs.fold(fidentity) == rhs.fold(fidentity)
	}
}

// MARK: - Projections

extension ProductType {
	public var toProduct: Product<FirstType,SecondType> {
		return fold(Product<FirstType,SecondType>.init)
	}

	public var first: FirstType {
		return fold { first, _ in first }
	}

	public var second: SecondType {
		return fold { _, second in second }
	}

	public var unwrap: (FirstType,SecondType) {
		return fold(fidentity)
	}
}

// MARK: - Evaluation

extension ProductType where FirstType: ExponentialType, FirstType.SourceType == SecondType {
	public var eval: FirstType.TargetType {
		return fold { (exponential, value) -> FirstType.TargetType in
			exponential.call(value)
		}
	}
}

extension ProductType where SecondType: ExponentialType, SecondType.SourceType == FirstType {
	public var eval: SecondType.TargetType {
		return fold { (value, exponential) -> SecondType.TargetType in
			exponential.call(value)
		}
	}
}

// MARK: - Concrete

extension ProductType {
    public typealias Concrete<A,B> = Product<A,B>
}

// MARK: - Functor

extension ProductType {
	public func bimap<T,U>(onFirst: @escaping (FirstType) -> T, onSecond: @escaping (SecondType) -> U) -> Product<T,U> {
		return fold { first, second in Product<T,U>.init(onFirst(first), onSecond(second)) }
	}

	public func mapFirst<T>(_ transform: @escaping (FirstType) -> T) -> Product<T,SecondType> {
		return fold { first, second in Product<T,SecondType>.init(transform(first), second) }
	}

	public func mapSecond<U>(_ transform: @escaping (SecondType) -> U) -> Product<FirstType,U> {
		return fold { first, second in Product<FirstType,U>.init(first, transform(second)) }
	}
}
