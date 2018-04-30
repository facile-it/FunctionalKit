#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

public protocol ExponentialType {
	associatedtype SourceType
	associatedtype TargetType

	func call(_ source: SourceType) -> TargetType
}

extension Function: ExponentialType {}

extension ExponentialType {
	public func dimap<A,B>(_ source: @escaping (A) -> SourceType, _ target: @escaping (TargetType) -> B) -> Function<A,B> {
		return Function<A,B>.init { value in target(self.call(source(value))) }
	}

	public func toExponential() -> Function<SourceType,TargetType> {
		return dimap(f.identity, f.identity)
	}

	public func map<T>(_ transform: @escaping (TargetType) -> T) -> Function<SourceType,T> {
		return dimap(f.identity, transform)
	}

	public func contramap<T>(_ transform: @escaping (T) -> SourceType) -> Function<T,TargetType> {
		return dimap(transform, f.identity)
	}
}

extension ExponentialType where SourceType == TargetType {
	public static func identity() -> Function<SourceType,TargetType> {
		return Function.init { $0 }
	}
}

extension ExponentialType where TargetType: Equatable {
    public static func == (lhs: Self, rhs: Self) -> Reader<SourceType,Bool> {
        return Reader<SourceType,Bool>.unfold { source in
            lhs.call(source) == rhs.call(source)
        }
    }
}
