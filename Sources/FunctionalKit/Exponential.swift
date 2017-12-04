public protocol ExponentialType {
	associatedtype SourceType
	associatedtype TargetType

	func call(_ source: SourceType) -> TargetType
}

// sourcery: profunctor
// sourcery: construct = "init(x)"
// sourcery: needsContext
public struct Exponential<A,B>: ExponentialType {
	private let _call: (A) -> B

	public init(_ call: @escaping (A) -> B) {
		self._call = call
	}

	public func call(_ source: A) -> B {
		return _call(source)
	}
}

extension ExponentialType {
	public func dimap<A,B>(_ source: @escaping (A) -> SourceType, _ target: @escaping (TargetType) -> B) -> Exponential<A,B> {
		return Exponential<A,B>.init { value in target(self.call(source(value))) }
	}

	public var toExponential: Exponential<SourceType,TargetType> {
		return dimap({ $0 }, { $0 })
	}

	public func map<T>(_ transform: @escaping (TargetType) -> T) -> Exponential<SourceType,T> {
		return dimap({ $0 }, transform)
	}

	public func contramap<T>(_ transform: @escaping (T) -> SourceType) -> Exponential<T,TargetType> {
		return dimap(transform, { $0 })
	}
}

extension ExponentialType where SourceType == TargetType {
	public static var identity: Exponential<SourceType,TargetType> {
		return Exponential.init { $0 }
	}
}

extension ExponentialType where TargetType: Equatable {
    public static func == (lhs: Self, rhs: Self) -> Reader<SourceType,Bool> {
        return Reader<SourceType,Bool>.unfold { source in
            lhs.call(source) == rhs.call(source)
        }
    }
}
