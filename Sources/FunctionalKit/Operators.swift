#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

// MARK: - Precedence Groups

precedencegroup SequentialCompositionPrecedence {
	associativity: left
	higherThan: CompositionPrecedence
}

precedencegroup LogicalImplicationPrecedence {
	associativity: right
	higherThan: TernaryPrecedence
	lowerThan: LogicalDisjunctionPrecedence
}

// MARK: Operators

/// This operator allows composition of functions in a left-handed way, that is:
/// (A) -> B .. (B) -> C = (A) -> C
/// The best way to "read" this operator is with the expression "and then",
/// for example "f .. g" can be read like "f and then g".
infix operator .. : SequentialCompositionPrecedence

/// This is the logical implication operator, and goes together with
/// "&&", "||" and "!" to complete the main logic connectors.
/// An implication is true if both the lhs and rhs are true, or if
/// the lhs is false, so it's equivalent to "!lhs || rhs".
infix operator => : LogicalImplicationPrecedence

/// This operator simply adds a value to and array,
/// so it's equivalent to "lhs + [rhs]".
infix operator ++: AdditionPrecedence

/// This is the "inject" operator: it takes a function in the form
/// "(A) -> (B) -> C" and passes the "B" value in, to produce "(A) -> C"
infix operator ><: RightApplyPrecedence
