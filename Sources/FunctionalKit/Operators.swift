//#if SWIFT_PACKAGE
//    import Operadics
//#endif
//import Abstract
//
//// MARK: - Precedence Groups
//
//precedencegroup LogicalImplicationPrecedence {
//    associativity: right
//    higherThan: TernaryPrecedence
//    lowerThan: LogicalDisjunctionPrecedence
//}
//
//// MARK: Operators
//
///// This is the logical implication operator, and goes together with
///// "&&", "||" and "!" to complete the main logic connectors.
///// An implication is true if both the lhs and rhs are true, or if
///// the lhs is false, so it's equivalent to "!lhs || rhs".
//infix operator => : LogicalImplicationPrecedence
//
///// This operator simply adds a value to and array,
///// so it's equivalent to "lhs + [rhs]".
//infix operator ++ : AdditionPrecedence
//
///// This is the "inject" operator: it takes a function in the form
///// "(A) -> (B) -> C" and passes the "B" value in, to produce "(A) -> C"
//infix operator >< : RightApplyPrecedence
