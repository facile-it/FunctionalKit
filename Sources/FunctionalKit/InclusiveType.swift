//#if SWIFT_PACKAGE
//    import Operadics
//#endif
//import Abstract
//
//public protocol InclusiveType {
//    associatedtype LeftType
//    associatedtype RightType
//
//    func fold<T>(onLeft: @escaping (LeftType) -> T, onCenter: @escaping (LeftType,RightType) -> T, onRight: @escaping (RightType) -> T) -> T
//    static func from(inclusive: Inclusive<LeftType,RightType>) -> Self
//}
//
//// sourcery: testBifunctor
//// sourcery: testConstruct = "random(x,y)"
//extension Inclusive: InclusiveType {
//    public typealias LeftType = A
//    public typealias RightType = B
//
//    public static func from(inclusive: Inclusive<A, B>) -> Inclusive<A, B> {
//        return inclusive
//    }
//}
//
//extension Inclusive: Error where A: Error, B: Error {}
//
//// MARK: - Equatable
//
//extension InclusiveType where LeftType: Equatable, RightType: Equatable {
//    public static func == (lhs: Self, rhs: Self) -> Bool {
//        return lhs.toInclusive() == rhs.toInclusive()
//    }
//}
//
//// MARK: - Projections
//
//public extension InclusiveType {
//    func toInclusive() -> Inclusive<LeftType,RightType> {
//        return fold(
//            onLeft: Inclusive.left,
//            onCenter: Inclusive.center,
//            onRight: Inclusive.right)
//    }
//
//    func tryToProduct() -> Product<LeftType,RightType>? {
//        return fold(
//            onLeft: f.pure(nil),
//            onCenter: Product.init,
//            onRight: f.pure(nil))
//    }
//
//    func tryToCoproduct() -> Coproduct<LeftType,RightType>? {
//        return fold(
//            onLeft: Coproduct.left,
//            onCenter: f.pure2(nil),
//            onRight: Coproduct.right)
//    }
//
//    func tryLeft() -> LeftType? {
//        return fold(
//            onLeft: f.identity,
//            onCenter: f.first,
//            onRight: f.pure(nil))
//    }
//
//    func tryRight() -> RightType? {
//        return fold(
//            onLeft: f.pure(nil),
//            onCenter: f.second,
//            onRight: f.identity)
//    }
//
//    func tryBoth() -> (LeftType,RightType)? {
//        return fold(
//            onLeft: f.pure(nil),
//            onCenter: f.identity,
//            onRight: f.pure(nil))
//    }
//}
//
//public extension InclusiveType where LeftType == RightType {
//    var left: LeftType {
//        return fold(onLeft: f.identity, onCenter: f.first, onRight: f.identity)
//    }
//
//    var right: RightType {
//        return fold(onLeft: f.identity, onCenter: f.second, onRight: f.identity)
//    }
//
//    func merged(composing: @escaping (LeftType,LeftType) -> LeftType) -> LeftType {
//        return fold(onLeft: f.identity, onCenter: composing, onRight: f.identity)
//    }
//}
//
//public extension InclusiveType where LeftType == RightType, LeftType: Semigroup {
//    func merged() -> LeftType {
//        return merged(composing: <>)
//    }
//}
//
//// MARK: - Functor
//
//public extension InclusiveType {
//    func bimap<T,U>(_ onLeft: @escaping (LeftType) -> T, _ onRight: @escaping (RightType) -> U) -> Inclusive<T,U> {
//        return fold(
//            onLeft: { Inclusive<T,U>.left(onLeft($0)) },
//            onCenter: { Inclusive<T,U>.center(onLeft($0), onRight($1)) },
//            onRight: { Inclusive<T,U>.right(onRight($0)) })
//    }
//
//    func mapLeft<T>(_ transform: @escaping (LeftType) -> T) -> Inclusive<T,RightType> {
//        return fold(
//            onLeft: { Inclusive<T,RightType>.left(transform($0)) },
//            onCenter: { Inclusive<T,RightType>.center(transform($0),$1) },
//            onRight: { Inclusive<T,RightType>.right($0) })
//    }
//
//    func mapRight<T>(_ transform: @escaping (RightType) -> T) -> Inclusive<LeftType,T> {
//        return fold(
//            onLeft: { Inclusive<LeftType,T>.left($0) },
//            onCenter: { Inclusive<LeftType,T>.center($0,transform($1)) },
//            onRight: { Inclusive<LeftType,T>.right(transform($0)) })
//    }
//}
//
//// MARK: - Algebra
//
///// Default definitions for inclusive types
//
//public extension InclusiveType where LeftType: Magma, RightType: Magma {
//    static func <> (lhs: Self, rhs: Self) -> Self {
//        return Self.from(inclusive: lhs.toInclusive() <> rhs.toInclusive())
//    }
//}
