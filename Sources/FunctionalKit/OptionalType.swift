import Abstract

// MARK: - Definiton

public protocol OptionalType: TypeConstructor, CoproductType {
	func run() -> ParameterType?
	func fold <T> (onNone: @escaping () -> T, onSome: @escaping (ParameterType) -> T) -> T
}

extension OptionalType {
	public func fold<T>(onLeft: @escaping (()) -> T, onRight: @escaping (ParameterType) -> T) -> T {
		return fold(onNone: { onLeft(()) }, onSome: onRight)
	}
}

// MARK: - Data

extension Optional: OptionalType {
	public typealias ParameterType = Wrapped

	public func run() -> Wrapped? {
		return self
	}

	public func fold<T>(onNone: @escaping () -> T, onSome: @escaping (Wrapped) -> T) -> T {
		switch self {
		case .none:
			return onNone()
		case .some(let value):
			return onSome(value)
		}
	}
}

// MARK: - Concrete

extension OptionalType {
	public typealias Concrete = Optional<ParameterType>
}

// MARK: - Equatable

extension OptionalType where ParameterType: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		return lhs.fold(
			onNone: {
				rhs.fold(
					onNone: constant(true),
					onSome: constant(false))
		},
			onSome: { value in
				rhs.fold(
					onNone: constant(false),
					onSome: { value == $0 })
		})
	}
}

// MARK: - Functor

extension OptionalType {
	public func map <T> (_ transform: @escaping (ParameterType) -> T) -> Optional<T> {
		return fold(
			onNone: constant(Optional<T>.none),
			onSome: transform..Optional<T>.some)
	}
}

// MARK: - Cartesian

extension OptionalType {
	public typealias Zipped<O1,O2> = Optional<(O1.ParameterType,O2.ParameterType)> where O1: OptionalType, O2: OptionalType

	public static func zip <O1,O2> (_ first: O1, _ second: O2) -> Zipped<O1,O2> where O1: OptionalType, O2: OptionalType, ParameterType == (O1.ParameterType, O2.ParameterType) {
		return first.fold(
			onNone: constant(Zipped<O1,O2>.none),
			onSome: { value in
				second.fold(
					onNone: constant(Zipped<O1,O2>.none),
					onSome: { Zipped<O1,O2>.some((value,$0)) })
		})
	}
}

// MARK: - Applicative

extension OptionalType {
	public static func pure(_ value: ParameterType) -> Optional<ParameterType> {
		return Optional<ParameterType>.init(value)
	}

	public func apply<O,T>(_ transform: O) -> Optional<T> where O: OptionalType, O.ParameterType == (ParameterType) -> T {
		return Optional.zip(self, transform).map { value, function in function(value) }
	}

	public static func <*> <O,T> (lhs: O, rhs: Self) -> Optional<T> where O: OptionalType, O.ParameterType == (ParameterType) -> T {
		return Optional.zip(lhs, rhs).map { function, value in function(value) }
	}
}

// MARK: - Traversable

extension OptionalType {
	public typealias Traversed<A> = Optional<A.ParameterType> where A: TypeConstructor

	public func traverse<A>(_ transform: @escaping (ParameterType) -> A) -> [Traversed<A>] where A: ArrayType {
		typealias Returned = [Traversed<A>]

		return fold(
			onNone: { () -> Returned in
				Returned.pure(Traversed<A>.none)
		},
			onSome: { (value) -> Returned in
				transform(value).map(Traversed<A>.some)
		})
	}

	public func traverse<O>(_ transform: @escaping (ParameterType) -> O) -> Optional<Traversed<O>> where O: OptionalType {
		typealias Returned = Optional<Traversed<O>>

		return fold(
			onNone: { () -> Returned in
				Returned.pure(Traversed<O>.none)
		},
			onSome: { (value) -> Returned in
				transform(value).map(Traversed<O>.some)
		})
	}

	public func traverse<R>(_ transform: @escaping (ParameterType) -> R) -> Result<R.ErrorType,Traversed<R>> where R: ResultType {
		typealias Returned = Result<R.ErrorType,Traversed<R>>

		return fold(
			onNone: { () -> Returned in
				Returned.pure(Traversed<R>.none)
		},
			onSome: { (value) -> Returned in
				transform(value).map(Traversed<R>.some)
		})
	}
}

// MARK: - Monad

extension OptionalType where ParameterType: OptionalType {
	public var joined: Optional<ParameterType.ParameterType> {
		return fold(
			onNone: constant(Optional<ParameterType.ParameterType>.none),
			onSome: { value in
				value.fold(
					onNone: constant(Optional<ParameterType.ParameterType>.none),
					onSome: Optional<ParameterType.ParameterType>.some)
		})
	}
}

extension OptionalType {
	public func flatMap<O>(_ transform: @escaping (ParameterType) -> O) -> Optional<O.ParameterType> where O: OptionalType {
		return map(transform).joined
	}
}
