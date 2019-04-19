#if SWIFT_PACKAGE
import Operadics
#endif
import Abstract

// sourcery: functor
// sourcery: secondaryParameter = "Failure"
// sourcery: monad
// sourcery: traversable
// sourcery: testFunctor
// sourcery: testApplicative
// sourcery: testMonad
// sourcery: testConstruct = "success(x)"
// sourcery: testSecondaryParameter
public enum Result<Failure,Parameter> where Failure: Error {
    case success(Parameter)
    case failure(Failure)
    
    public func run() throws -> Parameter {
        switch self {
        case .success(let value):
            return value
        case .failure(let error):
            throw error
        }
    }
    
    public func fold <A> (onSuccess: (Parameter) -> A, onFailure: (Failure) -> A) -> A {
        switch self {
        case .success(let value):
            return onSuccess(value)
        case .failure(let error):
            return onFailure(error)
        }
    }
}

extension Result: Equatable where Failure: Equatable, Parameter: Equatable {}

extension Result: CoproductType {
    public typealias LeftType = Failure
    public typealias RightType = Parameter
    
    public func fold<T>(onLeft: (Failure) -> T, onRight: (Parameter) -> T) -> T {
        return fold(onSuccess: onRight, onFailure: onLeft)
    }
    
    public static func from(coproduct: Coproduct<Failure, Parameter>) -> Result<Failure, Parameter> {
        switch coproduct {
        case let .left(error):
            return .failure(error)
        case let .right(value):
            return .success(value)
        }
    }
}

extension Result: TypeConstructor2 {
    public typealias ParameterType = Parameter
    public typealias SecondaryType = Failure
}

extension Result: PureConstructible {
    public static func pure(_ value: ParameterType) -> Result {
        return Result.success(value)
    }
}

public extension Result {
    typealias Generic<F,A> = Result<F,A> where F: Error
}

public extension Result {
    func map <A> (_ transform: (ParameterType) -> A) -> Result<Failure,A> {
        switch self {
        case let .success(value):
            return .success(transform(value))
        case let .failure(error):
            return .failure(error)
        }
    }
    
    func mapError <A> (_ transform: (Failure) -> A) -> Result<A,ParameterType> {
        switch self {
        case let .success(value):
            return .success(value)
        case let .failure(error):
            return .failure(transform(error))
        }
        
    }
    
    static func lift <A> (_ function: @escaping (ParameterType) -> A) -> (Result) -> Result<Failure,A> {
        return { $0.map(function) }
    }
    
