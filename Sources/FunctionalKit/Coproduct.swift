public protocol CoproductType {
	associatedtype LeftType
	associatedtype RightType

	func fold<T>(onLeft: @escaping (LeftType) -> T, onRight: @escaping (RightType) -> T) -> T
}

public enum Coproduct<A,B>: CoproductType {
	case left(A)
	case right(B)

	public func fold<T>(onLeft: @escaping (A) -> T, onRight: @escaping (B) -> T) -> T {
		switch self {
		case .left(let value):
			return onLeft(value)
		case .right(let value):
			return onRight(value)
		}
	}
}

extension Coproduct where A: Equatable, B: Equatable {
	public static func == (lhs: Coproduct, rhs: Coproduct) -> Bool {
		return lhs.fold(
			onLeft: { left in
				rhs.fold(
					onLeft: { left == $0 },
					onRight: { _ in false })
		},
			onRight: { right in
				rhs.fold(
					onLeft: { _ in false },
					onRight: { right == $0 })
		})
	}
}

extension CoproductType {
	public var toCoproduct: Coproduct<LeftType,RightType> {
		return fold(onLeft: Coproduct<LeftType,RightType>.left, onRight: Coproduct<LeftType,RightType>.right)
	}

	public var tryLeft: LeftType? {
		return fold(onLeft: identity, onRight: { _ in nil })
	}

	public var tryRight: RightType? {
		return fold(onLeft: { _ in nil }, onRight: identity)
	}

	public func foldToLeft(_ transform: @escaping (RightType) -> LeftType) -> LeftType {
		return fold(onLeft: identity, onRight: transform)
	}

	public func foldToRight(_ transform: @escaping (LeftType) -> RightType) -> RightType {
		return fold(onLeft: transform, onRight: identity)
	}

	public func bimap<T,U>(onLeft: @escaping (LeftType) -> T, onRight: @escaping (RightType) -> U) -> Coproduct<T,U> {
		return fold(
			onLeft: { Coproduct<T,U>.left(onLeft($0)) },
			onRight: { Coproduct<T,U>.right(onRight($0)) })
	}

	public func mapLeft<T>(_ transform: @escaping (LeftType) -> T) -> Coproduct<T,RightType> {
		return fold(
			onLeft: { Coproduct<T,RightType>.left(transform($0)) },
			onRight: { Coproduct<T,RightType>.right($0) })
	}

	public func mapRight<U>(_ transform: @escaping (RightType) -> U) -> Coproduct<LeftType,U> {
		return fold(
			onLeft: { Coproduct<LeftType,U>.left($0) },
			onRight: { Coproduct<LeftType,U>.right(transform($0)) })
	}
}
