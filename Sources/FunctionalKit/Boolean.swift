#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

public extension Bool {
	/// Method version of &&
	func and(_ other: @autoclosure () -> Bool) -> Bool {
		return self && other()
	}

	/// Method version of ||
	func or(_ other: @autoclosure () -> Bool) -> Bool {
		return self || other()
	}

	/// Computed property representing the negation (like the ! prefix, or "== false")
	var not: Bool {
		return self == false
	}

	/// Method version of =>
	func implies(_ other: @autoclosure () -> Bool) -> Bool {
		return self.not.or(other())
	}

	/// Logical implication
	///
	/// P => Q is equivalent to ¬PvQ
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
		return fold(onTrue: onRight(()), onFalse: onLeft(()))
	}

	public static func from(coproduct: Coproduct<(), ()>) -> Bool {
		switch coproduct {
		case .left:
			return false
		case .right:
			return true
		}
	}
}
