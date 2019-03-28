#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

// sourcery: functor
// sourcery: escapingHOF
// sourcery: monad
// sourcery: testFunctor
// sourcery: test_Applicative /// segfault
// sourcery: testMonad
// sourcery: testConstruct = "init { x }"
// sourcery: testNeedsCommand = "run()"
public struct Effect<Parameter> {
    private let _call: () -> Parameter
    public init (_ call: @escaping () -> Parameter) {
        self._call = call
    }

    public func run() -> Parameter {
        return _call()
    }
}

extension Effect: FunctionType {
    public typealias SourceType = ()
    public typealias TargetType = Parameter

    public func call(_ source: ()) -> Parameter {
        return run()
    }

    public static func from(function: Function<(), Parameter>) -> Effect<Parameter> {
        return Effect { function.call(()) }
    }
}

extension Effect: EquatableInContext where Parameter: Equatable {
    public typealias Context = ()
}

extension Effect: TypeConstructor {
    public typealias ParameterType = Parameter
}

public extension Effect {
    typealias Generic<A> = Effect<A>
}

extension Effect: PureConstructible {
    public static func pure(_ value: Parameter) -> Effect {
        return Effect.init { value }
    }
}

public extension Effect {
    func map <A> (_ transform: @escaping (ParameterType) -> A) -> Effect<A> {
        return Effect<A>.init { transform(self.run()) }
    }

    static func lift <A> (_ function: @escaping (ParameterType) -> A) -> (Effect) -> Effect<A> {
        return { $0.map(function) }
    }
}

public extension Effect {
    static func zip <A1,A2> (_ first: Effect<A1>, _ second: Effect<A2>) -> Effect<(A1,A2)> where ParameterType == (A1,A2) {
        return Effect<(A1,A2)>.init { (first.run(),second.run()) }
    }
}

public extension Effect {
    func apply <A> (_ transform: Effect<(ParameterType) -> A>) -> Effect<A> {
        return Generic.zip(self, transform).map { value, function in function(value) }
    }

    func call <A,B> (_ value: Effect<A>) -> Effect<B> where ParameterType == (A) -> B {
        return Generic.zip(self, value)
            .map { function, value in function(value) }
    }

    static func <*> <A> (lhs: Effect<(ParameterType) -> A>, rhs: Effect) -> Effect<A> {
        return rhs.apply(lhs)
    }

    static func lift <A,T1> (_ function: @escaping (ParameterType, T1) -> A) -> (Effect, Effect<T1>) -> Effect<A> {
        return { (t1s, t2s) in
            Generic.pure(f.curry(function)) <*> t1s <*> t2s
        }
    }

    static func lift <A,T1,T2> (_ function: @escaping (ParameterType, T1, T2) -> A) -> (Effect, Effect<T1>, Effect<T2>) -> Effect<A> {
        return { (t1s, t2s, t3s) in
            Generic.pure(f.curry(function)) <*> t1s <*> t2s <*> t3s
        }
    }

    func joined<A>() -> Effect<A> where ParameterType == Effect<A>  {
        return Effect<A>.init { self.run().run() }
    }

    func flatMap <A> (_ transform: @escaping (ParameterType) -> Effect<A>) -> Effect<A> {
        return map(transform).joined()
    }
}

public extension f {
    static func lazily <A> (_ execute: @escaping @autoclosure () -> A) -> Effect<A> {
        return Effect(execute)
    }
}

// MARK: - Algebra

extension Effect: Magma where Parameter: Magma {
    public static func <> (lhs: Effect, rhs: Effect) -> Effect {
        return Effect.init { lhs.run() <> rhs.run() }
    }
}

/// This is a strong assumption: we need associativity for side effects,
/// otherwise there's no possibility of reasoning about them locally.
extension Effect: Semigroup where Parameter: Semigroup {}

extension Effect: Monoid where Parameter: Monoid {
    public static var empty: Effect {
        return Effect.init { .empty }
    }
}

/// We cannot empower Effect with algebraic definitions any further:
/// being side-effects those that are performed, guaranteeing commutativity
/// or (even worse) idempotence would be too strong of an assumption.
