#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

extension Bool {
	public func and(_ other: @autoclosure () -> Bool) -> Bool {
		return self && other()
	}

	public func or(_ other: @autoclosure () -> Bool) -> Bool {
		return self || other()
	}

	public var not: Bool {
		return !self
	}

	public func implies(_ other: @autoclosure () -> Bool) -> Bool {
		return self.not.or(other())
	}
}


public func => (_ left: Bool, _ right: @autoclosure () -> Bool) -> Bool {
	return left.implies(right())
}

extension Bool {
	public func fold<A>(onTrue: @autoclosure () -> A, onFalse: @autoclosure () -> A) -> A {
		if self {
			return onTrue()
		} else {
			return onFalse()
		}
	}

	public func ifTrue(_ call: () -> ()) {
		fold(onTrue: call(), onFalse: ())
	}

	public func ifFalse(_ call: () -> ()) {
		fold(onTrue: (), onFalse: call())
	}
}

extension Bool: CoproductType {
	public func fold<T>(onLeft: (()) -> T, onRight: (()) -> T) -> T {
		return fold(onTrue: onLeft(()), onFalse: onLeft(()))
	}
}
