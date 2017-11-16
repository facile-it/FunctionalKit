public protocol ProductType {
	associatedtype FirstType
	associatedtype SecondType

	func fold<T>(_ transform: @escaping (FirstType,SecondType) -> T) -> T
}

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

extension Product where A: Equatable, B: Equatable {
	public static func == (lhs: Product, rhs: Product) -> Bool {
		return lhs.fold(identity) == rhs.fold(identity)
	}
}

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
		return fold(identity)
	}

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
