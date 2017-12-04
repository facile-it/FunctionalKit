import Abstract

struct AnyError: Wrapper, Error {
    typealias WrappedType = Error
    let unwrap: Error
    init(_ value: Error) {
        self.unwrap = value
    }
}

extension AnyError: CustomStringConvertible {
    var description: String {
        return "\(unwrap)"
    }
}

extension AnyError: Equatable {
    static func == (left: AnyError, right: AnyError) -> Bool {
        return left.description == right.description
    }
}

