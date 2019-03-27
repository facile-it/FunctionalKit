//#if SWIFT_PACKAGE
//    import Operadics
//#endif
//import Abstract
//
//public struct Coeffect<Parameter> {
//    private let _call: (Parameter) -> ()
//    public init (_ call: @escaping (Parameter) -> ()) {
//        self._call = call
//    }
//
//    public func run(_ environment: Parameter) {
//        _call(environment)
//    }
//}
//
//extension Coeffect: TypeConstructor {
//    public typealias ParameterType = Parameter
//}
//
//extension Coeffect: FunctionType {
//    public typealias SourceType = Parameter
//    public typealias TargetType = ()
//
//    public func call(_ source: Parameter) -> () {
//        run(source)
//    }
//
//    public static func from(function: Function<Parameter, ()>) -> Coeffect<Parameter> {
//        return Coeffect.init(function.call)
//    }
//}
//
//public extension Coeffect {
//    func contramap <A> (_ transform: @escaping (A) -> ParameterType) -> Coeffect<A> {
//        return Coeffect<A>.init { self.run(transform($0)) }
//    }
//
//    static func lift <A> (_ function: @escaping (A) -> ParameterType) -> (Coeffect) -> Coeffect<A> {
//        return { $0.contramap(function) }
//    }
//}
//
//public extension Coeffect {
//    static func zip <A,B> (_ first: Coeffect<A>, _ second: Coeffect<B>) -> Coeffect<(A,B)> where ParameterType == (A,B) {
//        return Coeffect<(A,B)>.init {
//            first.run($0.0)
//            second.run($0.1)
//        }
//    }
//}
//
//// MARK: - Algebra
//
//extension Coeffect: Magma {
//    public static func <> (lhs: Coeffect, rhs: Coeffect) -> Coeffect {
//        return Coeffect.init { p in
//            lhs.run(p)
//            rhs.run(p)
//        }
//    }
//}
//
///// This is a strong assumption: we need associativity for side effects,
///// otherwise there's no possibility of reasoning about them locally.
//extension Coeffect: Semigroup {}
//
//extension Coeffect: Monoid {
//    public static var empty: Coeffect {
//        return Coeffect.init { _ in }
//    }
//}
//
///// We cannot empower Coeffect with algebraic definitions any further:
///// being side-effects those that are performed, guaranteeing commutativity
///// or (even worse) idempotence would be too strong of an assumption.
