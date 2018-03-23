#if SWIFT_PACKAGE
	import Operadics
#endif
import Abstract

// MARK: - Definiton

public protocol CoeffectType: ExponentialType {
	associatedtype EnvironmentType
	static func from(concrete: Concrete<EnvironmentType>) -> Self
	func run(_ environment: EnvironmentType)
	static func unfold(_ function: @escaping (EnvironmentType) -> ()) -> Self
}

extension CoeffectType {
	public func call(_ source: EnvironmentType) {
		return run(source)
	}
}

// MARK: - Data

public struct Coeffect<A>: CoeffectType {
	public typealias EnvironmentType = A

	private let _call: (A) -> ()
	private init (_ _call: @escaping (A) -> ()) {
		self._call = _call
	}

	public static func from(concrete: Coeffect<A>) -> Coeffect<A> {
		return concrete
	}

	public func run(_ environment: A) {
		_call(environment)
	}

	public static func unfold(_ function: @escaping (A) -> ()) -> Coeffect<A> {
		return Coeffect.init(function)
	}
}

// MARK: - Concrete

extension CoeffectType {
	public typealias Concrete<T> = Coeffect<T>
}

// MARK: - Monoid

extension Coeffect: Monoid {
	public static var empty: Coeffect<A> {
		return Coeffect.unfold { _ in }
	}

	public static func <> (lhs: Coeffect, rhs: Coeffect) -> Coeffect {
		return Coeffect.unfold { environment in
			lhs.run(environment)
			rhs.run(environment)
		}
	}
}

// MARK: - Contravariant Functor

extension CoeffectType {
	public func contramap <T> (_ transform: @escaping (T) -> EnvironmentType) -> Coeffect<T> {
		return Coeffect<T>.unfold { self.run(transform($0)) }
	}

	public static func lift <T> (_ function: @escaping (T) -> EnvironmentType) -> (Self) -> Coeffect<T> {
		return { $0.contramap(function) }
	}
}

// MARK: - Cartesian

extension CoeffectType {
	public static func zip <R1,R2> (_ first: R1, _ second: R2) -> Coeffect<(R1.EnvironmentType,R2.EnvironmentType)> where R1: CoeffectType, R2: CoeffectType, EnvironmentType == (R1.EnvironmentType,R2.EnvironmentType) {
		return Coeffect.unfold {
			first.run($0.0)
			second.run($0.1)
		}
	}
}

// MARK: - Utility

public func coeffect <T> (_ execute: @escaping (T) -> ()) -> Coeffect<T> {
	return Coeffect<T>.unfold(execute)
}
