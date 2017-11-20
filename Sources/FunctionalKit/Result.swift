import Abstract

public protocol ResultType: TypeConstructor, Reducible, CoproductType {
	associatedtype ErrorType: Error

	init(success: ParameterType)
	init(failure: ErrorType)

	func run() throws -> ParameterType
	func fold <A> (onSuccess: @escaping (ParameterType) -> A, onFailure: @escaping (ErrorType) -> A) -> A
}

extension ResultType {
	public func fold<U>(onLeft: @escaping (ErrorType) -> U, onRight: @escaping (ParameterType) -> U) -> U {
		return fold(onSuccess: onRight, onFailure: onLeft)
	}
}

extension ResultType where LeftType == ErrorType, RightType == ParameterType {
	public func reduce<Reduced>(_ initial: Reduced, _ nextPartial: (Reduced, Coproduct<ErrorType, ParameterType>) throws -> Reduced) rethrows -> Reduced {
		return try nextPartial(initial,toCoproduct)
	}
}

public enum Result<E,T>: ResultType where E: Error {
	public typealias ErrorType = E
	public typealias ParameterType = T

	case success(T)
	case failure(E)

	public init(success: ParameterType) {
		self = .success(success)
	}

	public init(failure: ErrorType) {
		self = .failure(failure)
	}

	public func run() throws -> T {
		switch self {
		case .success(let value):
			return value
		case .failure(let error):
			throw error
		}
	}

	public func fold<A>(onSuccess: @escaping (T) -> A, onFailure: @escaping (E) -> A) -> A {
		switch self {
		case .success(let value):
			return onSuccess(value)
		case .failure(let error):
			return onFailure(error)
		}
	}
}

// MARK: - Equatable

extension ResultType where ErrorType: Equatable, ParameterType: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		return lhs.fold(
			onSuccess: { value in
				rhs.fold(
					onSuccess: { value == $0 },
					onFailure: { _ in false })
		},
			onFailure: { error in
				rhs.fold(
					onSuccess: { _ in false },
					onFailure: { error == $0 })
		})
	}
}

// MARK: - Functor

extension ResultType {
	public func map <A> (_ transform: @escaping (ParameterType) -> A) -> Result<ErrorType,A> {
		return fold(
			onSuccess: transform..Result.success,
			onFailure: Result.failure)
	}

	public func mapError <A> (_ transform: @escaping (ErrorType) -> A) -> Result<A,ParameterType> {
		return fold(
			onSuccess: Result.success,
			onFailure: transform..Result.failure)
	}
}

// MARK: - Cartesian

extension ResultType {
	public typealias Zipped<R1,R2> = Result<InclusiveError<R1.ErrorType,R2.ErrorType>,(R1.ParameterType,R2.ParameterType)> where R1: ResultType, R2: ResultType

	public static func zip<R1,R2>(_ first: R1, _ second: R2) -> Zipped<R1,R2> where R1: ResultType, R2: ResultType, ParameterType == (R1.ParameterType,R2.ParameterType), ErrorType == InclusiveError<R1.ErrorType,R2.ErrorType> {
		return first.fold(
			onSuccess: { firstValue in
				second.fold(
					onSuccess: { secondValue in
						Zipped<R1,R2>.success((firstValue,secondValue))
				},
					onFailure: { secondError in
						Zipped<R1,R2>.failure(InclusiveError.right(secondError))
				})
		},
			onFailure: { firstError in
				second.fold(
					onSuccess: { _ in
						Zipped<R1,R2>.failure(InclusiveError.left(firstError))
				},
					onFailure: { secondError in
						Zipped<R1,R2>.failure(InclusiveError.center(firstError, secondError))
				})
		})
	}
}

// MARK: - Applicative

extension ResultType {
	public static func pure(_ value: ParameterType) -> Result<ErrorType,ParameterType> {
		return Result<ErrorType,ParameterType>.success(value)
	}

	public func apply<R,T>(_ transform: R) -> Result<InclusiveError<ErrorType,R.ErrorType>,T> where R: ResultType, R.ParameterType == (ParameterType) -> T {
		return Result.zip(self, transform)
			.map { value, function in function(value) }
	}
}

extension ResultType where ErrorType: Semigroup {
	public func apply<R,T>(_ transform: R) -> Result<ErrorType,T> where R: ResultType, R.ErrorType == ErrorType, R.ParameterType == (ParameterType) -> T {
		return Result.zip(self, transform)
			.map { value, function in function(value) }
			.mapError { $0.merged() }
	}
}






























