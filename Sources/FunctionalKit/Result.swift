#if SWIFT_PACKAGE
import Operadics
#endif
import Abstract

// sourcery: functor
// sourcery: secondaryParameter = "Failure"
// sourcery: secondaryParameterOnRight = true
// sourcery: monad
// sourcery: traversable
// sourcery: testFunctor
// sourcery: testApplicative
// sourcery: testMonad
// sourcery: testConstruct = "success(x)"
// sourcery: testSecondaryParameter
extension Result {
    
    public func fold <A> (onSuccess: (Success) -> A, onFailure: (Failure) -> A) -> A {
        switch self {
        case .success(let value):
            return onSuccess(value)
        case .failure(let error):
            return onFailure(error)
        }
    }
}

extension Result: CoproductType {
    public typealias RightType = Failure
    public typealias LeftType = Success
    
    public func fold<T>(onLeft: (Success) -> T, onRight: (Failure) -> T) -> T {
        return fold(onSuccess: onLeft, onFailure: onRight)
    }
    
    public static func from(coproduct: Coproduct<Success, Failure>) -> Result<Success, Failure> {
        switch coproduct {
        case let .right(error):
            return .failure(error)
        case let .left(value):
            return .success(value)
        }
    }
}

extension Result: TypeConstructor2 {
    public typealias ParameterType = Success
    public typealias SecondaryType = Failure
}

extension Result: PureConstructible {
    public static func pure(_ value: ParameterType) -> Result {
        return Result.success(value)
    }
}

public extension Result {
    typealias Generic<A,F> = Result<A,F> where F: Error
}

public extension Result {
    
    static func lift <A> (_ function: @escaping (ParameterType) -> A) -> (Result) -> Result<A,Failure> {
        return { $0.map(function) }
    }
    
    static func zip <A,F1,B,F2> (_ first: Result<A, F1>, _ second: Result<B, F2>) -> Result<(A,B),InclusiveError<F1,F2>> where Failure == InclusiveError<F1,F2>, ParameterType == (A,B) {
        switch (first, second) {
        case let (.success(leftValue), .success(rightValue)):
            return .success((leftValue,rightValue))
            
        case let (.failure(leftError), .failure(rightError)):
            return .failure(.center(leftError,rightError))
            
        case let (.failure(error), _):
            return .failure(.left(error))
            
        case let (_, .failure(error)):
            return .failure(.right(error))
        }
    }
    
    static func zipMerged <A,B> (_ first: Result<A, Failure>, _ second: Result<B, Failure>) -> Result<(A,B), Failure> where Failure: Semigroup {
        return Generic.zip(first, second).mapError { $0.toInclusive().merged() }
    }
    
    func apply <A> (_ transform: Result<(ParameterType) -> A, Failure>) -> Result<A, Failure> {
        return Generic.zip(self, transform)
            .map { value, function in function(value) }
            .mapError { $0.toInclusive().left }
    }
    
    func applyMerged <A> (_ transform: Result<(ParameterType) -> A, Failure>) -> Result<A, Failure> where Failure: Semigroup {
        return Result<(Success, (Success) -> A), Failure>.zipMerged(self, transform)
            .map { value, function in function(value) }
    }
    
    func call <A,B> (_ value: Result<A, Failure>) -> Result<B, Failure> where ParameterType == (A) -> B {
        return Generic.zip(self, value)
            .map { function, value in function(value) }
            .mapError { $0.toInclusive().left }
    }
    
    func callMerged <A,B> (_ value: Result<A, Failure>) -> Result<B, Failure> where ParameterType == (A) -> B, Failure: Semigroup {
        return Result<((A) -> B, A), Failure>.zipMerged(self, value)
            .map { function, value in function(value) }
    }
    
    static func <*> <A> (lhs: Result<(ParameterType) -> A, Failure>, rhs: Result) -> Result<A, Failure> {
        return lhs.call(rhs)
    }
    
    static func <*> <A> (lhs: Result<(ParameterType) -> A,Failure>, rhs: Result) -> Result<A, Failure> where Failure: Semigroup {
        return lhs.callMerged(rhs)
    }
    
    static func lift <A,B> (_ function: @escaping (A, B) -> ParameterType) -> (Result<A,Failure>, Result<B,Failure>) -> Result {
        return { ap1, ap2 in
            Generic.pure(f.curry(function)) <*> ap1 <*> ap2
        }
    }
    
    static func lift <A,B,C> (_ function: @escaping (A, B, C) -> ParameterType) -> (Result<A, Failure>, Result<B, Failure>, Result<C, Failure>) -> Result {
        return { ap1, ap2, ap3 in
            Generic.pure(f.curry(function)) <*> ap1 <*> ap2 <*> ap3
        }
    }
    
    func joined<A>() -> Result<A, Failure> where ParameterType == Result<A, Failure> {
        switch self {
        case let .success(value):
            return value
        case let .failure(error):
            return .failure(error)
        }
    }
    
    func traverse <A> (_ transform: (ParameterType) -> Array<A>) -> Array<Result<A, Failure>> {
        switch self {
        case let .success(value):
            return Array.pure(Generic.success) <*> transform(value)
        case let .failure(error):
            return Array.pure(Generic.failure(error))
        }
    }
    
    func traverse <A> (_ transform: (ParameterType) -> Effect<A>) -> Effect<Result<A, Failure>> {
        switch self {
        case let .success(value):
            return Effect.pure(Generic.success) <*> transform(value)
        case let .failure(error):
            return Effect.pure(Generic.failure(error))
        }
    }
    
