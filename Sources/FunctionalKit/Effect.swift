#if SWIFT_PACKAGE
	import Operadics
#endif
import Abstract

// sourcery: functor
// sourcery: escapingHOF
// sourcery: monad
// sourcery: testFunctor
// sourcery: testApplicative
// sourcery: testMonad
// sourcery: testConstruct = "init { x }"
// sourcery: testNeedsCommand = "run()"
public struct Effect<Parameter> {
	public let call: () -> Parameter
	public init (_ call: @escaping () -> Parameter) {
		self.call = call
	}

	public func run() -> Parameter {
		return call()
	}
}

extension Effect: TypeConstructor {
	public typealias ParameterType = Parameter
}

public extension Effect {
	typealias Generic<A> = Effect<A>
}

extension Effect: PureConstructible {
	public static func pure(_ value: Parameter) -> Effect {
		return Effect.init { value }
	}
}

public extension Effect {
	func map <A> (_ transform: @escaping (ParameterType) -> A) -> Effect<A> {
		return Effect<A>.init { transform(self.run()) }
	}

	public static func lift <A> (_ function: @escaping (ParameterType) -> A) -> (Effect) -> Effect<A> {
		return { $0.map(function) }
	}
}

public extension Effect {
	static func zip <A1,A2> (_ first: Effect<A1>, _ second: Effect<A2>) -> Effect<(A1,A2)> where ParameterType == (A1,A2) {
		return Effect<(A1,A2)>.init { (first.run(),second.run()) }
	}
}

public extension Effect {
	func apply <A> (_ transform: Effect<(ParameterType) -> A>) -> Effect<A> {
		return Generic.zip(self, transform).map { value, function in function(value) }
	}

	static func <*> <A> (lhs: Effect<(ParameterType) -> A>, rhs: Effect) -> Effect<A> {
		return rhs.apply(lhs)
	}

	static func lift <A,T1> (_ function: @escaping (ParameterType, T1) -> A) -> (Effect, Effect<T1>) -> Effect<A> {
		return { (t1s, t2s) in
			Generic.pure(f.curry(function)) <*> t1s <*> t2s
		}
	}

	static func lift <A,T1,T2> (_ function: @escaping (ParameterType, T1, T2) -> A) -> (Effect, Effect<T1>, Effect<T2>) -> Effect<A> {
		return { (t1s, t2s, t3s) in
			Generic.pure(f.curry(function)) <*> t1s <*> t2s <*> t3s
		}
	}

	func joined<A>() -> Effect<A> where ParameterType == Effect<A>  {
		return Effect<A>.init { self.run().run() }
	}

	func flatMap <A> (_ transform: @escaping (ParameterType) -> Effect<A>) -> Effect<A> {
		return map(transform).joined()
	}
}

public extension f {
	static func effect <A> (_ execute: @escaping () -> A) -> Effect<A> {
		return Effect<A>.init(execute)
	}

	static func lazily <A> (_ execute: @escaping @autoclosure () -> A) -> Effect<A> {
		return effect(execute)
	}
}




//
//// MARK: - Definiton
//
//// sourcery: split2
//// sourcery: functor
//// sourcery: monad
//// sourcery: concrete = "Effect"
//// sourcery: escapingHOF
//public protocol EffectType: PureConstructible, ExponentialType {
//	static func from(concrete: Concrete<ParameterType>) -> Self
//	func run() -> ParameterType
//	static func unfold(_ function: @escaping () -> ParameterType) -> Self
//}
//
//public extension EffectType {
//	func call(_ source: ()) -> ParameterType {
//		return run()
//	}
//}
//
//// MARK: - Data
//
//// sourcery: testFunctor
//// sourcery: testApplicative
//// sourcery: testMonad
//// sourcery: testConstruct = "unfold { x }"
//// sourcery: testNeedsCommand = "run()"
//public struct Effect<A>: EffectType {
//	public typealias ParameterType = A
//
//	private let _call: () -> A
//	private init (_ _call: @escaping () -> A) {
//		self._call = _call
//	}
//
//	public static func from(concrete: Effect<A>) -> Effect<A> {
//		return concrete
//	}
//
//	public func run() -> A {
//		return _call()
//	}
//
//	public static func unfold(_ function: @escaping () -> A) -> Effect<A> {
//		return Effect.init(function)
//	}
//}
//
//// MARK: - Equatable
//
//extension Effect: EquatableInContext where A: Equatable {
//	public typealias Context = ()
//}
//
//// MARK: - Concrete
//
//public extension EffectType {
//	typealias Concrete<T> = Effect<T>
//}
//
//// MARK: - Functor
//
//public extension EffectType {
//	func map <T> (_ transform: @escaping (ParameterType) -> T) -> Effect<T> {
//		return Effect<T>.unfold { transform(self.run()) }
//	}
//
//	public static func lift<A>(_ function: @escaping (ParameterType) -> A) -> (Self) -> Effect<A> {
//		return { $0.map(function) }
//	}
//
//	public static func lift<A,Applicative2>(_ function: @escaping (ParameterType, Applicative2.ParameterType) -> A) -> (Self, Applicative2) -> Effect<A> where Applicative2: EffectType {
//		return { ap1, ap2 in
//			Concrete.pure(f.curry(function)) <*> ap1 <*> ap2
//		}
//	}
//
//	public static func lift<A,Applicative2,Applicative3>(_ function: @escaping (ParameterType, Applicative2.ParameterType, Applicative3.ParameterType) -> A) -> (Self, Applicative2, Applicative3) -> Effect<A> where Applicative2: EffectType, Applicative3: EffectType {
//		return { ap1, ap2, ap3 in
//			Concrete.pure(f.curry(function)) <*> ap1 <*> ap2 <*> ap3
//		}
//	}
//}
//
//// MARK: - Cartesian
//
//public extension EffectType {
//	static func zip <R1,R2> (_ first: R1, _ second: R2) -> Effect<(R1.ParameterType,R2.ParameterType)> where R1: EffectType, R2: EffectType, ParameterType == (R1.ParameterType,R2.ParameterType) {
//		return Effect.unfold { (first.run(),second.run()) }
//	}
//}
//
//// MARK: - Applicative
//
//public extension EffectType {
//	static func pure(_ value: ParameterType) -> Effect<ParameterType> {
//		return Effect<ParameterType>.unfold(f.pure(value))
//	}
//
//	func apply <E,T> (_ transform: E) -> Effect<T> where E: EffectType, E.ParameterType == (ParameterType) -> T {
//		return Effect.zip(self, transform).map { value, function in function(value) }
//	}
//
//	static func <*> <E,T> (lhs: E, rhs: Self) -> Effect<T> where E: EffectType, E.ParameterType == (ParameterType) -> T {
//		return Effect.zip(lhs, rhs).map { function, value in function(value) }
//	}
//}
//
//// MARK: - Monad
//
//public extension EffectType where ParameterType: EffectType {
//	func joined() -> Effect<ParameterType.ParameterType> {
//		return Effect.unfold { self.run().run() }
//	}
//}
//
//public extension EffectType {
//	func flatMap <E> (_ transform: @escaping (ParameterType) -> E) -> Effect<E.ParameterType> where E: EffectType {
//		return map(transform).joined()
//	}
//}
//
//// MARK: - Utility
//
//public extension f {
//	static func effect <T> (_ execute: @escaping () -> T) -> Effect<T> {
//		return Effect<T>.unfold(execute)
//	}
//
//	static func lazily <T> (_ execute: @escaping @autoclosure () -> T) -> Effect<T> {
//		return effect(execute)
//	}
//}
