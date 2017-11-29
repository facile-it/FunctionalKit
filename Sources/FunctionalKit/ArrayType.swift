import Operadics

// MARK: - Definiton

public protocol ArrayType: TypeConstructor {
	static func from(concrete: Concrete<ParameterType>) -> Self
	var run: [ParameterType] { get }
	func fold<T>(_ starting: T, _ accumulate: @escaping (T,ParameterType) -> T) -> T
}

// MARK: - Data

// sourcery: functor, simpleMap, swiftCheckTypeOf
extension Array: ArrayType {
	public typealias ParameterType = Element

	public static func from(concrete: Array<Element>) -> Array<Element> {
		return concrete
	}

	public var run: [Element] {
		return self
	}

	public func fold<T>(_ starting: T, _ accumulate: @escaping (T, Element) -> T) -> T {
		return reduce(starting, accumulate)
	}
}

// MARK: - Concrete

extension ArrayType {
	public typealias Concrete<T> = Array<T>
}

// MARK: - Functor

extension ArrayType {
	public func map<T>(_ transform: @escaping (ParameterType) -> T) -> [T] {
		return fold([T].init()) { previous, element in
			previous + [transform(element)]
		}
	}
}

// MARK: - Cartesian

extension ArrayType {
	public typealias Zipped<A1,A2> = [(A1.ParameterType,A2.ParameterType)] where A1: ArrayType, A2: ArrayType

	public static func cartesian <A1,A2> (_ first: A1, _ second: A2) -> Zipped<A1,A2> where A1: ArrayType, A2: ArrayType, ParameterType == (A1.ParameterType, A2.ParameterType) {
		return first.fold(Zipped<A1,A2>.init()) { externalPrevious, firstElement in
			externalPrevious + second.fold(Zipped<A1,A2>.init()) { internalPrevious, secondElement in
				internalPrevious + [(firstElement,secondElement)]
			}
		}
	}
}

// MARK: - Applicative

extension ArrayType {
	public static func pure(_ value: ParameterType) -> [ParameterType] {
		return [value]
	}

	public func apply <A,T> (_ transform: A) -> [T] where A: ArrayType, A.ParameterType == (ParameterType) -> T {
		return Array.cartesian(self, transform).map { value, function in function(value) }
	}

	public static func <*> <A,T> (lhs: A, rhs: Self) -> [T] where A: ArrayType, A.ParameterType == (ParameterType) -> T {
		return Array.cartesian(lhs, rhs).map { function, value in function(value) }
	}
}

// MARK: - Traversable

extension ArrayType {
	public typealias Traversed<Applicative> = [Applicative.ParameterType] where Applicative: TypeConstructor

	public func traverse<Applicative>(_ transform: @escaping (ParameterType) -> Applicative) -> [Traversed<Applicative>] where Applicative: ArrayType {
		typealias Returned = [Traversed<Applicative>]

		return fold(Returned.pure([])) { previous, element in
			Applicative.Concrete.pure(fcurry(++)) <*> previous <*> transform(element)
		}
	}

	public func traverse<Applicative>(_ transform: @escaping (ParameterType) -> Applicative) -> Future<Traversed<Applicative>> where Applicative: FutureType {
		typealias Returned = Future<Traversed<Applicative>>

		return fold(Returned.pure([])) { previous, element in
			Applicative.Concrete.pure(fcurry(++)) <*> previous <*> transform(element)
		}
	}

	public func traverse<Applicative>(_ transform: @escaping (ParameterType) -> Applicative) -> Optional<Traversed<Applicative>> where Applicative: OptionalType {
		typealias Returned = Optional<Traversed<Applicative>>

		return fold(Returned.pure([])) { previous, element in
			Applicative.Concrete.pure(fcurry(++)) <*> previous <*> transform(element)
		}
	}

	public func traverse<Applicative>(_ transform: @escaping (ParameterType) -> Applicative) -> Reader<Applicative.EnvironmentType,Traversed<Applicative>> where Applicative: ReaderType {
		typealias Returned = Reader<Applicative.EnvironmentType,Traversed<Applicative>>

		return fold(Returned.pure([])) { previous, element in
			Applicative.Concrete.pure(fcurry(++)) <*> previous <*> transform(element)
		}
	}

	public func traverse<Applicative>(_ transform: @escaping (ParameterType) -> Applicative) -> Result<Applicative.ErrorType,Traversed<Applicative>> where Applicative: ResultType {
		typealias Returned = Result<Applicative.ErrorType,Traversed<Applicative>>

		return fold(Returned.pure([])) { previous, element in
			Applicative.Concrete.pure(fcurry(++)) <*> previous <*> transform(element)
		}
	}

	public func traverse<Applicative>(_ transform: @escaping (ParameterType) -> Applicative) -> Writer<Applicative.LogType,Traversed<Applicative>> where Applicative: WriterType {
		typealias Returned = Writer<Applicative.LogType,Traversed<Applicative>>

		return fold(Returned.pure([])) { previous, element in
			Applicative.Concrete.pure(fcurry(++)) <*> previous <*> transform(element)
		}
	}
}

// MARK: - Monad

extension ArrayType where ParameterType: ArrayType {
	public var joined: [ParameterType.ParameterType] {
		let initial = [ParameterType.ParameterType].init()
		return fold(initial) { externalPrevious, externalElement in
			externalPrevious + externalElement.fold(initial) { internalPrevious, internalElement in
				internalPrevious + [internalElement]
			}
		}
	}
}

extension ArrayType {
	public func flatMap <A> (_ transform: @escaping (ParameterType) -> A) -> [A.ParameterType] where A: ArrayType {
		return map(transform).joined
	}
}

// MARK: - Utility

extension ArrayType {
	public static func ++ (lhs: Self, rhs: ParameterType) -> Array<ParameterType> {
		var m = lhs.run
		m.append(rhs)
		return m
	}
}