    func traverse <A> (_ transform: (ParameterType) -> Future<A>) -> Future<Result<A, Failure>> {
        switch self {
        case let .success(value):
            return Future.pure(Generic.success) <*> transform(value)
        case let .failure(error):
            return Future.pure(Generic.failure(error))
        }
    }
    
    func traverse <A> (_ transform: (ParameterType) -> Optional<A>) -> Optional<Result<A, Failure>> {
        switch self {
        case let .success(value):
            return Optional.pure(Generic.success) <*> transform(value)
        case let .failure(error):
            return Optional.pure(Generic.failure(error))
        }
    }
    
    func traverse <A,E> (_ transform: (ParameterType) -> Reader<E,A>) -> Reader<E,Result<A, Failure>> {
        switch self {
        case let .success(value):
            return Reader.pure(Generic.success) <*> transform(value)
        case let .failure(error):
            return Reader.pure(Generic.failure(error))
        }
    }
    
    func traverse <A,F> (_ transform: (ParameterType) -> Result<A, F>) -> Result<Result<A, Failure>, F> {
        switch self {
        case let .success(value):
            return Generic.pure(Generic.success) <*> transform(value)
        case let .failure(error):
            return Generic.pure(Generic.failure(error))
        }
    }
    
    func traverse <A,M> (_ transform: (ParameterType) -> State<M,A>) -> State<M,Result<A, Failure>> {
        switch self {
        case let .success(value):
            return State.pure(Generic.success) <*> transform(value)
        case let .failure(error):
            return State.pure(Generic.failure(error))
        }
    }
    
    func traverse <A,L> (_ transform: (ParameterType) -> Writer<L,A>) -> Writer<L,Result<A, Failure>> {
        switch self {
        case let .success(value):
            return Writer.pure(Generic.success) <*> transform(value)
        case let .failure(error):
            return Writer.pure(Generic.failure(error))
        }
    }
    
    func toOptionalError() -> Failure? {
        switch self {
        case let .failure(error):
            return .some(error)
        case .success:
            return .none
        }
    }
    
    func toOptionalValue() -> ParameterType? {
        switch self {
        case let .success(value):
            return .some(value)
        case .failure:
            return .none
        }
    }
    
    func getOr(_ fromFailure: (Failure) -> Success) -> Success {
        return fold(
            onSuccess: f.identity,
            onFailure: fromFailure)
    }
    
    func fallback(to defaultValue: @autoclosure () -> ParameterType) -> Result {
        switch self {
        case let .success(value):
            return .success(value)
        case .failure:
            return .success(defaultValue())
        }
    }
    
    func filter(_ predicate: (Success) -> Bool, or onFalse: @autoclosure () -> Failure) -> Result {
        return flatMap {
            if predicate($0) {
                return .success($0)
            } else {
                return .failure(onFalse())
            }
        }
    }
    
    static func fromThrowing(getError: @escaping (Error) -> Failure) -> (() throws -> ParameterType) -> Result {
        return { throwing in
            do {
                return try .success(throwing())
            }
            catch let error {
                return .failure(getError(error))
            }
        }
    }
    
    @discardableResult
    func `do`(onSuccess: (Success) -> Void, onFailure: (Failure) -> Void) -> Result {
        switch self {
        case let .success(value):
            onSuccess(value)
        case let .failure(error):
            onFailure(error)
        }
        
        return self
    }
    
    func orNil() -> Result<Optional<ParameterType>, Failure> {
        return self
            .map(Optional.init)
            .fallback(to: nil)
    }
    
    func coalesce(_ other: @autoclosure () -> Result) -> Result {
        return self.fold(
            onSuccess: Result.success,
            onFailure: { _ in other() })
    }
    
    func extractT <E, A> () -> Result<A, Failure> where Success == Coreader<E, A> {
        return self.map { $0.extract }
    }
    
    func mapExtend <E, P, A> (_ transform: @escaping (E, P) -> A) -> Result<Coreader<E, A>, Failure> where Success == Coreader<E, P> {
        return self.map {
            $0.extend(transform)
        }
    }
    
    func mapExtract <E, P, A> (_ transform: @escaping (P) -> A) -> Result<Coreader<E, A>, Failure> where Success == Coreader<E, P> {
        return self.mapExtend { _, value in transform(value) }
    }
    
    func flatMapExtend <E, P, A> (_ transform: @escaping (E, P) -> Result<A, Failure>) -> Result<Coreader<E, A>, Failure> where Success == Coreader<E, P> {
        return self.flatMap { old in
            return old.extend(transform).extract.map { new in
                old.map { _ in new }
            }
        }
    }
    
    func flatMapExtract <E, P, A> (_ transform: @escaping (P) -> Result<A, Failure>) -> Result<Coreader<E, A>, Failure> where Success == Coreader<E, P> {
        return self.flatMapExtend { _, value in transform(value) }
    }
}

extension First: Error where A: Error {}

extension Result: Magma where Failure: Magma, Success: Magma {
    public static func <> (lhs: Result, rhs: Result) -> Result {
        switch (lhs, rhs) {
        case (.success(let lhsValue), .success(let rhsValue)):
            return .success(lhsValue <> rhsValue)
        case (.failure(let lhsValue), .failure(let rhsValue)):
            return .failure(lhsValue <> rhsValue)
        case (.success, .failure):
            return rhs
        case (.failure, .success):
            return lhs
        }
    }
}

extension Result: Semigroup where Failure: Semigroup, Success: Semigroup {}

extension Result: Monoid where Failure: Semigroup, Success: Monoid {
    public static var empty: Result<Success, Failure> {
        return .success(.empty)
    }
}
