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

// MARK: - Functor

extension ExponentialType {
	public func dimap<A,B>(_ source: @escaping (A) -> SourceType, _ target: @escaping (TargetType) -> B) -> Function<A,B> {
		return Function<A,B>.init { value in target(self.call(source(value))) }
	}

	public func toFunction() -> Function<SourceType,TargetType> {
		return dimap(f.identity, f.identity)
	}

	public func map<T>(_ transform: @escaping (TargetType) -> T) -> Function<SourceType,T> {
		return dimap(f.identity, transform)
	}

	public func contramap<T>(_ transform: @escaping (T) -> SourceType) -> Function<T,TargetType> {
		return dimap(transform, f.identity)
	}
}

//MARK: - Equatable

extension ExponentialType where TargetType: Equatable {
    public static func == (lhs: Self, rhs: Self) -> Reader<SourceType,Bool> {
        return Reader<SourceType,Bool>.unfold { source in
            lhs.call(source) == rhs.call(source)
        }
    }
}

//MARK: - PredicateSet

public extension ExponentialType where TargetType == Bool {
	static var universe: Function<SourceType,Bool> {
		return Function<SourceType,Bool> { _ in true }
	}

	static var empty: Function<SourceType,Bool> {
		return Function<SourceType,Bool> { _ in false }
	}

	func contains(_ value: SourceType) -> Bool {
		return call(value)
	}

	func inverted() -> Function<SourceType,Bool> {
		return Function<SourceType,Bool> {
			self.contains($0).not
		}
	}

	func union (_ other: Function<SourceType,Bool>) -> Function<SourceType,Bool> {
		return Function<SourceType,Bool> {
			self.contains($0) || other.contains($0)
		}
	}

	func intersection (_ other: Function<SourceType,Bool>) -> Function<SourceType,Bool> {
		return Function<SourceType,Bool> {
			self.contains($0) && other.contains($0)
		}
	}

	func minus (_ other: Function<SourceType,Bool>) -> Function<SourceType,Bool> {
		return Function<SourceType,Bool> {
			self.contains($0) && other.contains($0).not
		}
	}

	func exclusiveDisjunction (_ other: Function<SourceType,Bool>) -> Function<SourceType,Bool> {
		let unionSet = self.union(other)
		let intersectionSet = self.intersection(other)
		return unionSet.minus(intersectionSet)
	}
}

//MARK: - Utility

extension ExponentialType where SourceType == TargetType {
	public static func identity() -> Function<SourceType,TargetType> {
		return Function.init { $0 }
	}
}
