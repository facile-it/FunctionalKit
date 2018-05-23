#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

// sourcery: functor
// sourcery: escapingHOF
// sourcery: secondaryParameter = "Model"
// sourcery: monad
// sourcery: testFunctor
// sourcery: test_Applicative /// segfault
// sourcery: testMonad
// sourcery: testConstruct = "init { m in (m,x) }"
// sourcery: testNeedsContext
// sourcery: testSecondaryParameter
public struct State<Model,Parameter> {
	private let _call: (Model) -> (Model,Parameter)
	public init(_ call: @escaping (Model) -> (Model,Parameter)) {
		self._call = call
	}

	public func run(_ status: Model) -> (Model, Parameter) {
		return _call(status)
	}
}

extension State: FunctionType {
	public typealias SourceType = Model

	public typealias TargetType = (Model,Parameter)

	public func call(_ source: Model) -> (Model, Parameter) {
		return run(source)
	}

	public static func from(function: Function<Model, (Model, Parameter)>) -> State<Model, Parameter> {
		return State.init(function.call)
	}
}

extension State: TypeConstructor2 {
	public typealias ParameterType = Parameter
	public typealias SecondaryType = Model
}

extension State: PureConstructible {
	public static func pure(_ value: Parameter) -> State {
		return State.init { m in (m,value) }
	}
}

extension State: EquatableInContext where Model: Equatable, Parameter: Equatable {
	public typealias Context = Model

	public static func == (left: State, right: State) -> (Model) -> Bool {
		return { m in
			left.run(m) == right.run(m)
		}
	}
}

public extension State {
	typealias Generic<M,A> = State<M,A>
}

public extension State {
	func map <A> (_ transform: @escaping (ParameterType) -> A) -> State<Model,A> {
		return Generic.init { m in
			let (newM,p) = self.run(m)
			return (newM,transform(p))
		}
	}

	func dimapModel <A> (from: @escaping (A) -> Model, to: @escaping (Model) -> A) -> State<A,ParameterType> {
		return Generic.init { m in
			let (newM,v) = self.run(from(m))
			return (to(newM),v)
		}
	}

	static func lift <A> (_ function: @escaping (ParameterType) -> A) -> (State) -> State<Model, A> {
		return { $0.map(function) }
	}

	static func zip <M1,A,M2,B> (_ first: State<M1,A>, _ second: State<M2,B>) -> State<(M1,M2),(A,B)> where Model == (M1,M2), ParameterType == (A,B) {
		return Generic.init { m1, m2 in
			let (newM1,p1) = first.run(m1)
			let (newM2,p2) = second.run(m2)
			return ((newM1,newM2),(p1,p2))
		}
	}

	static func zipSerial <A,B> (_ first: State<Model,A>, _ second: State<Model,B>) -> State<Model,(A,B)> where ParameterType == (A,B) {
		return Generic.init { m in
			let (newM1,p1) = first.run(m)
			let (newM2,p2) = second.run(newM1)
			return (newM2,(p1,p2))
		}
	}

	func apply <A> (_ transform: State<Model,(ParameterType) -> A>) -> State<Model,A> {
		return Generic.zipSerial(self, transform).map { value, function in function(value) }
	}

	static func <*> <A> (lhs: State<Model,(ParameterType) -> A>, rhs: State) -> State<Model,A> {
		return rhs.apply(lhs)
	}

	static func lift <A,B> (_ function: @escaping (A,B) -> ParameterType) -> (State<Model,A>, State<Model,B>) -> State {
		return { ap1, ap2 in
			return Generic.pure(f.curry(function)) <*> ap1 <*> ap2
		}
	}

	static func lift <A,B,C> (_ function: @escaping (A,B,C) -> ParameterType) -> (State<Model,A>,State<Model,B>,State<Model,C>) -> State {
		return { ap1, ap2, ap3 in
			return Generic.pure(f.curry(function)) <*> ap1 <*> ap2 <*> ap3
		}
	}

	func joined<A>() -> State<Model,A> where ParameterType == State<Model,A> {
		return Generic.init { m in
			let (m1,sub) = self.run(m)
			let (m2,p) = sub.run(m1)
			return (m2,p)
		}
	}

	func flatMap <A> (_ transform: @escaping (ParameterType) -> State<Model,A>) -> State<Model,A> {
		return map(transform).joined()
	}

	static var get: State<Model,Model> {
		return Generic.init { m in (m,m) }
	}

	static func put(_ model: Model) -> State<Model,()> {
		return Generic.init { _ in (model,()) }
	}
}
