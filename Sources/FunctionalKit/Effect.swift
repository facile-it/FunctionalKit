#if SWIFT_PACKAGE
	import Operadics
#endif
import Abstract

// MARK: - Definiton

// sourcery: split2
// sourcery: functor
// sourcery: monad
// sourcery: concrete = "Effect"
// sourcery: escapingHOF
public protocol EffectType: PureConstructible, ExponentialType {
	static func from(concrete: Concrete<ParameterType>) -> Self
	func run() -> ParameterType
	static func unfold(_ function: @escaping () -> ParameterType) -> Self
}

extension EffectType {
	public func call(_ source: ()) -> ParameterType {
		return run()
	}
}

// MARK: - Data

// sourcery: testFunctor
// sourcery: testApplicative
// sourcery: testMonad
// sourcery: testConstruct = "unfold { x }"
// sourcery: testNeedsCommand = "run()"
public struct Effect<A>: EffectType {
	public typealias ParameterType = A

	private let _call: () -> A
	private init (_ _call: @escaping () -> A) {
		self._call = _call
	}

	public static func from(concrete: Effect<A>) -> Effect<A> {
		return concrete
	}

	public func run() -> A {
		return _call()
	}

	public static func unfold(_ function: @escaping () -> A) -> Effect<A> {
		return Effect.init(function)
	}
}

// MARK: - Concrete

extension EffectType {
	public typealias Concrete<T> = Effect<T>
}

// MARK: - Equatable

extension EffectType where ParameterType: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Effect<Bool> {
		return Effect<Bool>.unfold {
			lhs.run() == rhs.run()
		}
	}
}

// MARK: - Functor

extension EffectType {
	public func map <T> (_ transform: @escaping (ParameterType) -> T) -> Effect<T> {
		return Effect<T>.unfold { transform(self.run()) }
	}

	public static func lift<A>(_ function: @escaping (ParameterType) -> A) -> (Self) -> Effect<A> {
		return { $0.map(function) }
	}

	public static func lift<A,Applicative2>(_ function: @escaping (ParameterType, Applicative2.ParameterType) -> A) -> (Self, Applicative2) -> Effect<A> where Applicative2: EffectType {
		return { ap1, ap2 in
			Concrete.pure(f.curry(function)) <*> ap1 <*> ap2
		}
	}

	public static func lift<A,Applicative2,Applicative3>(_ function: @escaping (ParameterType, Applicative2.ParameterType, Applicative3.ParameterType) -> A) -> (Self, Applicative2, Applicative3) -> Effect<A> where Applicative2: EffectType, Applicative3: EffectType {
		return { ap1, ap2, ap3 in
			Concrete.pure(f.curry(function)) <*> ap1 <*> ap2 <*> ap3
		}
	}
}

// MARK: - Cartesian

extension EffectType {
	public static func zip <R1,R2> (_ first: R1, _ second: R2) -> Effect<(R1.ParameterType,R2.ParameterType)> where R1: EffectType, R2: EffectType, ParameterType == (R1.ParameterType,R2.ParameterType) {
		return Effect.unfold { (first.run(),second.run()) }
	}
}

// MARK: - Applicative

extension EffectType {
	public static func pure(_ value: ParameterType) -> Effect<ParameterType> {
		return Effect<ParameterType>.unfold(f.pure(value))
	}

	public func apply <E,T> (_ transform: E) -> Effect<T> where E: EffectType, E.ParameterType == (ParameterType) -> T {
		return Effect.zip(self, transform).map { value, function in function(value) }
	}

	public static func <*> <E,T> (lhs: E, rhs: Self) -> Effect<T> where E: EffectType, E.ParameterType == (ParameterType) -> T {
		return Effect.zip(lhs, rhs).map { function, value in function(value) }
	}
}

// MARK: - Monad

extension EffectType where ParameterType: EffectType {
	public var joined: Effect<ParameterType.ParameterType> {
		return Effect.unfold { self.run().run() }
	}
}

extension EffectType {
	public func flatMap <E> (_ transform: @escaping (ParameterType) -> E) -> Effect<E.ParameterType> where E: EffectType {
		return map(transform).joined
	}
}

// MARK: - Utility

public func effect <T> (_ execute: @escaping () -> T) -> Effect<T> {
	return Effect<T>.unfold(execute)
}

public func lazily <T> (_ execute: @escaping @autoclosure () -> T) -> Effect<T> {
	return effect(execute)
}

