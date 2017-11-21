import Abstract

// MARK: - Definiton

public protocol StateType: TypeConstructor, ExponentialType {
	associatedtype StateParameterType

	func run(_ state: StateParameterType) -> (StateParameterType,ParameterType)

	static func unfold(_ transform: @escaping (StateParameterType) -> (StateParameterType,ParameterType)) -> Self
}

extension StateType {
	public func call(_ source: StateParameterType) -> (StateParameterType,ParameterType) {
		return run(source)
	}
}

// MARK: - Data

public struct State<S,A>: StateType {
	public typealias ParameterType = A

	private let _call: (S) -> (S,A)
	private init(_ _call: @escaping (S) -> (S,A)) {
		self._call = _call
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
	public typealias Concrete = State<StateParameterType,StateType>
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
	public func dimap <A,B> (from: Isomorphism<A,StateParameterType>, to: @escaping (ParameterType) -> B) -> State<A,B> {
		return State.unfold(from.direct..self.run..duplicate(from.inverse, to))
	}

	public func map <T> (_ transform: @escaping (ParameterType) -> T) -> State<StateParameterType,T> {
		return dimap(from: .identity, to: transform)
	}

	public func contramap <T> (_ transform: Isomorphism<T,StateParameterType>) -> State<T, ParameterType> {
		return dimap(from: transform, to: identity)
	}
}

// MARK: - Cartesian

extension StateType {
	public static func zip <S1,S2> (_ first: S1, _ second: S2) -> State<(S1.StateParameterType,S2.StateParameterType),(S1.ParameterType,S2.ParameterType)> where S1: StateType, S2: StateType, StateParameterType == (S1.StateParameterType,S2.StateParameterType), ParameterType == (S1.ParameterType,S2.ParameterType) {
		return State.unfold { s1, s2 in
			let (newS1,v1) = first.run(s1)
			let (newS2,v2) = second.run(s2)
			return ((newS1,newS2),(v1,v2))
		}
	}

	public static func zipCommon <S1,S2> (_ first: S1, _ second: S2) -> State<StateParameterType,(S1.ParameterType,S2.ParameterType)> where S1: StateType, S2: StateType, S1.StateParameterType == StateParameterType, S2.StateParameterType == StateParameterType, ParameterType == (S1.ParameterType,S2.ParameterType) {
		return State.zip(first, second)
			.contramap(Isomorphism.init(direct: duplicate, inverse: { s1, _ in s1 }))
	}
}

// MARK: - Applicative

// MARK: - Traversable

// MARK: - Monad

// MARK: - Utility
