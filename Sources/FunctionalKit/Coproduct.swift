#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

public protocol CoproductType {
	associatedtype LeftType
	associatedtype RightType

	func fold<T>(onLeft: (LeftType) -> T, onRight: (RightType) -> T) -> T
}

// sourcery: testBifunctor
// sourcery: testConstruct = "random(x,y)"
public enum Coproduct<A,B>: CoproductType {
	case left(A)
	case right(B)

	public func fold<T>(onLeft: (A) -> T, onRight: (B) -> T) -> T {
		switch self {
		case .left(let a):
			return onLeft(a)
		case .right(let b):
			return onRight(b)
		}
	}
}

// MARK: - Equatable

extension Coproduct: Equatable where A: Equatable, B: Equatable {
	public static func == (lhs: Coproduct, rhs: Coproduct) -> Bool {
		switch (lhs, rhs) {
		case let (.left(lhsValue),.left(rhsValue)):
			return lhsValue == rhsValue
		case let (.right(lhsValue),.right(rhsValue)):
			return lhsValue == rhsValue
		default:
			return false
		}
	}
}

// MARK: Algebra

extension Coproduct: Semiring where A: Semiring, B: Semiring {
	public typealias Additive = A.Additive
	public typealias Multiplicative = B.Multiplicative

	public static func <>+ (left: Coproduct<A, B>, right: Coproduct<A, B>) -> Coproduct<A, B> {
		switch (left, right) {
		case let (.left(lhsValue), .left(rhsValue)):
			return .left(lhsValue <>+ rhsValue)
		case let (.left(_), .right(rhsValue)):
			return .right(rhsValue)
		case let (.right(lhsValue), .left(_)):
			return .right(lhsValue)
		case let (.right(lhsValue), .right(rhsValue)):
			return .right(lhsValue <>* rhsValue)
		}
	}

	public static func <>* (left: Coproduct<A, B>, right: Coproduct<A, B>) -> Coproduct<A, B> {
		switch (left, right) {
		case let (.left(lhsValue), .left(rhsValue)):
			return .left(lhsValue <>* rhsValue)
		case let (.left(lhsValue), .right(_)):
			return .left(lhsValue)
		case let (.right(_), .left(rhsValue)):
			return .left(rhsValue)
		case let (.right(lhsValue), .right(rhsValue)):
			return .right(lhsValue <>+ rhsValue)
		}
	}

	public static var zero: Coproduct<A, B> {
		return .left(.zero)
	}

	public static var one: Coproduct<A, B> {
		return .right(.one)
	}
}

// MARK: - Projections

extension CoproductType {
	public var toCoproduct: Coproduct<LeftType,RightType> {
		return fold(onLeft: Coproduct<LeftType,RightType>.left, onRight: Coproduct<LeftType,RightType>.right)
	}

	public var tryLeft: LeftType? {
		return fold(onLeft: f.identity, onRight: { _ in nil })
	}

	public var tryRight: RightType? {
		return fold(onLeft: { _ in nil }, onRight: f.identity)
	}

	public func foldToLeft(_ transform: (RightType) -> LeftType) -> LeftType {
		return fold(onLeft: f.identity, onRight: transform)
	}

	public func foldToRight(_ transform: (LeftType) -> RightType) -> RightType {
		return fold(onLeft: transform, onRight: f.identity)
	}
}

extension CoproductType where LeftType == RightType {
	public var merged: LeftType {
		return fold(onLeft: f.identity, onRight: f.identity)
	}
}

// MARK: - Functor

extension CoproductType {
	public func bimap<T,U>(_ onLeft: (LeftType) -> T, _ onRight: (RightType) -> U) -> Coproduct<T,U> {
		return fold(
			onLeft: { Coproduct<T,U>.left(onLeft($0)) },
			onRight: { Coproduct<T,U>.right(onRight($0)) })
	}

	public func mapLeft<T>(_ transform: (LeftType) -> T) -> Coproduct<T,RightType> {
		return bimap(transform, f.identity)
	}

	public func mapRight<U>(_ transform: (RightType) -> U) -> Coproduct<LeftType,U> {
		return bimap(f.identity, transform)
	}
}

// MARK: - Cross Interactions

extension CoproductType where LeftType: ProductType {
	public var insideOut: Product<Coproduct<LeftType.FirstType,RightType>,Coproduct<LeftType.SecondType,RightType>> {
		return fold(
			onLeft: { $0.bimap(Coproduct.left,Coproduct.left) },
			onRight: { rightValue in Product.init(Coproduct.right(rightValue), Coproduct.right(rightValue)) })
	}
}

extension CoproductType where RightType: ProductType {
	public var insideOut: Product<Coproduct<LeftType,RightType.FirstType>,Coproduct<LeftType,RightType.SecondType>> {
		return fold(
			onLeft: { leftValue in Product.init(Coproduct.left(leftValue), Coproduct.left(leftValue)) },
			onRight: { $0.bimap(Coproduct.right,Coproduct.right) })
	}
}
