#if SWIFT_PACKAGE
	import Operadics
#endif
import Abstract

// sourcery: functor
// sourcery: escapingHOF
// sourcery: monad
// sourcery: testFunctor
// sourcery: test_Applicative /// segfault
// sourcery: testMonad
// sourcery: testConstruct = "init { x }"
// sourcery: testNeedsCommand = "run()"
public struct Effect<Parameter> {
	private let _call: () -> Parameter
	public init (_ call: @escaping () -> Parameter) {
		self._call = call
	}

	public func run() -> Parameter {
		return _call()
	}
}

extension Effect: ExponentialType {
	public typealias SourceType = ()
	public typealias TargetType = Parameter

	public func call(_ source: ()) -> Parameter {
		return run()
	}
}

extension Effect: EquatableInContext where Parameter: Equatable {
	public typealias Context = ()
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
	static func lazily <A> (_ execute: @escaping @autoclosure () -> A) -> Effect<A> {
		return Effect(execute)
	}
}
