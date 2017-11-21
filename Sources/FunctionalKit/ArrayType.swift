import Abstract

// MARK: - Definiton

public protocol ArrayType: TypeConstructor {
	func run() -> [ParameterType]
	func fold<T>(_ starting: T, _ accumulate: @escaping (T,ParameterType) -> T) -> T
}

// MARK: - Data

extension Array: ArrayType {
	public typealias ParameterType = Element

	public func run() -> [Element] {
		return self
	}

	public func fold<T>(_ starting: T, _ accumulate: @escaping (T, Element) -> T) -> T {
		return reduce(starting, accumulate)
	}
}

// MARK: - Concrete

extension ArrayType {
	public typealias Concrete = Array<ParameterType>
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

	public static func zip <A1,A2> (_ first: A1, _ second: A2) -> Zipped<A1,A2> where A1: ArrayType, A2: ArrayType, ParameterType == (A1.ParameterType, A2.ParameterType) {
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
		return Array.zip(self, transform).map { value, function in function(value) }
	}
}

// MARK: - Traversable

extension ArrayType {
	public typealias Traversed<A> = [A.ParameterType] where A: TypeConstructor

	public func traverse<A>(_ transform: @escaping (ParameterType) -> A) -> [Traversed<A>] where A: ArrayType {
		typealias Returned = [Traversed<A>]

		return fold(Returned.pure([])) { previous, element in
			previous.apply § transform(element).map { value in { $0 + [value] } }
		}
	}

	public func traverse<O>(_ transform: @escaping (ParameterType) -> O) -> Optional<Traversed<O>> where O: OptionalType {
		typealias Returned = Optional<Traversed<O>>

		return fold(Returned.pure([])) { previous, element in
			previous.apply § transform(element).map { value in { $0 + [value] } }
		}
	}

	public func traverse<R>(_ transform: @escaping (ParameterType) -> R) -> Result<R.ErrorType,Traversed<R>> where R: ResultType {
		typealias Returned = Result<R.ErrorType,Traversed<R>>

		return fold(Returned.pure([])) { previous, element in
			previous.apply § transform(element).map { value in { $0 + [value] } }
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
