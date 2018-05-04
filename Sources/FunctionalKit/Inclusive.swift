#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

public protocol InclusiveType {
	associatedtype LeftType
	associatedtype RightType

	func fold<T>(onLeft: @escaping (LeftType) -> T, onCenter: @escaping (LeftType,RightType) -> T, onRight: @escaping (RightType) -> T) -> T
}

// sourcery: testBifunctor
// sourcery: testConstruct = "random(x,y)"
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

extension Inclusive: Error where A: Error, B: Error {}

// MARK: - Equatable

extension Inclusive: Equatable where A: Equatable, B: Equatable {
	public static func == (lhs: Inclusive, rhs: Inclusive) -> Bool {
		switch (lhs, rhs) {
		case let (.left(lhsValue),.left(rhsValue)):
			return lhsValue == rhsValue
		case let (.center(lhsValue),.center(rhsValue)):
			return lhsValue == rhsValue
		case let (.right(lhsValue),.right(rhsValue)):
			return lhsValue == rhsValue
		default:
			return false
		}
	}
}

// MARK: - Projections

public extension InclusiveType {
	func tryToProduct() -> Product<LeftType,RightType>? {
		return fold(
			onLeft: f.pure(nil),
			onCenter: Product.init,
			onRight: f.pure(nil))
	}

	func tryToCoproduct() -> Coproduct<LeftType,RightType>? {
		return fold(
			onLeft: Coproduct.left,
			onCenter: f.pure(nil),
			onRight: Coproduct.right)
	}

	func tryLeft() -> LeftType? {
		return fold(
			onLeft: f.identity,
			onCenter: f.first,
			onRight: f.pure(nil))
	}

	func tryRight() -> RightType? {
		return fold(
			onLeft: f.pure(nil),
			onCenter: f.second,
			onRight: f.identity)
	}

	func tryBoth() -> (LeftType,RightType)? {
		return fold(
			onLeft: f.pure(nil),
			onCenter: f.identity,
			onRight: f.pure(nil))
	}
}

public extension InclusiveType where LeftType == RightType {
	var left: LeftType {
		return fold(onLeft: f.identity, onCenter: f.first, onRight: f.identity)
	}

	var right: RightType {
		return fold(onLeft: f.identity, onCenter: f.second, onRight: f.identity)
	}

	func merged(composing: @escaping (LeftType,LeftType) -> LeftType) -> LeftType {
		return fold(onLeft: f.identity, onCenter: composing, onRight: f.identity)
	}
}

public extension InclusiveType where LeftType == RightType, LeftType: Semigroup {
	func merged() -> LeftType {
		return merged(composing: <>)
	}
}

// MARK: - Algebra

extension Inclusive: Magma where A: Magma, B: Magma {
	public static func <> (left: Inclusive<A, B>, right: Inclusive<A, B>) -> Inclusive<A, B> {
		switch (left, right) {
		case let (.left(lhsValue),.left(rhsValue)):
			return .left(lhsValue <> rhsValue)
		case let (.left(lhsValue),.center(rhsValue)):
			return .center(lhsValue <> rhsValue.0, rhsValue.1)
		case let (.left(lhsValue),.right(rhsValue)):
			return .center(lhsValue, rhsValue)
		case let (.center(lhsValue),.left(rhsValue)):
			return .center(lhsValue.0 <> rhsValue, lhsValue.1)
		case let (.center(lhsValue),.center(rhsValue)):
			return .center(lhsValue.0 <> rhsValue.0, lhsValue.1 <> rhsValue.1)
		case let (.center(lhsValue),.right(rhsValue)):
			return .center(lhsValue.0, lhsValue.1 <> rhsValue)
		case let (.right(lhsValue),.left(rhsValue)):
			return .center(rhsValue, lhsValue)
		case let (.right(lhsValue),.center(rhsValue)):
			return .center(rhsValue.0, lhsValue <> rhsValue.1)
		case let (.right(lhsValue),.right(rhsValue)):
			return .right(lhsValue <> rhsValue)
		}
	}
}

/// Inclusive is a lovely semigroup. Unfortunately, it's not a Monoid.
extension Inclusive: Semigroup where A: Semigroup, B: Semigroup {}

// MARK: - Functor

public extension InclusiveType {
	func bimap<T,U>(_ onLeft: @escaping (LeftType) -> T, _ onRight: @escaping (RightType) -> U) -> Inclusive<T,U> {
		return fold(
			onLeft: { Inclusive<T,U>.left(onLeft($0)) },
			onCenter: { Inclusive<T,U>.center(onLeft($0), onRight($1)) },
			onRight: { Inclusive<T,U>.right(onRight($0)) })
	}

	func mapLeft<T>(_ transform: @escaping (LeftType) -> T) -> Inclusive<T,RightType> {
		return fold(
			onLeft: { Inclusive<T,RightType>.left(transform($0)) },
			onCenter: { Inclusive<T,RightType>.center(transform($0),$1) },
			onRight: { Inclusive<T,RightType>.right($0) })
	}

	func mapRight<T>(_ transform: @escaping (RightType) -> T) -> Inclusive<LeftType,T> {
		return fold(
			onLeft: { Inclusive<LeftType,T>.left($0) },
			onCenter: { Inclusive<LeftType,T>.center($0,transform($1)) },
			onRight: { Inclusive<LeftType,T>.right(transform($0)) })
	}
}
