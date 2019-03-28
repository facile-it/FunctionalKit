#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

public struct Accessor<Parameter> {
    public let get: Effect<Parameter>
    public let set: Coeffect<Parameter>

    public init(get: Effect<Parameter>, set: Coeffect<Parameter>) {
        self.get = get
        self.set = set
    }
}

extension Accessor: TypeConstructor {
    public typealias ParameterType = Parameter
}

extension Accessor: ProductType {
    public typealias FirstType = Effect<Parameter>
    public typealias SecondType = Coeffect<Parameter>

    public func fold<T>(_ transform: (Effect<Parameter>, Coeffect<Parameter>) -> T) -> T {
        return transform(get,set)
    }

    public static func from(product: Product<Effect<Parameter>, Coeffect<Parameter>>) -> Accessor<Parameter> {
        return Accessor.init(get: product.first, set: product.second)
    }
}

extension Accessor: FunctionType {
    public typealias SourceType = Parameter?
    public typealias TargetType = Parameter

    public func call(_ source: Parameter?) -> Parameter {
        if let value = source {
            set.run(value)
        }
        return get.run()
    }

    public static func from(function: Function<Parameter?, Parameter>) -> Accessor<Parameter> {
        return Accessor.init(
            get: Effect.init { function.call(nil) },
            set: Coeffect.init(function.call >>> f.ignore))
    }
}

public extension Accessor {
    func dimap <A> (_ from: @escaping (A) -> Parameter, _ to: @escaping (Parameter) -> A) -> Accessor<A> {
        return Accessor<A>.init(
            get: self.get.map(to),
            set: self.set.contramap(from))
    }

    static func zip <A,B> (_ first: Accessor<A>, _ second: Accessor<B>) -> Accessor<(A,B)> where Parameter == (A,B) {
        return Accessor<(A,B)>.init(
            get: Effect.zip(first.get, second.get),
            set: Coeffect.zip(first.set, second.set))
    }
}

// MARK: - Algebra

/// Will use default implementations for product type

extension Accessor: Magma where Parameter: Magma {}

/// This is a strong assumption: we need associativity for side effects,
/// otherwise there's no possibility of reasoning about them locally.
extension Accessor: Semigroup where Parameter: Semigroup {}

extension Accessor: Monoid where Parameter: Monoid {}

/// We cannot empower Accessor with algebraic definitions any further:
/// being side-effects those that are performed, guaranteeing commutativity
/// or (even worse) idempotence would be too strong of an assumption.
