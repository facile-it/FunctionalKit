#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

public protocol ProductType {
    associatedtype FirstType
    associatedtype SecondType

    func fold<T>(_ transform: (FirstType,SecondType) -> T) -> T
    static func from(product: Product<FirstType,SecondType>) -> Self
}

// sourcery: testBifunctor
// sourcery: testConstruct = "init(x,y)"
extension Product: ProductType {
    public typealias FirstType = A
    public typealias SecondType = B

    public static func from(product: Product<A, B>) -> Product<A, B> {
        return product
    }
}

extension Product: Error where A: Error, B: Error {}

// MARK: - Equatable

extension ProductType where FirstType: Equatable, SecondType: Equatable {
    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.toProduct() == rhs.toProduct()
    }
}

// MARK: - Projections

public extension ProductType {
    func toProduct() -> Product<FirstType,SecondType> {
        return fold(Product<FirstType,SecondType>.init)
    }

    var first: FirstType {
        return fold { first, _ in first }
    }

    var second: SecondType {
        return fold { _, second in second }
    }

    var unwrap: (FirstType,SecondType) {
        return fold(f.identity)
    }
}

// MARK: - Evaluation

public extension ProductType where FirstType: FunctionType, FirstType.SourceType == SecondType {
    func eval() -> FirstType.TargetType {
        return fold { (function, value) -> FirstType.TargetType in
            function.call(value)
        }
    }
}

public extension ProductType where SecondType: FunctionType, SecondType.SourceType == FirstType {
    func eval() -> SecondType.TargetType {
        return fold { (value, function) -> SecondType.TargetType in
            function.call(value)
        }
    }
}

// MARK: - Functor

public extension ProductType {
    func bimap<T,U>(_ onFirst: (FirstType) -> T, _ onSecond: (SecondType) -> U) -> Product<T,U> {
        return fold { first, second in Product<T,U>.init(onFirst(first), onSecond(second)) }
    }

    func mapFirst<T>(_ transform: (FirstType) -> T) -> Product<T,SecondType> {
        return bimap(transform, f.identity)
    }

    func mapSecond<U>(_ transform: (SecondType) -> U) -> Product<FirstType,U> {
        return bimap(f.identity, transform)
    }
}

// MARK: - Cross Interactions

public extension ProductType where FirstType: CoproductType {
    func insideOut() -> Coproduct<Product<FirstType.LeftType,SecondType>,Product<FirstType.RightType,SecondType>> {
        return fold { first, second in
            first.bimap(
                { Product.init($0, second) },
                { Product.init($0, second) })
        }
    }
}

public extension ProductType where SecondType: CoproductType {
    func insideOut() -> Coproduct<Product<FirstType,SecondType.LeftType>,Product<FirstType,SecondType.RightType>> {
        return fold { first, second in
            second.bimap(
                { Product.init(first, $0) },
                { Product.init(first, $0) })
        }
    }
}

// MARK: - Algebra

/// Default implementations for product types

public extension ProductType where FirstType: Magma, SecondType: Magma {
    static func <> (lhs: Self, rhs: Self) -> Self {
        return Self.from(product: lhs.toProduct() <> rhs.toProduct())
    }
}

public extension ProductType where FirstType: Monoid, SecondType: Monoid {
    static var empty: Self {
        return Self.from(product: .empty)
    }
}
