//#if SWIFT_PACKAGE
//    import Operadics
//#endif
//import Abstract
//
//public protocol FunctionType {
//    associatedtype SourceType
//    associatedtype TargetType
//
//    func call(_ source: SourceType) -> TargetType
//    static func from(function: Function<SourceType,TargetType>) -> Self
//}
//
//extension Function: FunctionType {
//    public static func from(function: Function<A, B>) -> Function<A, B> {
//        return function
//    }
//}
//
//// MARK: - Functor
//
//public extension FunctionType {
//    func dimap<A,B>(_ source: @escaping (A) -> SourceType, _ target: @escaping (TargetType) -> B) -> Function<A,B> {
//        return Function<A,B>.init { value in target(self.call(source(value))) }
//    }
//
//    func map<T>(_ transform: @escaping (TargetType) -> T) -> Function<SourceType,T> {
//        return dimap(f.identity, transform)
//    }
//
//    func contramap<T>(_ transform: @escaping (T) -> SourceType) -> Function<T,TargetType> {
//        return dimap(transform, f.identity)
//    }
//
//    func carryOver() -> Function<SourceType, Product<SourceType, TargetType>> {
//        return Function<SourceType, Product<SourceType, TargetType>>.init { source in
//            Product.init(source, self.call(source))
//        }
//    }
//
//    func toFunction() -> Function<SourceType,TargetType> {
//        return dimap(f.identity, f.identity)
//    }
//}
//
////MARK: - Equatable
//
//public extension FunctionType where TargetType: Equatable {
//    static func == (lhs: Self, rhs: Self) -> (SourceType) -> Bool {
//       return lhs.toFunction() == rhs.toFunction()
//    }
//}
//
////MARK: - PredicateSet
//
//public extension FunctionType where TargetType == Bool {
//    static var universe: Function<SourceType,Bool> {
//        return Function<SourceType,Bool> { _ in true }
//    }
//
//    static var empty: Function<SourceType,Bool> {
//        return Function<SourceType,Bool> { _ in false }
//    }
//
//    func contains(_ value: SourceType) -> Bool {
//        return call(value)
//    }
//
//    func inverted() -> Function<SourceType,Bool> {
//        return Function<SourceType,Bool> {
//            self.contains($0).not
//        }
//    }
//
//    func union (_ other: Function<SourceType,Bool>) -> Function<SourceType,Bool> {
//        return Function<SourceType,Bool> {
//            self.contains($0) || other.contains($0)
//        }
//    }
//
//    func intersection (_ other: Function<SourceType,Bool>) -> Function<SourceType,Bool> {
//        return Function<SourceType,Bool> {
//            self.contains($0) && other.contains($0)
//        }
//    }
//
//    func subtraction (_ other: Function<SourceType,Bool>) -> Function<SourceType,Bool> {
//        return Function<SourceType,Bool> {
//            self.contains($0) && other.contains($0).not
//        }
//    }
//
//    func exclusiveDisjunction (_ other: Function<SourceType,Bool>) -> Function<SourceType,Bool> {
//        let unionSet = self.union(other)
//        let intersectionSet = self.intersection(other)
//
//        return unionSet.subtraction(intersectionSet)
//    }
//}
//
////MARK: - Utility
//
//public extension FunctionType where SourceType == TargetType {
//    static var identity: Function<SourceType,TargetType> {
//        return Function.init { $0 }
//    }
//}
