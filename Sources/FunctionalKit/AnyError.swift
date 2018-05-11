#if SWIFT_PACKAGE
	import Operadics
#endif
import Abstract

/// AnyError
///
/// A concrete type wrapping Error
///
/// This can be useful for parametrized types/functions where a parameter is constrained to Error:
/// since Error as a first-class type cannot be used in that position, the instance can be wrapped into AnyError.
public struct AnyError: Wrapper, Error {
    public typealias WrappedType = Error
    public let unwrap: Error
    public init(_ value: Error) {
        self.unwrap = value
    }
}

extension AnyError: CustomStringConvertible {
    public var description: String {
        return "\(unwrap)"
    }
}

extension AnyError: Equatable {
    public static func == (left: AnyError, right: AnyError) -> Bool {
        return left.description == right.description
    }
}
