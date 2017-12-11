public protocol TypeConstructor {
	associatedtype ParameterType
}

public protocol PureConstructible: TypeConstructor {
    static func pure(_ value: ParameterType) -> Self
}

extension PureConstructible where ParameterType: PureConstructible {
    static func pureT(_ value: ParameterType.ParameterType) -> Self {
        return Self.pure(ParameterType.pure(value))
    }
}

extension PureConstructible where ParameterType: PureConstructible, ParameterType.ParameterType: PureConstructible {
    static func pureTT(_ value: ParameterType.ParameterType.ParameterType) -> Self {
        return Self.pureT(ParameterType.ParameterType.pure(value))
    }
}

extension PureConstructible where ParameterType: PureConstructible, ParameterType.ParameterType: PureConstructible, ParameterType.ParameterType.ParameterType: PureConstructible {
    static func pureTTT(_ value: ParameterType.ParameterType.ParameterType.ParameterType) -> Self {
        return Self.pureTT(ParameterType.ParameterType.ParameterType.pure(value))
    }
}

// Blueprint

// MARK: - Definiton

// MARK: - Data

// MARK: - Concrete

// MARK: - Equatable

// MARK: - Functor

// MARK: - Cartesian

// MARK: - Applicative

// MARK: - Traversable

// MARK: - Monad

// MARK: - Utility
