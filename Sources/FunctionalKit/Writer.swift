#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

// sourcery: functor
// sourcery: secondaryParameter = "Log"
// sourcery: monad
// sourcery: traversable
// sourcery: testFunctor
// sourcery: testApplicative
// sourcery: testMonad
// sourcery: testConstruct = "init(log: .empty, value: x)"
// sourcery: testSecondaryParameter
public struct Writer<Log,Parameter> where Log: Monoid {
    public let log: Log
    public let value: Parameter

    public init(log: Log, value: Parameter) {
        self.log = log
        self.value = value
    }
}

extension Writer: Equatable where Log: Equatable, Parameter: Equatable {}

extension Writer: ProductType {
    public typealias FirstType = Log
    public typealias SecondType = Parameter

    public func fold<T>(_ transform: (Log, Parameter) -> T) -> T {
        return transform(log,value)
    }

    public static func from(product: Product<Log, Parameter>) -> Writer<Log, Parameter> {
        return Writer.init(log: product.first, value: product.second)
    }
}

extension Writer: TypeConstructor2 {
    public typealias ParameterType = Parameter
    public typealias SecondaryType = Log
}

extension Writer: PureConstructible {
    public static func pure(_ value: Parameter) -> Writer {
        return Writer.init(log: .empty, value: value)
    }
}

public extension Writer {
    typealias Generic<L,A> = Writer<L,A> where L: Monoid
}

public extension Writer {
    func map <A> (_ transform: (ParameterType) -> A) -> Writer<Log,A> {
        return Generic.init(log: log, value: transform(value))
    }

    func mapLog <L> (_ transform: (Log) -> L) -> Writer<L,ParameterType> {
        return Generic.init(log: transform(log), value: value)
    }

    static func lift <A> (_ function: @escaping (ParameterType) -> A) -> (Writer) -> Writer<Log, A> {
        return { $0.map(function) }
    }

    static func zip <L1,A,L2,B> (_ first: Writer<L1,A>, _ second: Writer<L2,B>) -> Writer<Product<L1,L2>,(A,B)> where Log == Product<L1,L2>, ParameterType == (A, B) {
        return Generic.init(log: Product.init(first.log, second.log), value: (first.value, second.value))
    }

    static func zipMerged <A,B> (_ first: Writer<Log,A>, _ second: Writer<Log,B>) -> Writer<Log,(A,B)> where ParameterType == (A, B) {
        return Generic.zip(first, second).mapLog { $0.fold(<>) }
    }

    func apply <A> (_ transform: Writer<Log,(ParameterType) -> A>) -> Writer<Log,A> {
        return Generic.zipMerged(self, transform).map { value, function in function(value) }
    }

    static func <*> <A> (lhs: Writer<Log,(ParameterType) -> A>, rhs: Writer) -> Writer<Log,A> {
        return rhs.apply(lhs)
    }

    static func lift <A,B> (_ function: @escaping (A,B) -> ParameterType) -> (Writer<Log,A>, Writer<Log,B>) -> Writer {
        return { ap1, ap2 in
            Generic.pure(f.curry(function)) <*> ap1 <*> ap2
        }
    }

    static func lift <A,B,C> (_ function: @escaping (A,B,C) -> ParameterType) -> (Writer<Log,A>, Writer<Log,B>, Writer<Log,C>) -> Writer {
        return { ap1, ap2, ap3 in
            Generic.pure(f.curry(function)) <*> ap1 <*> ap2 <*> ap3
        }
    }

    func joined<A>() -> Writer<Log,A> where ParameterType == Writer<Log,A> {
        let sublog = value.log
        return Generic.init(log: log <> sublog, value: value.value)
    }

    func flatMap <A> (_ transform: (ParameterType) -> Writer<Log,A>) -> Writer<Log,A> {
        return map(transform).joined()
    }

//    func traverse <A> (_ transform: (ParameterType) -> Array<A>) -> Array<Writer<Log,A>> {
//        return Array.pure(f.curry(Generic.init)) <*> Array.pure(log) <*> transform(value)
//    }

    func traverse <A> (_ transform: (ParameterType) -> Effect<A>) -> Effect<Writer<Log,A>> {
        return Effect.pure(f.curry(Generic.init)) <*> Effect.pure(log) <*> transform(value)
    }

    func traverse <A> (_ transform: (ParameterType) -> Future<A>) -> Future<Writer<Log,A>> {
        return Future.pure(f.curry(Generic.init)) <*> Future.pure(log) <*> transform(value)
    }

    func traverse <A> (_ transform: (ParameterType) -> Optional<A>) -> Optional<Writer<Log,A>> {
        return Optional.pure(f.curry(Generic.init)) <*> Optional.pure(log) <*> transform(value)
    }

//    func traverse <A,E> (_ transform: (ParameterType) -> Reader<E,A>) -> Reader<E,Writer<Log,A>> {
//        return Reader.pure(f.curry(Generic.init)) <*> Reader.pure(log) <*> transform(value)
//    }

//    func traverse <A,F> (_ transform: (ParameterType) -> Result<F,A>) -> Result<F,Writer<Log,A>> {
//        return Result.pure(f.curry(Generic.init)) <*> Result.pure(log) <*> transform(value)
//    }

    func traverse <A,M> (_ transform: (ParameterType) -> State<M,A>) -> State<M,Writer<Log,A>> {
        return State.pure(f.curry(Generic.init)) <*> State.pure(log) <*> transform(value)
    }

    func traverse <A,L> (_ transform: (ParameterType) -> Writer<L,A>) -> Writer<L,Writer<Log,A>> {
        return Generic.pure(f.curry(Generic.init)) <*> Generic.pure(log) <*> transform(value)
    }

    func tell(_ newLog: Log) -> Writer {
        return Generic.init(log: log <> newLog, value: value)
    }

    func remember(_ oldLog: Log) -> Writer {
        return Generic.init(log: oldLog <> log, value: value)
    }

    func read(_ transform: (ParameterType) -> Log) -> Writer {
        return Generic.init(log: log <> transform(value), value: value)
    }

    func listen() -> Writer<Log,(Log,ParameterType)> {
        return Generic.init(log: log, value: (log,value))
    }

    func tellValue(_ getValueLog: (ParameterType) -> Log) -> Writer {
        return mapLog { $0 <> getValueLog(value) }
    }

    func logValue <A> (_ transform: (Log,ParameterType) -> A) -> Writer<A,ParameterType> {
        return mapLog { log in transform(log,value) }
    }

    func swapped <A> (_ transform: (ParameterType) -> A) -> Writer<A,Log> {
        return Generic.init(log: transform(value), value: log)
    }

    func consumeLog(_ consumer: (Log) -> ()) -> ParameterType {
        consumer(log)
        return value
    }

    func discardLog() -> ParameterType {
        return value
    }
}

public extension Writer where ParameterType: Monoid {
    func swapped() -> Writer<ParameterType,Log> {
        return swapped(f.identity)
    }
}
