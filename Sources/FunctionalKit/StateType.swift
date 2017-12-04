import Operadics

// MARK: - Definiton

public protocol StateType: TypeConstructor, ExponentialType {
	associatedtype StateParameterType

	static func from(concrete: Concrete<StateParameterType,ParameterType>) -> Self
	func run(_ state: StateParameterType) -> (StateParameterType,ParameterType)
	static func unfold(_ transform: @escaping (StateParameterType) -> (StateParameterType,ParameterType)) -> Self
}

extension StateType {
	public func call(_ source: StateParameterType) -> (StateParameterType,ParameterType) {
		return run(source)
	}
}

// MARK: - Data
// sourcery: functor
// sourcery: applicative
// sourcery: construct = "unfold { s in (s,x) }"
// sourcery: needsContext
// sourcery: needsSecondary
public struct State<S,A>: StateType {
	public typealias ParameterType = A

	private let _call: (S) -> (S,A)
	private init(_ _call: @escaping (S) -> (S,A)) {
		self._call = _call
	}

	public static func from(concrete: State<S, A>) -> State<S, A> {
		return concrete
	}
	
	public func run(_ state: S) -> (S, A) {
		return _call(state)
	}

	public static func unfold(_ transform: @escaping (S) -> (S, A)) -> State<S, A> {
		return State.init(transform)
	}
}

// MARK: - Concrete

extension StateType {
	public typealias Concrete<S,T> = State<S,T>
}

// MARK: - Equatable

extension StateType where StateParameterType: Equatable, ParameterType: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Reader<StateParameterType,Bool> {
		return Reader.unfold { s in
			lhs.run(s) == rhs.run(s)
		}
	}
}

// MARK: - Functor

extension StateType {
	public func map <T> (_ transform: @escaping (ParameterType) -> T) -> State<StateParameterType,T> {
		return State.unfold { s in
			let (newS,v) = self.run(s)
			return (newS,transform(v))
		}
	}

	public func mapState <T> (from: @escaping (T) -> StateParameterType, to: @escaping (StateParameterType) -> T) -> State<T,ParameterType> {
		return State.unfold { t in
			let (newS,v) = self.run(from(t))
			return (to(newS),v)
		}
	}
}

// MARK: - Cartesian

extension StateType {
	public static func zip <S1,S2> (_ sm1: S1, _ sm2: S2) -> State<(S1.StateParameterType,S2.StateParameterType),(S1.ParameterType,S2.ParameterType)> where S1: StateType, S2: StateType, StateParameterType == (S1.StateParameterType,S2.StateParameterType), ParameterType == (S1.ParameterType,S2.ParameterType) {
		return State.unfold { s1, s2 in
			let (newS1,v1) = sm1.run(s1)
			let (newS2,v2) = sm2.run(s2)
			return ((newS1,newS2),(v1,v2))
		}
	}

	public static func zipCommon <S1,S2> (_ sm1: S1, _ sm2: S2) -> State<StateParameterType,(S1.ParameterType,S2.ParameterType)> where S1: StateType, S2: StateType, S1.StateParameterType == StateParameterType, S2.StateParameterType == StateParameterType, ParameterType == (S1.ParameterType,S2.ParameterType) {
		return State.zip(sm1, sm2).mapState(from: fduplicate, to: ffirst)
	}
}

// MARK: - Applicative

extension StateType {
	public static func pure(_ value: ParameterType) -> State<StateParameterType,ParameterType> {
		return State.unfold { s in (s,value) }
	}

	public func apply <S,T> (_ transform: S) -> State<StateParameterType,T> where S: StateType, S.ParameterType == (ParameterType) -> T, S.StateParameterType == StateParameterType {
		return State.zipCommon(self, transform).map { value, function in function(value) }
	}

	public static func <*> <S,T> (lhs: S, rhs: Self) -> State<StateParameterType,T> where S: StateType, S.ParameterType == (ParameterType) -> T, S.StateParameterType == StateParameterType {
		return State.zipCommon(lhs, rhs).map { function, value in function(value) }
	}
}

// MARK: - Monad

extension StateType where ParameterType: StateType, ParameterType.StateParameterType == StateParameterType {
	public var joined: State<StateParameterType,ParameterType.ParameterType> {
		return State.unfold { externalS in
			let (internalS, v) = self.run(externalS)
			return v.run(internalS)
		}
	}

	public func flatMap <S> (_ transform: @escaping (ParameterType) -> S) -> State<StateParameterType,S.ParameterType> where S: StateType, S.StateParameterType == StateParameterType {
		return map(transform).joined
	}
}

// MARK: - Utility

extension StateType {
	public static var get: State<StateParameterType,StateParameterType> {
		return State<StateParameterType,StateParameterType>.unfold { s in (s,s) }
	}

	public static func put(_ state: StateParameterType) -> State<StateParameterType,()> {
		return State<StateParameterType,()>.unfold { _ in (state,()) }
	}
}
