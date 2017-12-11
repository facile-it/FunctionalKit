#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

precedencegroup SequentialCompositionPrecedence {
	associativity: left
	higherThan: CompositionPrecedence
}

infix operator .. : SequentialCompositionPrecedence

precedencegroup LogicalImplicationPrecedence {
	associativity: left
	higherThan: TernaryPrecedence
	lowerThan: LogicalDisjunctionPrecedence
}

prefix operator ..

postfix operator ..

infix operator => : LogicalImplicationPrecedence

infix operator ++: AdditionPrecedence
