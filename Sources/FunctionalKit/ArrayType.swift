#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

// MARK: - Definiton

// sourcery: split1
// sourcery: functor
// sourcery: traversable
// sourcery: monad
// sourcery: concrete = "Array"
// sourcery: customMap = "fmap"
// sourcery: customFlatMap = "bind"
public protocol ArrayType: PureConstructible {
	static func from(concrete: Concrete<ParameterType>) -> Self
	var run: [ParameterType] { get }
	func fold<T>(_ starting: T, _ accumulate: (T,ParameterType) -> T) -> T
}

// MARK: - Data

// sourcery: testFunctor
// sourcery: testApplicative
// sourcery: testMonad
// sourcery: testConstruct = "init([x])"
// sourcery: customMap = "fmap"
// sourcery: customFlatMap = "bind"
extension Array: ArrayType {
	public typealias ParameterType = Element

	public static func from(concrete: Array<Element>) -> Array<Element> {
		return concrete
	}

	public var run: [Element] {
		return self
	}

	public func fold<T>(_ starting: T, _ accumulate: (T, Element) -> T) -> T {
		return reduce(starting, accumulate)
	}
}

// MARK: - Concrete

public extension ArrayType {
	typealias Concrete<T> = Array<T>
}

// MARK: - Functor

public extension ArrayType {
	func fmap<T>(_ transform: (ParameterType) -> T) -> [T] {
		return fold([T].init()) { previous, element in
			previous + [transform(element)]
		}
	}
    
    static func lift<A>(_ function: @escaping (ParameterType) -> A) -> (Self) -> [A] {
        return { $0.fmap(function) }
    }
    
    static func lift<A,Applicative2>(_ function: @escaping (ParameterType, Applicative2.ParameterType) -> A) -> (Self, Applicative2) -> [A] where Applicative2: ArrayType {
        return { (ap1, ap2) in
            Concrete.pure(f.curry(function)) <*> ap1 <*> ap2
        }
    }
    
    static func lift<A,Applicative2,Applicative3>(_ function: @escaping (ParameterType, Applicative2.ParameterType, Applicative3.ParameterType) -> A) -> (Self, Applicative2, Applicative3) -> [A] where Applicative2: ArrayType, Applicative3: ArrayType {
        return { ap1, ap2, ap3 in
            Concrete.pure(f.curry(function)) <*> ap1 <*> ap2 <*> ap3
        }
    }
}

// MARK: - Cartesian

public extension ArrayType {
	typealias Zipped<A1,A2> = [(A1.ParameterType,A2.ParameterType)] where A1: ArrayType, A2: ArrayType

	static func cartesian <A1,A2> (_ first: A1, _ second: A2) -> Zipped<A1,A2> where A1: ArrayType, A2: ArrayType, ParameterType == (A1.ParameterType, A2.ParameterType) {
		return first.fold(Zipped<A1,A2>.init()) { externalPrevious, firstElement in
			externalPrevious + second.fold(Zipped<A1,A2>.init()) { internalPrevious, secondElement in
				internalPrevious + [(firstElement,secondElement)]
			}
		}
	}
}

// MARK: - Applicative

public extension ArrayType {
	static func pure(_ value: ParameterType) -> [ParameterType] {
		return [value]
	}

	func apply <A,T> (_ transform: A) -> [T] where A: ArrayType, A.ParameterType == (ParameterType) -> T {
		return Array.cartesian(self, transform).fmap { value, function in function(value) }
	}

	static func <*> <A,T> (lhs: A, rhs: Self) -> [T] where A: ArrayType, A.ParameterType == (ParameterType) -> T {
		return Array.cartesian(lhs, rhs).fmap { function, value in function(value) }
	}
}

// MARK: - Traversable

public extension ArrayType {
	typealias Traversed<Applicative> = [Applicative.ParameterType] where Applicative: TypeConstructor

	func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> [Traversed<Applicative>] where Applicative: ArrayType {
		typealias Returned = [Traversed<Applicative>]

		return fold(Returned.pure([])) { previous, element in
			Applicative.Concrete.pure(f.curry(++)) <*> previous <*> transform(element)
		}
	}

	func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> Future<Traversed<Applicative>> where Applicative: FutureType {
		typealias Returned = Future<Traversed<Applicative>>

		return fold(Returned.pure([])) { previous, element in
			Applicative.Concrete.pure(f.curry(++)) <*> previous <*> transform(element)
		}
	}

	func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> Effect<Traversed<Applicative>> where Applicative: EffectType {
		typealias Returned = Effect<Traversed<Applicative>>

		return fold(Returned.pure([])) { previous, element in
			Applicative.Concrete.pure(f.curry(++)) <*> previous <*> transform(element)
		}
	}

	func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> Optional<Traversed<Applicative>> where Applicative: OptionalType {
		typealias Returned = Optional<Traversed<Applicative>>

		return fold(Returned.pure([])) { previous, element in
			Applicative.Concrete.pure(f.curry(++)) <*> previous <*> transform(element)
		}
	}

	func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> Reader<Applicative.EnvironmentType,Traversed<Applicative>> where Applicative: ReaderType {
		typealias Returned = Reader<Applicative.EnvironmentType,Traversed<Applicative>>

		return fold(Returned.pure([])) { previous, element in
			Applicative.Concrete.pure(f.curry(++)) <*> previous <*> transform(element)
		}
	}

	func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> Result<Applicative.ErrorType,Traversed<Applicative>> where Applicative: ResultType {
		typealias Returned = Result<Applicative.ErrorType,Traversed<Applicative>>

		return fold(Returned.pure([])) { previous, element in
			Applicative.Concrete.pure(f.curry(++)) <*> previous <*> transform(element)
		}
	}

    func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> State<Applicative.StateParameterType,Traversed<Applicative>> where Applicative: StateType {
        typealias Returned = State<Applicative.StateParameterType,Traversed<Applicative>>
        
        return fold(Returned.pure([])) { previous, element in
            Applicative.Concrete.pure(f.curry(++)) <*> previous <*> transform(element)
        }
    }

	func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> Writer<Applicative.LogType,Traversed<Applicative>> where Applicative: WriterType {
		typealias Returned = Writer<Applicative.LogType,Traversed<Applicative>>

		return fold(Returned.pure([])) { previous, element in
			Applicative.Concrete.pure(f.curry(++)) <*> previous <*> transform(element)
		}
	}
}

// MARK: - Monad

public extension ArrayType where ParameterType: ArrayType {
	func joined() -> [ParameterType.ParameterType] {
		let initial = [ParameterType.ParameterType].init()
		return fold(initial) { externalPrevious, externalElement in
			externalPrevious + externalElement.fold(initial) { internalPrevious, internalElement in
				internalPrevious + [internalElement]
			}
		}
	}
}

public extension ArrayType {
	func bind <A> (_ transform: (ParameterType) -> A) -> [A.ParameterType] where A: ArrayType {
		return fmap(transform).joined()
	}
}
