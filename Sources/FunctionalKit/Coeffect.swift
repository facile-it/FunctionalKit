#if SWIFT_PACKAGE
	import Operadics
#endif
import Abstract

public struct Coeffect<Parameter> {
	public let call: (Parameter) -> ()
	public init (_ call: @escaping (Parameter) -> ()) {
		self.call = call
	}

	public func run(_ environment: Parameter) {
		call(environment)
	}
}

extension Coeffect: TypeConstructor {
	public typealias ParameterType = Parameter
}

// MARK: - Algebra

extension Coeffect: Magma {
	public static func <> (lhs: Coeffect, rhs: Coeffect) -> Coeffect {
		return Coeffect.init { p in
			lhs.run(p)
			rhs.run(p)
		}
	}
}

/// This is a strong assumption: we need associativity for side effects,
/// otherwise there's no possibility of reasoning about them locally.
extension Coeffect: Semigroup {}

extension Coeffect: Monoid {
	public static var empty: Coeffect {
		return Coeffect.init { _ in }
	}
}

/// We cannot empower Coeffect with algebraic definitions any further:
/// being side-effects those that are performed, guaranteeing commutativity
/// or (even worse) idempotence would be too strong of an assumption.

public extension Coeffect {
	func contramap <A> (_ transform: @escaping (A) -> ParameterType) -> Coeffect<A> {
		return Coeffect<A>.init { self.run(transform($0)) }
	}

	static func lift <A> (_ function: @escaping (A) -> ParameterType) -> (Coeffect) -> Coeffect<A> {
		return { $0.contramap(function) }
	}
}

public extension Coeffect {
	static func zip <A,B> (_ first: Coeffect<A>, _ second: Coeffect<B>) -> Coeffect<(A,B)> where ParameterType == (A,B) {
		return Coeffect<(A,B)>.init {
			first.run($0.0)
			second.run($0.1)
		}
	}
}



//
//// MARK: - Definiton
//
//public protocol CoeffectType: ExponentialType {
//	associatedtype EnvironmentType
//	static func from(concrete: Concrete<EnvironmentType>) -> Self
//	func run(_ environment: EnvironmentType)
//	static func unfold(_ function: @escaping (EnvironmentType) -> ()) -> Self
//}
//
//public extension CoeffectType {
//	func call(_ source: EnvironmentType) {
//		return run(source)
//	}
//}
//
//// MARK: - Data
//
//public struct Coeffect<A>: CoeffectType {
//	public typealias EnvironmentType = A
//
//	private let _call: (A) -> ()
//	private init (_ _call: @escaping (A) -> ()) {
//		self._call = _call
//	}
//
//	public static func from(concrete: Coeffect<A>) -> Coeffect<A> {
//		return concrete
//	}
//
//	public func run(_ environment: A) {
//		_call(environment)
//	}
//
//	public static func unfold(_ function: @escaping (A) -> ()) -> Coeffect<A> {
//		return Coeffect.init(function)
//	}
//}
//
//// MARK: - Concrete
//
//public extension CoeffectType {
//	typealias Concrete<T> = Coeffect<T>
//}
//
//// MARK: - Algebra
//
//extension Coeffect: Magma {
//	public static func <> (lhs: Coeffect, rhs: Coeffect) -> Coeffect {
//		return Coeffect.unfold { environment in
//			lhs.run(environment)
//			rhs.run(environment)
//		}
//	}
//}
//
///// This is a strong assumption: we need associativity for side effects,
///// otherwise there's no possibility of reasoning about them locally.
//extension Coeffect: Semigroup {}
//
//extension Coeffect: Monoid {
//	public static var empty: Coeffect<A> {
//		return Coeffect.unfold { _ in }
//	}
//}
//
///// We cannot empower Coeffect with algebraic definitions any further:
///// being side-effects those that are performed, guaranteeing commutativity
///// or (even worse) idempotence would be too strong of an assumption.
//
//// MARK: - Contravariant Functor
//
//public extension CoeffectType {
//	func contramap <T> (_ transform: @escaping (T) -> EnvironmentType) -> Coeffect<T> {
//		return Coeffect<T>.unfold { self.run(transform($0)) }
//	}
//
//	static func lift <T> (_ function: @escaping (T) -> EnvironmentType) -> (Self) -> Coeffect<T> {
//		return { $0.contramap(function) }
//	}
//}
//
//// MARK: - Cartesian
//
//public extension CoeffectType {
//	static func zip <R1,R2> (_ first: R1, _ second: R2) -> Coeffect<(R1.EnvironmentType,R2.EnvironmentType)> where R1: CoeffectType, R2: CoeffectType, EnvironmentType == (R1.EnvironmentType,R2.EnvironmentType) {
//		return Coeffect.unfold {
//			first.run($0.0)
//			second.run($0.1)
//		}
//	}
//}
//
//// MARK: - Utility
//
//public extension f {
//	static func coeffect <T> (_ execute: @escaping (T) -> ()) -> Coeffect<T> {
//		return Coeffect<T>.unfold(execute)
//	}
//}
