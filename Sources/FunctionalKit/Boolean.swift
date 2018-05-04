#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

public extension Bool {
	func and(_ other: @autoclosure () -> Bool) -> Bool {
		return self && other()
	}

	func or(_ other: @autoclosure () -> Bool) -> Bool {
		return self || other()
	}

	var not: Bool {
		return self == false
	}

	func implies(_ other: @autoclosure () -> Bool) -> Bool {
		return self.not.or(other())
	}

	static func => (_ left: Bool, _ right: @autoclosure () -> Bool) -> Bool {
		return left.implies(right())
	}

	func fold<A>(onTrue: @autoclosure () -> A, onFalse: @autoclosure () -> A) -> A {
		if self {
			return onTrue()
		} else {
			return onFalse()
		}
	}

	func ifTrue(_ call: () -> ()) {
		fold(onTrue: call(), onFalse: ())
	}

	func ifFalse(_ call: () -> ()) {
		fold(onTrue: (), onFalse: call())
	}
}

extension Bool: CoproductType {
	public func fold<T>(onLeft: (()) -> T, onRight: (()) -> T) -> T {
		return fold(onTrue: onLeft(()), onFalse: onLeft(()))
	}
}
