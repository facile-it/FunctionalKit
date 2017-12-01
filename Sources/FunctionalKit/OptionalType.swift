import Operadics

// MARK: - Definiton

public protocol OptionalType: TypeConstructor, CoproductType {
	static func from(concrete: Concrete<ParameterType>) -> Self
	func run() -> ParameterType?
	func fold <T> (onNone: @escaping () -> T, onSome: @escaping (ParameterType) -> T) -> T
}

extension OptionalType {
	public func fold<T>(onLeft: @escaping (()) -> T, onRight: @escaping (ParameterType) -> T) -> T {
		return fold(onNone: { onLeft(()) }, onSome: onRight)
	}
}

// MARK: - Data
// sourcery: functor
// sourcery: testArgs = "(x: OptionalOf<String>)"
// sourcery: concrete = "x"
// sourcery: create = "getOptional"
// sourcery: concreteParams = ""
// sourcery: map = "map"
// sourcery: mapParams = "(fidentity)"
extension Optional: OptionalType {
	public typealias ParameterType = Wrapped

	public static func from(concrete: Optional<Wrapped>) -> Optional<Wrapped> {
		return concrete
	}
	
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
	public typealias Concrete<T> = Optional<T>
}

// MARK: - Equatable

extension OptionalType where ParameterType: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		return lhs.fold(
			onNone: {
				rhs.fold(
					onNone: fconstant(true),
					onSome: fconstant(false))
		},
			onSome: { value in
				rhs.fold(
					onNone: fconstant(false),
					onSome: { value == $0 })
		})
	}
}

// MARK: - Functor

extension OptionalType {
	public func map <T> (_ transform: @escaping (ParameterType) -> T) -> Optional<T> {
		return fold(
			onNone: fconstant(Optional<T>.none),
			onSome: transform..Optional<T>.some)
	}
}

// MARK: - Cartesian

extension OptionalType {
	public typealias Zipped<O1,O2> = Optional<(O1.ParameterType,O2.ParameterType)> where O1: OptionalType, O2: OptionalType

	public static func zip <O1,O2> (_ first: O1, _ second: O2) -> Zipped<O1,O2> where O1: OptionalType, O2: OptionalType, ParameterType == (O1.ParameterType, O2.ParameterType) {
		return first.fold(
			onNone: fconstant(Zipped<O1,O2>.none),
			onSome: { value in
				second.fold(
					onNone: fconstant(Zipped<O1,O2>.none),
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
	public typealias Traversed<Applicative> = Optional<Applicative.ParameterType> where Applicative: TypeConstructor

	public func traverse<Applicative>(_ transform: @escaping (ParameterType) -> Applicative) -> [Traversed<Applicative>] where Applicative: ArrayType {
		typealias Returned = [Traversed<Applicative>]

		return fold(
			onNone: { () -> Returned in
				Returned.pure(Traversed<Applicative>.none)
		},
			onSome: { (value) -> Returned in
				Applicative.Concrete.pure(Traversed<Applicative>.some) <*> transform(value)
		})
	}

	public func traverse<Applicative>(_ transform: @escaping (ParameterType) -> Applicative) -> Future<Traversed<Applicative>> where Applicative: FutureType {
		typealias Returned = Future<Traversed<Applicative>>

		return fold(
			onNone: { () -> Returned in
				Returned.pure(Traversed<Applicative>.none)
		},
			onSome: { (value) -> Returned in
				Applicative.Concrete.pure(Traversed<Applicative>.some) <*> transform(value)
		})
	}

	public func traverse<Applicative>(_ transform: @escaping (ParameterType) -> Applicative) -> Optional<Traversed<Applicative>> where Applicative: OptionalType {
		typealias Returned = Optional<Traversed<Applicative>>

		return fold(
			onNone: { () -> Returned in
				Returned.pure(Traversed<Applicative>.none)
		},
			onSome: { (value) -> Returned in
				Applicative.Concrete.pure(Traversed<Applicative>.some) <*> transform(value)
		})
	}

	public func traverse<Applicative>(_ transform: @escaping (ParameterType) -> Applicative) -> Reader<Applicative.EnvironmentType,Traversed<Applicative>> where Applicative: ReaderType {
		typealias Returned = Reader<Applicative.EnvironmentType,Traversed<Applicative>>

		return fold(
			onNone: { () -> Returned in
				Returned.pure(Traversed<Applicative>.none)
		},
			onSome: { (value) -> Returned in
				Applicative.Concrete.pure(Traversed<Applicative>.some) <*> transform(value)
		})
	}

	public func traverse<Applicative>(_ transform: @escaping (ParameterType) -> Applicative) -> Result<Applicative.ErrorType,Traversed<Applicative>> where Applicative: ResultType {
		typealias Returned = Result<Applicative.ErrorType,Traversed<Applicative>>

		return fold(
			onNone: { () -> Returned in
				Returned.pure(Traversed<Applicative>.none)
		},
			onSome: { (value) -> Returned in
				Applicative.Concrete.pure(Traversed<Applicative>.some) <*> transform(value)
		})
	}

	public func traverse<Applicative>(_ transform: @escaping (ParameterType) -> Applicative) -> Writer<Applicative.LogType,Traversed<Applicative>> where Applicative: WriterType {
		typealias Returned = Writer<Applicative.LogType,Traversed<Applicative>>

		return fold(
			onNone: { () -> Returned in
				Returned.pure(Traversed<Applicative>.none)
		},
			onSome: { (value) -> Returned in
				Applicative.Concrete.pure(Traversed<Applicative>.some) <*> transform(value)
		})
	}

}

// MARK: - Monad

extension OptionalType where ParameterType: OptionalType {
	public var joined: Optional<ParameterType.ParameterType> {
		return fold(
			onNone: fconstant(Optional<ParameterType.ParameterType>.none),
			onSome: { value in
				value.fold(
					onNone: fconstant(Optional<ParameterType.ParameterType>.none),
					onSome: Optional<ParameterType.ParameterType>.some)
		})
	}
}

extension OptionalType {
	public func flatMap<O>(_ transform: @escaping (ParameterType) -> O) -> Optional<O.ParameterType> where O: OptionalType {
		return map(transform).joined
	}
}

// MARK: - Utility

/// check other implementations

