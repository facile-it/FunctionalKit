#if SWIFT_PACKAGE
	import Operadics
#endif
import Abstract

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
