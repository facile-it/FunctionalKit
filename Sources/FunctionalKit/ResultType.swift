#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

// sourcery: functor
// sourcery: secondaryParameter = "Failure"
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

    static func zipMerged <A,B> (_ first: Result<Failure,A>, _ second: Result<Failure,B>) -> Result<Failure,(A,B)> where Failure: Semigroup, ParameterType == (A,B) {
        return Generic.zip(first, second).mapError { $0.merged() }
    }

	func apply <A> (_ transform: Result<Failure,(ParameterType) -> A>) -> Result<Failure,A> {
		return Generic.zip(self, transform)
			.map { value, function in function(value) }
			.mapError { $0.left }
	}

	func applyMerged <A> (_ transform: Result<Failure,(ParameterType) -> A>) -> Result<Failure,A> where Failure: Semigroup {
		return Generic.zipMerged(self, transform)
			.map { value, function in function(value) }
	}

	static func <*> <A> (lhs: Result<Failure,(ParameterType) -> A>, rhs: Result) -> Result<Failure,A> {
		return rhs.apply(lhs)
	}

	static func <*> <A> (lhs: Result<Failure,(ParameterType) -> A>, rhs: Result) -> Result<Failure,A> where Failure: Semigroup {
		return rhs.applyMerged(lhs)
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

	func fallback(to defaultValue: @autoclosure () -> ParameterType) -> Result {
		switch self {
		case let .success(value):
			return .success(value)
		case .failure:
			return .success(defaultValue())
		}
	}

	static func getFromThrowing(getError: @escaping (Error) -> Failure) -> (() throws -> ParameterType) -> Result {
		return { throwing in
			do {
				return try .success(throwing())
			}
			catch let error {
				return .failure(getError(error))
			}
		}
	}
}



