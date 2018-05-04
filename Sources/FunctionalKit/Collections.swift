import Foundation
#if SWIFT_PACKAGE
	import Operadics
#endif
import Abstract

// MARK: - Decomposition

extension Sequence where SubSequence: Sequence, SubSequence.Iterator.Element == Iterator.Element {
	public var head: Iterator.Element? {
		return first { _ in true }
	}

	public var tail: SubSequence? {
		guard head != nil else { return nil }
		return dropFirst()
	}

	public func decomposed() -> (Iterator.Element,SubSequence)? {
		return Optional.zip(head, tail)
	}

	public func folded(combine: (Iterator.Element, Iterator.Element) throws -> Iterator.Element) rethrows -> Iterator.Element? {
		guard let nonOptHead = head, let nonOptTail = tail else { return head }
		return try nonOptTail.reduce(nonOptHead, combine)
	}
}

public extension RandomAccessCollection {
	func destructured2(_ dropIfNeeded: Bool = false) -> (Element, Element)? {
		let checkCount = dropIfNeeded ? { $0 >= 2 } : { $0 == 2 }

		guard checkCount(count) else { return nil }

		return (
			self[startIndex],
			self[index(after: startIndex)]
		)
	}

	func destructured3(_ dropIfNeeded: Bool = false) -> (Element, Element, Element)? {
		let checkCount = dropIfNeeded ? { $0 >= 3 } : { $0 == 3 }

		guard checkCount(count) else { return nil }

		return (
			self[startIndex],
			self[index(after: startIndex)],
			self[index(after: index(after: startIndex))]
		)
	}
}

public extension RandomAccessCollection where Element: Equatable {
	func divideIn2(atIndex index: Index) -> ([Element],[Element]) {
		return Optional.pure(self)
			.filter { $0.indices.contains(index) }
			.map { (items: $0, object: $0[index]) }
			.flatMap { tuple in
				tuple.items.split(
					separator: tuple.object,
					maxSplits: 2,
					omittingEmptySubsequences: false)
					.destructured2()
					.map { (Array($0), [tuple.object] + Array($1)) }
			}
			.get(or: (Array(self),[]))
	}
}

// MARK: - Query

extension Sequence {
	public func all(conformTo predicate: @escaping (Element) -> Bool) -> Bool {
		return map(predicate >>> And.init(_:)).concatenated().unwrap
	}

	public func any(conformsTo predicate: @escaping (Element) -> Bool) -> Bool {
		return map(predicate >>> Or.init(_:)).concatenated().unwrap
	}
}

extension Sequence where Iterator.Element == Bool {
	public var isAllTrue: Bool {
		return all(conformTo: f.identity)
	}

	public var isAnyTrue: Bool {
		return any(conformsTo: f.identity)
	}
}

extension RandomAccessCollection {
	public func getSafely(at index: Index) -> Iterator.Element? {
		guard indices.contains(index) else { return nil }
		return self[index]
	}
}

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

public struct NonEmptyArray<Element> {
	let firstElement: Element
	let unwrap: [Element]

	init(_ value: Element) {
		self.firstElement = value
		self.unwrap = [value]
	}

	init?(_ value: [Element]) {
		guard let first = value.first else { return nil }
		self.firstElement = first
		self.unwrap = value
	}
}

extension NonEmptyArray where Element: Equatable {
	public static func == (left: NonEmptyArray, right: NonEmptyArray) -> Bool {
		return left.unwrap == right.unwrap
	}
}

extension NonEmptyArray: Collection {
	public var startIndex: Int {
		return unwrap.startIndex
	}

	public var endIndex: Int {
		return unwrap.endIndex
	}

	public func index(after i: Int) -> Int {
		return unwrap.index(after: i)
	}

	public subscript(position: Int) -> Element {
		return unwrap[position]
	}
}
