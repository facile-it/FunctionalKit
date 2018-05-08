//#if SWIFT_PACKAGE
//	import Operadics
//#endif
//import Abstract
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
//	public typealias ErrorType = E
//	public typealias ParameterType = T
//
//	case success(T)
//	case failure(E)
//
//	public static func from(concrete: Result<E, T>) -> Result<E, T> {
//		return concrete
//	}
//	
//	public func run() throws -> T {
//		switch self {
//		case .success(let value):
//			return value
//		case .failure(let error):
//			throw error
//		}
//	}
//
//	public func fold<A>(onSuccess: (T) -> A, onFailure: (E) -> A) -> A {
//		switch self {
//		case .success(let value):
//			return onSuccess(value)
//		case .failure(let error):
//			return onFailure(error)
//		}
//	}
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
//	func map <A> (_ transform: (ParameterType) -> A) -> Result<ErrorType,A> {
//		return withoutActuallyEscaping(transform) { transform in
//			fold(
//				onSuccess: transform >>> Result.success,
//				onFailure: Result.failure)
//		}
//	}
//
//	func mapError <A> (_ transform: (ErrorType) -> A) -> Result<A,ParameterType> {
//		return withoutActuallyEscaping(transform) { transform in
//			fold(
//				onSuccess: Result.success,
//				onFailure: transform >>> Result.failure)
//		}
//	}
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
//	static func zip<R1,R2>(_ first: R1, _ second: R2) -> Zipped<R1,R2> where R1: ResultType, R2: ResultType, ParameterType == (R1.ParameterType,R2.ParameterType), ErrorType == Inclusive<R1.ErrorType,R2.ErrorType> {
//		return first.fold(
//			onSuccess: { firstValue in
//				second.fold(
//					onSuccess: { secondValue in
//						Zipped<R1,R2>.success((firstValue,secondValue))
//				},
//					onFailure: { secondError in
//						Zipped<R1,R2>.failure(Inclusive.right(secondError))
//				})
//		},
//			onFailure: { firstError in
//				second.fold(
//					onSuccess: { _ in
//						Zipped<R1,R2>.failure(Inclusive.left(firstError))
//				},
//					onFailure: { secondError in
//						Zipped<R1,R2>.failure(Inclusive.center(firstError, secondError))
//				})
//		})
//	}
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