//
//// MARK: - Definiton
//
//// sourcery: split6
//// sourcery: functor
//// sourcery: traversable
//// sourcery: monad
//// sourcery: concrete = "Result"
//// sourcery: secondaryParameter = "ErrorType"
//public protocol ResultType: PureConstructible, CoproductType {
//	associatedtype ErrorType: Error
//
//	static func from(concrete: Concrete<ErrorType,ParameterType>) -> Self
//	func run() throws -> ParameterType
//	func fold <A> (onSuccess: (ParameterType) -> A, onFailure: (ErrorType) -> A) -> A
//}
//
//public extension ResultType {
//	func fold<U>(onLeft: (ErrorType) -> U, onRight: (ParameterType) -> U) -> U {
//		return fold(onSuccess: onRight, onFailure: onLeft)
//	}
//}
//
//// MARK: - Data
//
//// sourcery: testFunctor
//// sourcery: testApplicative
//// sourcery: testMonad
//// sourcery: testConstruct = "success(x)"
//// sourcery: testSecondaryParameter
//public enum Result<E,T>: ResultType where E: Error {
//    public typealias ErrorType = E
//    public typealias ParameterType = T
//
//    case success(T)
//    case failure(E)
//
//    public static func from(concrete: Result<E, T>) -> Result<E, T> {
//        return concrete
//    }
//    
//    public func run() throws -> T {
//        switch self {
//        case .success(let value):
//            return value
//        case .failure(let error):
//            throw error
//        }
//    }
//
//    public func fold<A>(onSuccess: (T) -> A, onFailure: (E) -> A) -> A {
//        switch self {
//        case .success(let value):
//            return onSuccess(value)
//        case .failure(let error):
//            return onFailure(error)
//        }
//    }
//}
//
//// MARK: - Concrete
//
//public extension ResultType {
//	typealias Concrete<E,T> = Result<E,T> where E: Error
//}
//
//// MARK: - Equatable
//
//extension Result: Equatable where E: Equatable, T: Equatable {}
//
//// MARK: - Functor
//
//public extension ResultType {
//    func map <A> (_ transform: (ParameterType) -> A) -> Result<ErrorType,A> {
//        return withoutActuallyEscaping(transform) { transform in
//            fold(
//                onSuccess: transform >>> Result.success,
//                onFailure: Result.failure)
//        }
//    }
//
//    func mapError <A> (_ transform: (ErrorType) -> A) -> Result<A,ParameterType> {
//        return withoutActuallyEscaping(transform) { transform in
//            fold(
//                onSuccess: Result.success,
//                onFailure: transform >>> Result.failure)
//        }
//    }
//
//    static func lift<A>(_ function: @escaping (ParameterType) -> A) -> (Self) -> Result<ErrorType,A> {
//        return { $0.map(function) }
//    }
//    
//    static func lift<A,Applicative2>(_ function: @escaping (ParameterType, Applicative2.ParameterType) -> A) -> (Self, Applicative2) -> Result<ErrorType, A> where Applicative2: ResultType, Applicative2.ErrorType == ErrorType {
//        return { ap1, ap2 in
//            Concrete.pure(f.curry(function)) <*> ap1 <*> ap2
//        }
//    }
//
//    static func lift<A,Applicative2,Applicative3>(_ function: @escaping (ParameterType, Applicative2.ParameterType, Applicative3.ParameterType) -> A) -> (Self, Applicative2, Applicative3) -> Result<ErrorType, A> where Applicative2: ResultType, Applicative3: ResultType, Applicative2.ErrorType == ErrorType, Applicative3.ErrorType == ErrorType {
//        return { ap1, ap2, ap3 in
//            Concrete.pure(f.curry(function)) <*> ap1 <*> ap2 <*> ap3
//        }
//    }
//}
//
//// MARK: - Cartesian
//
//public extension ResultType {
//	typealias Zipped<R1,R2> = Result<Inclusive<R1.ErrorType,R2.ErrorType>,(R1.ParameterType,R2.ParameterType)> where R1: ResultType, R2: ResultType
//
//    static func zip<R1,R2>(_ first: R1, _ second: R2) -> Zipped<R1,R2> where R1: ResultType, R2: ResultType, ParameterType == (R1.ParameterType,R2.ParameterType), ErrorType == Inclusive<R1.ErrorType,R2.ErrorType> {
//        return first.fold(
//            onSuccess: { firstValue in
//                second.fold(
//                    onSuccess: { secondValue in
//                        Zipped<R1,R2>.success((firstValue,secondValue))
//                },
//                    onFailure: { secondError in
//                        Zipped<R1,R2>.failure(Inclusive.right(secondError))
//                })
//        },
//            onFailure: { firstError in
//                second.fold(
//                    onSuccess: { _ in
//                        Zipped<R1,R2>.failure(Inclusive.left(firstError))
//                },
//                    onFailure: { secondError in
//                        Zipped<R1,R2>.failure(Inclusive.center(firstError, secondError))
//                })
//        })
//    }
//}
//
//// MARK: - Applicative
//
//public extension ResultType {
//	static func pure(_ value: ParameterType) -> Result<ErrorType,ParameterType> {
//		return Result<ErrorType,ParameterType>.success(value)
//	}
//
//	func apply<R,T>(_ transform: R) -> Result<ErrorType,T> where R: ResultType, R.ErrorType == ErrorType, R.ParameterType == (ParameterType) -> T {
//		return Result.zip(self, transform)
//			.map { value, function in function(value) }
//			.mapError { $0.left }
//	}
//
//	static func <*> <R,T> (lhs: R, rhs: Self) -> Result<ErrorType,T> where R: ResultType, R.ErrorType == ErrorType, R.ParameterType == (ParameterType) -> T {
//		return Result.zip(lhs, rhs)
//			.map { function, value in function(value) }
//			.mapError { $0.left }
//	}
//
//}
//
//public extension ResultType where ErrorType: Semigroup {
//	func applyMerge<R,T>(_ transform: R) -> Result<ErrorType,T> where R: ResultType, R.ErrorType == ErrorType, R.ParameterType == (ParameterType) -> T {
//		return Result.zip(self, transform)
//			.map { value, function in function(value) }
//			.mapError { $0.merged() }
//	}
//
//	static func <*> <R,T> (lhs: R, rhs: Self) -> Result<ErrorType,T> where R: ResultType, R.ErrorType == ErrorType, R.ParameterType == (ParameterType) -> T {
//		return Result.zip(lhs, rhs)
//			.map { function, value in function(value) }
//			.mapError { $0.merged() }
//	}
//}
//
//// MARK: - Traversable
//
//public extension ResultType {
//	typealias Traversed<Applicative> = Result<ErrorType,Applicative.ParameterType> where Applicative: TypeConstructor
//
//	func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> [Traversed<Applicative>] where Applicative: ArrayType {
//		typealias Returned = [Traversed<Applicative>]
//
//		return fold(
//			onSuccess: { (value) -> Returned in
//				Applicative.Concrete.pure(Traversed<Applicative>.success) <*> transform(value)
//		},
//			onFailure: { (error) -> Returned in
//				Returned.pure(Traversed<Applicative>.failure(error))
//		})
//	}
//
//	func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> Future<Traversed<Applicative>> where Applicative: FutureType {
//		typealias Returned = Future<Traversed<Applicative>>
//
//		return fold(
//			onSuccess: { (value) -> Returned in
//				Applicative.Concrete.pure(Traversed<Applicative>.success) <*> transform(value)
//		},
//			onFailure: { (error) -> Returned in
//				Returned.pure(Traversed<Applicative>.failure(error))
//		})
//	}
//
//	func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> Effect<Traversed<Applicative>> where Applicative: EffectType {
//		typealias Returned = Effect<Traversed<Applicative>>
//
//		return fold(
//			onSuccess: { (value) -> Returned in
//				Applicative.Concrete.pure(Traversed<Applicative>.success) <*> transform(value)
//		},
//			onFailure: { (error) -> Returned in
//				Returned.pure(Traversed<Applicative>.failure(error))
//		})
//	}
//
//	func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> Optional<Traversed<Applicative>> where Applicative: OptionalType {
//		typealias Returned = Optional<Traversed<Applicative>>
//
//		return fold(
//			onSuccess: { (value) -> Returned in
//				Applicative.Concrete.pure(Traversed<Applicative>.success) <*> transform(value)
//		},
//			onFailure: { (error) -> Returned in
//				Returned.pure(Traversed<Applicative>.failure(error))
//		})
//	}
//
//	func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> Reader<Applicative.EnvironmentType,Traversed<Applicative>> where Applicative: ReaderType {
//		typealias Returned = Reader<Applicative.EnvironmentType,Traversed<Applicative>>
//
//		return fold(
//			onSuccess: { (value) -> Returned in
//				Applicative.Concrete.pure(Traversed<Applicative>.success) <*> transform(value)
//		},
//			onFailure: { (error) -> Returned in
//				Returned.pure(Traversed<Applicative>.failure(error))
//		})
//	}
//
//	func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> Result<Applicative.ErrorType,Traversed<Applicative>> where Applicative: ResultType {
//		typealias Returned = Result<Applicative.ErrorType,Traversed<Applicative>>
//
//		return fold(
//			onSuccess: { (value) -> Returned in
//				Applicative.Concrete.pure(Traversed<Applicative>.success) <*> transform(value)
//		},
//			onFailure: { (error) -> Returned in
//				Returned.pure(Traversed<Applicative>.failure(error))
//		})
//	}
//
//    func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> State<Applicative.StateParameterType,Traversed<Applicative>> where Applicative: StateType {
//        typealias Returned = State<Applicative.StateParameterType,Traversed<Applicative>>
//        
//        return fold(
//            onSuccess: { (value) -> Returned in
//                Applicative.Concrete.pure(Traversed<Applicative>.success) <*> transform(value)
//        },
//            onFailure: { (error) -> Returned in
//                Returned.pure(Traversed<Applicative>.failure(error))
//        })
//    }
//
//	func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> Writer<Applicative.LogType,Traversed<Applicative>> where Applicative: WriterType {
//		typealias Returned = Writer<Applicative.LogType,Traversed<Applicative>>
//
//		return fold(
//			onSuccess: { (value) -> Returned in
//				Applicative.Concrete.pure(Traversed<Applicative>.success) <*> transform(value)
//		},
//			onFailure: { (error) -> Returned in
//				Returned.pure(Traversed<Applicative>.failure(error))
//		})
//	}
//}
//
//// MARK: - Monad
//
//public extension ResultType where ParameterType: ResultType, ParameterType.ErrorType == ErrorType {
//	func joined() -> Result<ErrorType,ParameterType.ParameterType> {
//		return fold(
//			onSuccess: { subresult in
//				subresult.fold(
//					onSuccess: { value in Result.success(value) },
//					onFailure: { error in Result.failure(error) })
//		},
//			onFailure: { error in
//				Result.failure(error)
//		})
//	}
//}
//
//public extension ResultType {
//	func flatMap<R>(_ transform: (ParameterType) -> R) -> Result<ErrorType,R.ParameterType> where R: ResultType, R.ErrorType == ErrorType {
//		return map(transform).joined()
//	}
//}
//
//// MARK: - Utility
//
//public extension ResultType {
//	func toOptionalError() -> ErrorType? {
//		return fold(
//			onSuccess: f.pure(nil),
//			onFailure: f.identity)
//	}
//
//	func toOptionalValue() -> ParameterType? {
//		return fold(
//			onSuccess: f.identity,
//			onFailure: f.pure(nil))
//	}
//
//	func fallback(to defaultValue: @autoclosure () -> ParameterType) -> Result<ErrorType,ParameterType> {
//		return fold(
//			onSuccess: Result.success,
//			onFailure: { _ in Result.success(defaultValue()) })
//	}
//
//	static func getFromThrowing(getError: @escaping (Error) -> ErrorType) -> (() throws -> ParameterType) -> Result<ErrorType,ParameterType> {
//		return { throwing in
//			do {
//				return try .success(throwing())
//			}
//			catch let error {
//				return .failure(getError(error))
//			}
//		}
//	}
//}
