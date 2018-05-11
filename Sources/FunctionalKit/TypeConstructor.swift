public protocol TypeConstructor {
	associatedtype ParameterType
}

public protocol TypeConstructor2: TypeConstructor {
    associatedtype SecondaryType
}

public protocol PureConstructible: TypeConstructor {
    static func pure(_ value: ParameterType) -> Self
}

public extension PureConstructible where ParameterType: PureConstructible {
    static func pureT(_ value: ParameterType.ParameterType) -> Self {
        return Self.pure(ParameterType.pure(value))
    }
}

public extension PureConstructible where ParameterType: PureConstructible, ParameterType.ParameterType: PureConstructible {
    static func pureTT(_ value: ParameterType.ParameterType.ParameterType) -> Self {
        return Self.pure(ParameterType.pure(ParameterType.ParameterType.pure(value)))
    }
}

public extension PureConstructible where ParameterType: PureConstructible, ParameterType.ParameterType: PureConstructible, ParameterType.ParameterType.ParameterType: PureConstructible {
    static func pureTTT(_ value: ParameterType.ParameterType.ParameterType.ParameterType) -> Self {
        return Self.pure(ParameterType.pure(ParameterType.ParameterType.pure(ParameterType.ParameterType.ParameterType.pure(value))))
    }
}

// Blueprint

// MARK: - Definiton

// MARK: - Data

// MARK: - Equatable

// MARK: - Concrete

// MARK: - Equatable

// MARK: - Functor

// MARK: - Cartesian

// MARK: - Applicative

// MARK: - Traversable

// MARK: - Monad

// MARK: - Utility
