import Foundation
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

	public var decomposed: (Iterator.Element,SubSequence)? {
		return Optional.zip(head, tail)
	}

	public func folded(combine: (Iterator.Element, Iterator.Element) throws -> Iterator.Element) rethrows -> Iterator.Element? {
		guard let nonOptHead = head, let nonOptTail = tail else { return head }
		return try nonOptTail.reduce(nonOptHead, combine)
	}
}

// MARK: - Query

extension Sequence {
	public func all(conformTo predicate: @escaping (Element) -> Bool) -> Bool {
		return map(predicate >>> And.init(_:)).concatenated.unwrap
	}

	public func any(conformsTo predicate: @escaping (Element) -> Bool) -> Bool {
		return map(predicate >>> Or.init(_:)).concatenated.unwrap
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

extension Collection {
	public func getSafely(at index: Index) -> Iterator.Element? {
		guard indices.contains(index) else { return nil }
		return self[index]
	}
}

// MARK: - Construction

extension RangeReplaceableCollection {
	public func appending(_ newElement: Element) -> Self {
		var m = self
		m.append(newElement)
		return m
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
