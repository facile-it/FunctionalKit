#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

public struct State<Model,Parameter> {
	public let call: (Model) -> (Model,Parameter)
	public init(_ call: @escaping (Model) -> (Model,Parameter)) {
		self.call = call
	}

	public func run(_ status: Model) -> (Model, Parameter) {
		return call(status)
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
		return { s in
			left.run(s) == right.run(s)
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


//
//// MARK: - Definiton
//
//// sourcery: split7
//// sourcery: functor
//// sourcery: monad
//// sourcery: concrete = "State"
//// sourcery: secondaryParameter = "StateParameterType"
//// sourcery: escapingHOF
//public protocol StateType: PureConstructible, ExponentialType {
//	associatedtype StateParameterType
//
//	static func from(concrete: Concrete<StateParameterType,ParameterType>) -> Self
//	func run(_ state: StateParameterType) -> (StateParameterType,ParameterType)
//	static func unfold(_ transform: @escaping (StateParameterType) -> (StateParameterType,ParameterType)) -> Self
//}
//
//extension StateType {
//	public func call(_ source: StateParameterType) -> (StateParameterType,ParameterType) {
//		return run(source)
//	}
//}
//
//// MARK: - Data
//
//// sourcery: testFunctor
//// sourcery: testApplicative
//// sourcery: testMonad
//// sourcery: testConstruct = "unfold { s in (s,x) }"
//// sourcery: testNeedsContext
//// sourcery: testSecondaryParameter
//public struct State<S,A>: StateType {
//	public typealias ParameterType = A
//
//	private let _call: (S) -> (S,A)
//	private init(_ _call: @escaping (S) -> (S,A)) {
//		self._call = _call
//	}
//
//	public static func from(concrete: State<S, A>) -> State<S, A> {
//		return concrete
//	}
//
//	public func run(_ state: S) -> (S, A) {
//		return _call(state)
//	}
//
//	public static func unfold(_ transform: @escaping (S) -> (S, A)) -> State<S, A> {
//		return State.init(transform)
//	}
//}
//
//// MARK: - Concrete
//
//extension StateType {
//	public typealias Concrete<S,T> = State<S,T>
//}
//
//// MARK: - Equatable
//
//extension State: EquatableInContext where S: Equatable, A: Equatable {
//	public typealias Context = S
//
//	public static func == (left: State, right: State) -> (S) -> Bool {
//		return { s in
//			left.run(s) == right.run(s)
//		}
//	}
//}
//
//// MARK: - Functor
//
//public extension StateType {
//	func map <T> (_ transform: @escaping (ParameterType) -> T) -> State<StateParameterType,T> {
//		return State.unfold { s in
//			let (newS,v) = self.run(s)
//			return (newS,transform(v))
//		}
//	}
//
//	func mapState <T> (from: @escaping (T) -> StateParameterType, to: @escaping (StateParameterType) -> T) -> State<T,ParameterType> {
//		return State.unfold { t in
//			let (newS,v) = self.run(from(t))
//			return (to(newS),v)
//		}
//	}
//
//    static func lift<A>(_ function: @escaping (ParameterType) -> A) -> (Self) -> State<StateParameterType, A> {
//        return { $0.map(function) }
//    }
//
//    static func lift<A,Applicative2>(_ function: @escaping (ParameterType, Applicative2.ParameterType) -> A) -> (Self, Applicative2) -> State<StateParameterType, A> where Applicative2: StateType, Applicative2.StateParameterType == StateParameterType {
//        return { ap1, ap2 in
//            Concrete.pure(f.curry(function)) <*> ap1 <*> ap2
//        }
//    }
//    
//    static func lift<A,Applicative2,Applicative3>(_ function: @escaping (ParameterType, Applicative2.ParameterType, Applicative3.ParameterType) -> A) -> (Self, Applicative2, Applicative3) -> State<StateParameterType, A> where Applicative2: StateType, Applicative3: StateType, Applicative2.StateParameterType == StateParameterType, Applicative3.StateParameterType == StateParameterType {
//        return { ap1, ap2, ap3 in
//            Concrete.pure(f.curry(function)) <*> ap1 <*> ap2 <*> ap3
//        }
//    }
//}
//
//// MARK: - Cartesian
//
//public extension StateType {
//	static func zip <S1,S2> (_ sm1: S1, _ sm2: S2) -> State<(S1.StateParameterType,S2.StateParameterType),(S1.ParameterType,S2.ParameterType)> where S1: StateType, S2: StateType, StateParameterType == (S1.StateParameterType,S2.StateParameterType), ParameterType == (S1.ParameterType,S2.ParameterType) {
//		return State.unfold { s1, s2 in
//			let (newS1,v1) = sm1.run(s1)
//			let (newS2,v2) = sm2.run(s2)
//			return ((newS1,newS2),(v1,v2))
//		}
//	}
//
//	static func zipCommon <S1,S2> (_ sm1: S1, _ sm2: S2) -> State<StateParameterType,(S1.ParameterType,S2.ParameterType)> where S1: StateType, S2: StateType, S1.StateParameterType == StateParameterType, S2.StateParameterType == StateParameterType, ParameterType == (S1.ParameterType,S2.ParameterType) {
//		return State.zip(sm1, sm2).mapState(from: f.duplicate, to: f.first)
//	}
//}
//
//// MARK: - Applicative
//
//public extension StateType {
//	static func pure(_ value: ParameterType) -> State<StateParameterType,ParameterType> {
//		return State.unfold { s in (s,value) }
//	}
//
//	func apply <S,T> (_ transform: S) -> State<StateParameterType,T> where S: StateType, S.ParameterType == (ParameterType) -> T, S.StateParameterType == StateParameterType {
//		return State.zipCommon(self, transform).map { value, function in function(value) }
//	}
//
//	static func <*> <S,T> (lhs: S, rhs: Self) -> State<StateParameterType,T> where S: StateType, S.ParameterType == (ParameterType) -> T, S.StateParameterType == StateParameterType {
//		return State.zipCommon(lhs, rhs).map { function, value in function(value) }
//	}
//}
//
//// MARK: - Monad
//
//public extension StateType where ParameterType: StateType, ParameterType.StateParameterType == StateParameterType {
//	func joined() -> State<StateParameterType,ParameterType.ParameterType> {
//		return State.unfold { externalS in
//			let (internalS, v) = self.run(externalS)
//			return v.run(internalS)
//		}
//	}
//}
//
//public extension StateType {
//    func flatMap <S> (_ transform: @escaping (ParameterType) -> S) -> State<StateParameterType,S.ParameterType> where S: StateType, S.StateParameterType == StateParameterType {
//        return map(transform).joined()
//    }
//}
//
//// MARK: - Utility
//
//public extension StateType {
//	static var get: State<StateParameterType,StateParameterType> {
//		return State<StateParameterType,StateParameterType>.unfold { s in (s,s) }
//	}
//
//	static func put(_ state: StateParameterType) -> State<StateParameterType,()> {
//		return State<StateParameterType,()>.unfold { _ in (state,()) }
//	}
//}