    static func zip <F1,A,F2,B> (_ first: Result<F1,A>, _ second: Result<F2,B>) -> Result<Inclusive<F1,F2>,(A,B)> where Failure == Inclusive<F1,F2>, ParameterType == (A,B) {
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
    
    static func zipMerged <A,B> (_ first: Result<Failure,A>, _ second: Result<Failure,B>) -> Result<Failure,(A,B)> where Failure: Semigroup {
        switch (first, second) {
        case let (.success(leftValue), .success(rightValue)):
            return .success((leftValue,rightValue))
            
        case let (.failure(leftError), .failure(rightError)):
            return .failure(leftError <> rightError)
            
        case let (.failure(error), _):
            return .failure(error)
            
        case let (_, .failure(error)):
            return .failure(error)
        }
        
        //        return Generic.zip(first, second).mapError { $0.merged() }
    }
    
    func apply <A> (_ transform: Result<Failure,(ParameterType) -> A>) -> Result<Failure,A> {
        switch (self, transform) {
        case let (.success(leftValue), .success(rightValue)):
            return .success(rightValue(leftValue))
            
        case let (.failure(leftError), .failure):
            return .failure(leftError)
            
        case let (.failure(error), _):
            return .failure(error)
            
        case let (_, .failure(error)):
            return .failure(error)
        }
        
        //        return Generic.zip(self, transform)
        //            .map { value, function in function(value) }
        //            .mapError { $0.left }
    }
    
    func applyMerged <A> (_ transform: Result<Failure,(ParameterType) -> A>) -> Result<Failure,A> where Failure: Semigroup {
        return Result<Failure, (Parameter, (Parameter) -> A)>.zipMerged(self, transform)
            .map { value, function in function(value) }
    }
    
    func call <A,B> (_ value: Result<Failure,A>) -> Result<Failure,B> where ParameterType == (A) -> B {
        switch (value, self) {
        case let (.success(leftValue),.success(rightValue)):
            return .success(rightValue(leftValue))
        case let (.failure(leftError), .failure):
            return .failure(leftError)
        case let (.failure(error), _):
            return .failure(error)
        case let (_, .failure(error)):
            return .failure(error)
        }
        //        return Generic.zip(self, value)
        //            .map { function, value in function(value) }
        //            .mapError { $0.left }
    }
    
    func callMerged <A,B> (_ value: Result<Failure,A>) -> Result<Failure,B> where ParameterType == (A) -> B, Failure: Semigroup {
        return Result<Failure, ((A) -> B, A)>.zipMerged(self, value)
            .map { function, value in function(value) }
    }
    
    static func <*> <A> (lhs: Result<Failure,(ParameterType) -> A>, rhs: Result) -> Result<Failure,A> {
        return lhs.call(rhs)
    }
    
    static func <*> <A> (lhs: Result<Failure,(ParameterType) -> A>, rhs: Result) -> Result<Failure,A> where Failure: Semigroup {
        return lhs.callMerged(rhs)
    }
    
    static func lift <A,B> (_ function: @escaping (A, B) -> ParameterType) -> (Result<Failure,A>, Result<Failure,B>) -> Result {
        return { ap1, ap2 in
            Generic.pure(f.curry(function)) <*> ap1 <*> ap2
        }
    }
    
    static func lift <A,B,C> (_ function: @escaping (A, B, C) -> ParameterType) -> (Result<Failure,A>, Result<Failure,B>, Result<Failure,C>) -> Result {
        return { ap1, ap2, ap3 in
            Generic.pure(f.curry(function)) <*> ap1 <*> ap2 <*> ap3
        }
    }
    
    func joined<A>() -> Result<Failure,A> where ParameterType == Result<Failure,A> {
        switch self {
        case let .success(value):
            return value
        case let .failure(error):
            return .failure(error)
        }
    }
    
    func flatMap <A> (_ transform: (ParameterType) -> Result<Failure,A>) -> Result<Failure,A> {
        return map(transform).joined()
    }
    
    func traverse <A> (_ transform: (ParameterType) -> Array<A>) -> Array<Result<Failure,A>> {
        switch self {
        case let .success(value):
            return Array.pure(Generic.success) <*> transform(value)
        case let .failure(error):
            return Array.pure(Generic.failure(error))
        }
    }
    
    func traverse <A> (_ transform: (ParameterType) -> Effect<A>) -> Effect<Result<Failure,A>> {
        switch self {
        case let .success(value):
            return Effect.pure(Generic.success) <*> transform(value)
        case let .failure(error):
            return Effect.pure(Generic.failure(error))
        }
    }
    
    func traverse <A> (_ transform: (ParameterType) -> Future<A>) -> Future<Result<Failure,A>> {
        switch self {
        case let .success(value):
            return Future.pure(Generic.success) <*> transform(value)
        case let .failure(error):
            return Future.pure(Generic.failure(error))
        }
    }
    
    func traverse <A> (_ transform: (ParameterType) -> Optional<A>) -> Optional<Result<Failure,A>> {
        switch self {
        case let .success(value):
            return Optional.pure(Generic.success) <*> transform(value)
        case let .failure(error):
            return Optional.pure(Generic.failure(error))
        }
    }
    
    func traverse <A,E> (_ transform: (ParameterType) -> Reader<E,A>) -> Reader<E,Result<Failure,A>> {
        switch self {
        case let .success(value):
            return Reader.pure(Generic.success) <*> transform(value)
        case let .failure(error):
            return Reader.pure(Generic.failure(error))
        }
    }
    
    func traverse <A,F> (_ transform: (ParameterType) -> Result<F,A>) -> Result<F,Result<Failure,A>> {
        switch self {
        case let .success(value):
            return Generic.pure(Generic.success) <*> transform(value)
        case let .failure(error):
            return Generic.pure(Generic.failure(error))
        }
    }
    
    func traverse <A,M> (_ transform: (ParameterType) -> State<M,A>) -> State<M,Result<Failure,A>> {
        switch self {
        case let .success(value):
            return State.pure(Generic.success) <*> transform(value)
        case let .failure(error):
            return State.pure(Generic.failure(error))
        }
    }
    
    func traverse <A,L> (_ transform: (ParameterType) -> Writer<L,A>) -> Writer<L,Result<Failure,A>> {
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
    
    func getOr(_ fromFailure: (Failure) -> Parameter) -> Parameter {
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
    
    func filter(_ predicate: (Parameter) -> Bool, or onFalse: @autoclosure () -> Failure) -> Result {
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
    func `do`(onSuccess: (Parameter) -> Void, onFailure: (Failure) -> Void) -> Result {
        switch self {
        case let .success(value):
            onSuccess(value)
        case let .failure(error):
            onFailure(error)
        }
        
        return self
    }
    
    func orNil() -> Result<Failure, Optional<ParameterType>> {
        return self
            .map(Optional.init)
            .fallback(to: nil)
    }
    
    func coalesce(_ other: @autoclosure () -> Result) -> Result {
        return self.fold(
            onSuccess: Result.success,
            onFailure: { _ in other() })
    }
    
    func extractT <E, A> () -> Result<Failure, A> where Parameter == Coreader<E, A> {
        return self.map { $0.extract }
    }
    
    func mapExtend <E, P, A> (_ transform: @escaping (E, P) -> A) -> Result<Failure, Coreader<E, A>> where Parameter == Coreader<E, P> {
        return self.map {
            $0.extend(transform)
        }
    }
    
    func mapExtract <E, P, A> (_ transform: @escaping (P) -> A) -> Result<Failure, Coreader<E, A>> where Parameter == Coreader<E, P> {
        return self.mapExtend { _, value in transform(value) }
    }
    
    func flatMapExtend <E, P, A> (_ transform: @escaping (E, P) -> Result<Failure, A>) -> Result<Failure, Coreader<E, A>> where Parameter == Coreader<E, P> {
        return self.flatMap { old in
            return old.extend(transform).extract.map { new in
                old.map { _ in new }
            }
        }
    }
    
    func flatMapExtract <E, P, A> (_ transform: @escaping (P) -> Result<Failure, A>) -> Result<Failure, Coreader<E, A>> where Parameter == Coreader<E, P> {
        return self.flatMapExtend { _, value in transform(value) }
    }
}

extension First: Error where A: Error {}

extension Result: Magma where Failure: Magma, Parameter: Magma {
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

extension Result: Semigroup where Failure: Semigroup, Parameter: Semigroup {}

extension Result: Monoid where Failure: Semigroup, Parameter: Monoid {
    public static var empty: Result<Failure, Parameter> {
        return .success(.empty)
    }
}
