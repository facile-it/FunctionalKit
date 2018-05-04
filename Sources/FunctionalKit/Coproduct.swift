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

extension Coproduct: Error where A: Error, B: Error {}

// MARK: - Equatable

extension CoproductType where LeftType: Equatable, RightType: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		return lhs.fold(
			onLeft: { value in
				rhs.fold(
					onLeft: { value == $0 },
					onRight: { _ in false })
		},
			onRight: { value in
				rhs.fold(
					onLeft: { _ in false },
					onRight: { value == $0 })
		})
	}
}

extension Coproduct: Equatable where A: Equatable, B: Equatable {}

// MARK: Algebra

/// A Coproduct of semirings forms a Semiring where the "+" operation is biased towards the right case,
/// while the "*" operation is biased towards the left case.
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

public extension CoproductType {
	func toCoproduct() -> Coproduct<LeftType,RightType> {
		return fold(onLeft: Coproduct<LeftType,RightType>.left, onRight: Coproduct<LeftType,RightType>.right)
	}

	func tryLeft() ->  LeftType? {
		return fold(onLeft: f.identity, onRight: { _ in nil })
	}

	func tryRight() ->  RightType? {
		return fold(onLeft: { _ in nil }, onRight: f.identity)
	}

	func foldToLeft(_ transform: (RightType) -> LeftType) -> LeftType {
		return fold(onLeft: f.identity, onRight: transform)
	}

	func foldToRight(_ transform: (LeftType) -> RightType) -> RightType {
		return fold(onLeft: transform, onRight: f.identity)
	}
}

public extension CoproductType where LeftType == RightType {
	func merged() -> LeftType {
		return fold(onLeft: f.identity, onRight: f.identity)
	}
}

// MARK: - Functor

public extension CoproductType {
	func bimap<T,U>(_ onLeft: (LeftType) -> T, _ onRight: (RightType) -> U) -> Coproduct<T,U> {
		return fold(
			onLeft: { Coproduct<T,U>.left(onLeft($0)) },
			onRight: { Coproduct<T,U>.right(onRight($0)) })
	}

	func mapLeft<T>(_ transform: (LeftType) -> T) -> Coproduct<T,RightType> {
		return bimap(transform, f.identity)
	}

	func mapRight<U>(_ transform: (RightType) -> U) -> Coproduct<LeftType,U> {
		return bimap(f.identity, transform)
	}
}

// MARK: - Cross-Interactions

public extension CoproductType where LeftType: ProductType {
	func insideOut() -> Product<Coproduct<LeftType.FirstType,RightType>,Coproduct<LeftType.SecondType,RightType>> {
		return fold(
			onLeft: { $0.bimap(Coproduct.left,Coproduct.left) },
			onRight: { rightValue in Product.init(Coproduct.right(rightValue), Coproduct.right(rightValue)) })
	}
}

public extension CoproductType where RightType: ProductType {
	func insideOut() -> Product<Coproduct<LeftType,RightType.FirstType>,Coproduct<LeftType,RightType.SecondType>> {
		return fold(
			onLeft: { leftValue in Product.init(Coproduct.left(leftValue), Coproduct.left(leftValue)) },
			onRight: { $0.bimap(Coproduct.right,Coproduct.right) })
	}
}
