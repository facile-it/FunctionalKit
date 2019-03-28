//import Foundation
//#if SWIFT_PACKAGE
//    import Operadics
//#endif
//import Abstract
//
//// MARK: - Decomposition
//
//public extension Sequence where SubSequence: Sequence, SubSequence.Iterator.Element == Iterator.Element {
//    var head: Iterator.Element? {
//        return first { _ in true }
//    }
//
//    var tail: SubSequence? {
//        guard head != nil else { return nil }
//        return dropFirst()
//    }
//
//    func decomposed() -> (Iterator.Element,SubSequence)? {
//        return Optional.zip(head, tail)
//    }
//
//    func folded(combine: (Iterator.Element, Iterator.Element) throws -> Iterator.Element) rethrows -> Iterator.Element? {
//        guard let nonOptHead = head, let nonOptTail = tail else { return head }
//        return try nonOptTail.reduce(nonOptHead, combine)
//    }
//}
//
//public extension RandomAccessCollection {
//    func destructured2(_ dropIfNeeded: Bool = false) -> (Element, Element)? {
//        let checkCount = dropIfNeeded ? { $0 >= 2 } : { $0 == 2 }
//
//        guard checkCount(count) else { return nil }
//
//        return (
//            self[startIndex],
//            self[index(after: startIndex)]
//        )
//    }
//
//    func destructured3(_ dropIfNeeded: Bool = false) -> (Element, Element, Element)? {
//        let checkCount = dropIfNeeded ? { $0 >= 3 } : { $0 == 3 }
//
//        guard checkCount(count) else { return nil }
//
//        return (
//            self[startIndex],
//            self[index(after: startIndex)],
//            self[index(after: index(after: startIndex))]
//        )
//    }
//}
//
//public extension RandomAccessCollection where Element: Equatable {
//    func divideIn2(atIndex index: Index) -> ([Element],[Element]) {
//        return Optional.pure(self)
//            .filter { $0.indices.contains(index) }
//            .map { (items: $0, object: $0[index]) }
//            .flatMap { tuple in
//                tuple.items.split(
//                    separator: tuple.object,
//                    maxSplits: 2,
//                    omittingEmptySubsequences: false)
//                    .destructured2()
//                    .map { (Array($0), [tuple.object] + Array($1)) }
//            }
//            .get(or: (Array(self),[]))
//    }
//}
//
//// MARK: - Query
//
//public extension Sequence {
//    func all(conformTo predicate: @escaping (Element) -> Bool) -> Bool {
//        return map(predicate >>> And.init(_:)).concatenated().unwrap
//    }
//
//    func any(conformsTo predicate: @escaping (Element) -> Bool) -> Bool {
//        return map(predicate >>> Or.init(_:)).concatenated().unwrap
//    }
//}
//
//public extension Sequence where Iterator.Element == Bool {
//    var isAllTrue: Bool {
//        return all(conformTo: f.identity)
//    }
//
//    var isAnyTrue: Bool {
//        return any(conformsTo: f.identity)
//    }
//}
//
//public extension Sequence where Iterator.Element: CoproductType {
//    func partition() -> Product<[Iterator.Element.LeftType], [Iterator.Element.RightType]> {
//
//        let initial = Product<[Iterator.Element.LeftType], [Iterator.Element.RightType]>.init([], [])
//
//        return self.reduce(initial) { reducer, coproduct in
//            return coproduct.fold(
//                onLeft: { left in reducer.mapFirst { $0.appending(left) }},
//                onRight: { right in reducer.mapSecond { $0.appending(right) }})
//        }
//    }
//}
//
//public extension RandomAccessCollection {
//    func getSafely(at index: Index) -> Iterator.Element? {
//        guard indices.contains(index) else { return nil }
//        return self[index]
//    }
//}
//
// MARK: - Construction

public extension RangeReplaceableCollection {
    func appending(_ newElement: Element) -> Self {
        var m = self
        m.append(newElement)
        return m
    }

    static func ++ (lhs: Self, rhs: Element) -> Self {
        return lhs.appending(rhs)
    }
}
