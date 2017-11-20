public protocol TypeConstructor {
	associatedtype ParameterType
}

public protocol Reducible {
	associatedtype ElementType

	func reduce<Reduced>(_ initial: Reduced, _ nextPartial: (Reduced, ElementType) throws -> Reduced) rethrows -> Reduced
}
