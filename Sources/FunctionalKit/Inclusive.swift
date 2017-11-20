import Abstract

public protocol InclusiveType {
	associatedtype LeftType
	associatedtype RightType

	func fold<T>(onLeft: @escaping (LeftType) -> T, onCenter: @escaping (LeftType,RightType) -> T, onRight: @escaping (RightType) -> T) -> T
}

public enum Inclusive<A,B>: InclusiveType {
	case left(A)
	case center(A,B)
	case right(B)

	public func fold<T>(onLeft: @escaping (A) -> T, onCenter: @escaping (A,B) -> T, onRight: @escaping (B) -> T) -> T {
		switch self {
		case .left(let a):
			return onLeft(a)
		case .center(let a, let b):
			return onCenter(a,b)
		case .right(let b):
			return onRight(b)
		}
	}
}

public enum InclusiveError<A,B>: InclusiveType, Error where A: Error, B: Error {
	case left(A)
	case center(A,B)
	case right(B)

	public func fold<T>(onLeft: @escaping (A) -> T, onCenter: @escaping (A,B) -> T, onRight: @escaping (B) -> T) -> T {
		switch self {
		case .left(let a):
			return onLeft(a)
		case .center(let a, let b):
			return onCenter(a,b)
		case .right(let b):
			return onRight(b)
		}
	}
}


// MARK: - Equatable

extension InclusiveType where LeftType: Equatable, RightType: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		return lhs.fold(
			onLeft: { (left) -> Bool in
				rhs.fold(
					onLeft: { left == $0 },
					onCenter: constant(false),
					onRight: constant(false))
		},
			onCenter: { (left, right) -> Bool in
				rhs.fold(
					onLeft: constant(false),
					onCenter: { left == $0 && right == $1 },
					onRight: constant(false))
		},
			onRight: { (right) -> Bool in
				rhs.fold(
					onLeft: constant(false),
					onCenter: constant(false),
					onRight: { right == $0 })
		})
	}
}

// MARK: - Projections

extension InclusiveType {
	public var tryToProduct: Product<LeftType,RightType>? {
		return fold(
			onLeft: constant(nil),
			onCenter: Product.init,
			onRight: constant(nil))
	}

	public var tryToCoproduct: Coproduct<LeftType,RightType>? {
		return fold(
			onLeft: Coproduct.left,
			onCenter: constant(nil),
			onRight: Coproduct.right)
	}

	public var tryLeft: LeftType? {
		return fold(
			onLeft: identity,
			onCenter: first,
			onRight: constant(nil))
	}

	public var tryRight: RightType? {
		return fold(
			onLeft: constant(nil),
			onCenter: second,
			onRight: identity)
	}

	public var tryBoth: (LeftType,RightType)? {
		return fold(
			onLeft: constant(nil),
			onCenter: identity,
			onRight: constant(nil))
	}
}

extension InclusiveType where LeftType == RightType {
	public var left: LeftType {
		return fold(onLeft: identity, onCenter: first, onRight: identity)
	}

	public var right: RightType {
		return fold(onLeft: identity, onCenter: second, onRight: identity)
	}

	public func merged(composing: @escaping (LeftType,LeftType) -> LeftType) -> LeftType {
		return fold(onLeft: identity, onCenter: composing, onRight: identity)
	}
}

extension InclusiveType where LeftType == RightType, LeftType: Semigroup {
	public func merged() -> LeftType {
		return merged(composing: <>)
	}
}

// MARK: - Functor

extension InclusiveType {
	public func bimap<T,U>(onLeft: @escaping (LeftType) -> T, onRight: @escaping (RightType) -> U) -> Inclusive<T,U> {
		return fold(
			onLeft: { Inclusive<T,U>.left(onLeft($0)) },
			onCenter: { Inclusive<T,U>.center(onLeft($0), onRight($1)) },
			onRight: { Inclusive<T,U>.right(onRight($0)) })
	}

	public func mapLeft<T>(_ transform: @escaping (LeftType) -> T) -> Inclusive<T,RightType> {
		return fold(
			onLeft: { Inclusive<T,RightType>.left(transform($0)) },
			onCenter: { Inclusive<T,RightType>.center(transform($0),$1) },
			onRight: { Inclusive<T,RightType>.right($0) })
	}

	public func mapRight<T>(_ transform: @escaping (RightType) -> T) -> Inclusive<LeftType,T> {
		return fold(
			onLeft: { Inclusive<LeftType,T>.left($0) },
			onCenter: { Inclusive<LeftType,T>.center($0,transform($1)) },
			onRight: { Inclusive<LeftType,T>.right(transform($0)) })
	}
}
