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

extension CoproductType where LeftType: Equatable, RightType: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		return lhs.fold(
			onLeft: { left in
				rhs.fold(
					onLeft: { left == $0 },
					onRight: fconstant(false))
		},
			onRight: { right in
				rhs.fold(
					onLeft: fconstant(false),
					onRight: { right == $0 })
		})
	}
}

// MARK: - Projections

extension CoproductType {
	public var toCoproduct: Coproduct<LeftType,RightType> {
		return fold(onLeft: Coproduct<LeftType,RightType>.left, onRight: Coproduct<LeftType,RightType>.right)
	}

	public var tryLeft: LeftType? {
		return fold(onLeft: fidentity, onRight: { _ in nil })
	}

	public var tryRight: RightType? {
		return fold(onLeft: { _ in nil }, onRight: fidentity)
	}

	public func foldToLeft(_ transform: (RightType) -> LeftType) -> LeftType {
		return fold(onLeft: fidentity, onRight: transform)
	}

	public func foldToRight(_ transform: (LeftType) -> RightType) -> RightType {
		return fold(onLeft: transform, onRight: fidentity)
	}
}

extension CoproductType where LeftType == RightType {
	public var merged: LeftType {
		return fold(onLeft: fidentity, onRight: fidentity)
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
		return bimap(transform, fidentity)
	}

	public func mapRight<U>(_ transform: (RightType) -> U) -> Coproduct<LeftType,U> {
		return bimap(fidentity, transform)
	}
}
