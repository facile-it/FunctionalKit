public protocol TypeConstructor {
	associatedtype ParameterType
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
//
//extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
//    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Optional<Array<Optional<Output>>>>) -> Array<Optional<Array<Optional<Output>>>> {
//        return flatMapTT { (value) -> Array<Optional<Array<Optional<Output>>>> in
//            value.traverse(transform).mapT { $0.traverse(fidentity) }.mapTT { $0.joined }
//        }
//    }
//}

