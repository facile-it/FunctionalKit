#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

// sourcery: functor
// sourcery: customMap = "fmap"
// sourcery: monad
// sourcery: traversable
// sourcery: alternativeJoined = "flatMap(f.identity)"
// sourcery: testFunctor
// sourcery: testApplicative
// sourcery: testMonad
// sourcery: testConstruct = "init([x])"
extension Array: TypeConstructor {
	public typealias ParameterType = Element
}

public extension Array {
	typealias Generic<T> = Array<T>
}

public extension Array {
	static func lift<A>(_ function: @escaping (ParameterType) -> A) -> (Array) -> Array<A> {
		return { $0.map(function) }
	}
}

extension Array: PureConstructible {
	public static func pure(_ value: Element) -> Array<Element> {
		return [value]
	}
}

public extension Array {
	static func cartesian <A1,A2> (_ first: Array<A1>, _ second: Array<A2>) -> Array<(A1,A2)> where ParameterType == (A1,A2) {
		return first.reduce(Array<(A1,A2)>.init()) { externalPrevious, firstElement in
			externalPrevious + second.reduce(Array<(A1,A2)>.init()) { internalPrevious, secondElement in
				internalPrevious + [(firstElement,secondElement)]
			}
		}
	}
}

public extension Array {
	func fmap <A> (_ transform: (ParameterType) -> A) -> Array<A> {
		return map(transform)
	}

	func apply <A> (_ transform: Array<(ParameterType) -> A>) -> Array<A> {
		return Generic.cartesian(self, transform).map { value, function in function(value) }
	}

	static func <*> <A> (lhs: Array<(ParameterType) -> A>, rhs: Array) -> Array<A> {
		return rhs.apply(lhs)
	}

	static func lift <A,T1> (_ function: @escaping (ParameterType, T1) -> A) -> (Array, Array<T1>) -> Array<A> {
		return { (t1s, t2s) in
			Generic.pure(f.curry(function)) <*> t1s <*> t2s
		}
	}

	static func lift <A,T1,T2> (_ function: @escaping (ParameterType, T1, T2) -> A) -> (Array, Array<T1>, Array<T2>) -> Array<A> {
		return { (t1s, t2s, t3s) in
			Generic.pure(f.curry(function)) <*> t1s <*> t2s <*> t3s
		}
	}
}

public extension Array {
	func traverse <A> (_ transform: (ParameterType) -> Array<A>) -> Array<Array<A>> {
		return reduce(Generic.pure([])) { previous, element in
			Generic.pure(f.curry(++)) <*> previous <*> transform(element)
		}
	}

	func traverse <A> (_ transform: (ParameterType) -> Effect<A>) -> Effect<Array<A>> {
		return reduce(Effect.pure([])) { previous, element in
			Effect.pure(f.curry(++)) <*> previous <*> transform(element)
		}
	}

    func traverse <A> (_ transform: (ParameterType) -> Future<A>) -> Future<Array<A>> {
        return reduce(Future.pure([])) { previous, element in
            Future.pure(f.curry(++)) <*> previous <*> transform(element)
        }
    }

    func traverse <A> (_ transform: (ParameterType) -> Optional<A>) -> Optional<Array<A>> {
        return reduce(Optional.pure([])) { previous, element in
            Optional.pure(f.curry(++)) <*> previous <*> transform(element)
        }
    }
    
    func traverse <A,E> (_ transform: (ParameterType) -> Reader<E,A>) -> Reader<E,Array<A>> {
        return reduce(Reader.pure([])) { previous, element in
            Reader.pure(f.curry(++)) <*> previous <*> transform(element)
        }
    }

	func traverse <A,F> (_ transform: (ParameterType) -> Result<F,A>) -> Result<F,Array<A>> {
		return reduce(Result.pure([])) { previous, element in
			Result.pure(f.curry(++)) <*> previous <*> transform(element)
		}
	}

	func traverse <A,M> (_ transform: (ParameterType) -> State<M,A>) -> State<M,Array<A>> {
		return reduce(State.pure([])) { previous, element in
			State.pure(f.curry(++)) <*> previous <*> transform(element)
		}
	}

	func traverse <A,L> (_ transform: (ParameterType) -> Writer<L,A>) -> Writer<L,Array<A>> {
		return reduce(Writer.pure([])) { previous, element in
			Writer.pure(f.curry(++)) <*> previous <*> transform(element)
		}
	}
}

//
//// MARK: - Definiton
//
//// sourcery: split1
//// sourcery: functor
//// sourcery: traversable
//// sourcery: monad
//// sourcery: concrete = "Array"
//// sourcery: customMap = "fmap"
//// sourcery: customFlatMap = "bind"
//public protocol ArrayType: PureConstructible {
//	static func from(concrete: Concrete<ParameterType>) -> Self
//	var run: [ParameterType] { get }
//	func fold<T>(_ starting: T, _ accumulate: (T,ParameterType) -> T) -> T
//}
//
//// MARK: - Data
//
//// sourcery: testFunctor
//// sourcery: testApplicative
//// sourcery: testMonad
//// sourcery: testConstruct = "init([x])"
//// sourcery: customMap = "fmap"
//// sourcery: customFlatMap = "bind"
//extension Array: ArrayType {
//	public typealias ParameterType = Element
//
//	public static func from(concrete: Array<Element>) -> Array<Element> {
//		return concrete
//	}
//
//	public var run: [Element] {
//		return self
//	}
//
//	public func fold<T>(_ starting: T, _ accumulate: (T, Element) -> T) -> T {
//		return reduce(starting, accumulate)
//	}
//}
//
//// MARK: - Concrete
//
//public extension ArrayType {
//	typealias Concrete<T> = Array<T>
//}
//
//// MARK: - Functor
//
//public extension ArrayType {
//	func fmap<T>(_ transform: (ParameterType) -> T) -> [T] {
//		return fold([T].init()) { previous, element in
//			previous + [transform(element)]
//		}
//	}
//    
//    static func lift<A>(_ function: @escaping (ParameterType) -> A) -> (Self) -> [A] {
//        return { $0.fmap(function) }
//    }
//
//    static func lift<A,Applicative2>(_ function: @escaping (ParameterType, Applicative2.ParameterType) -> A) -> (Self, Applicative2) -> [A] where Applicative2: ArrayType {
//        return { (ap1, ap2) in
//            Concrete.pure(f.curry(function)) <*> ap1 <*> ap2
//        }
//    }
//
//    static func lift<A,Applicative2,Applicative3>(_ function: @escaping (ParameterType, Applicative2.ParameterType, Applicative3.ParameterType) -> A) -> (Self, Applicative2, Applicative3) -> [A] where Applicative2: ArrayType, Applicative3: ArrayType {
//        return { ap1, ap2, ap3 in
//            Concrete.pure(f.curry(function)) <*> ap1 <*> ap2 <*> ap3
//        }
//    }
//}
//
//// MARK: - Cartesian
//
//public extension ArrayType {
//	typealias Zipped<A1,A2> = [(A1.ParameterType,A2.ParameterType)] where A1: ArrayType, A2: ArrayType
//
//	static func cartesian <A1,A2> (_ first: A1, _ second: A2) -> Zipped<A1,A2> where A1: ArrayType, A2: ArrayType, ParameterType == (A1.ParameterType, A2.ParameterType) {
//		return first.fold(Zipped<A1,A2>.init()) { externalPrevious, firstElement in
//			externalPrevious + second.fold(Zipped<A1,A2>.init()) { internalPrevious, secondElement in
//				internalPrevious + [(firstElement,secondElement)]
//			}
//		}
//	}
//}
//
//// MARK: - Applicative
//
//public extension ArrayType {
//	static func pure(_ value: ParameterType) -> [ParameterType] {
//		return [value]
//	}
//
//	func apply <A,T> (_ transform: A) -> [T] where A: ArrayType, A.ParameterType == (ParameterType) -> T {
//		return Array.cartesian(self, transform).fmap { value, function in function(value) }
//	}
//
//	static func <*> <A,T> (lhs: A, rhs: Self) -> [T] where A: ArrayType, A.ParameterType == (ParameterType) -> T {
//		return Array.cartesian(lhs, rhs).fmap { function, value in function(value) }
//	}
//}
//
//// MARK: - Traversable
//
//public extension ArrayType {
//	typealias Traversed<Applicative> = [Applicative.ParameterType] where Applicative: TypeConstructor
//
//	func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> [Traversed<Applicative>] where Applicative: ArrayType {
//		typealias Returned = [Traversed<Applicative>]
//
//		return fold(Returned.pure([])) { previous, element in
//			Applicative.Concrete.pure(f.curry(++)) <*> previous <*> transform(element)
//		}
//	}
//
//	func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> Future<Traversed<Applicative>> where Applicative: FutureType {
//		typealias Returned = Future<Traversed<Applicative>>
//
//		return fold(Returned.pure([])) { previous, element in
//			Applicative.Concrete.pure(f.curry(++)) <*> previous <*> transform(element)
//		}
//	}
//
//	func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> Effect<Traversed<Applicative>> where Applicative: EffectType {
//		typealias Returned = Effect<Traversed<Applicative>>
//
//		return fold(Returned.pure([])) { previous, element in
//			Applicative.Concrete.pure(f.curry(++)) <*> previous <*> transform(element)
//		}
//	}
//
//	func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> Optional<Traversed<Applicative>> where Applicative: OptionalType {
//		typealias Returned = Optional<Traversed<Applicative>>
//
//		return fold(Returned.pure([])) { previous, element in
//			Applicative.Concrete.pure(f.curry(++)) <*> previous <*> transform(element)
//		}
//	}
//
//	func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> Reader<Applicative.EnvironmentType,Traversed<Applicative>> where Applicative: ReaderType {
//		typealias Returned = Reader<Applicative.EnvironmentType,Traversed<Applicative>>
//
//		return fold(Returned.pure([])) { previous, element in
//			Applicative.Concrete.pure(f.curry(++)) <*> previous <*> transform(element)
//		}
//	}
//
//	func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> Result<Applicative.ErrorType,Traversed<Applicative>> where Applicative: ResultType {
//		typealias Returned = Result<Applicative.ErrorType,Traversed<Applicative>>
//
//		return fold(Returned.pure([])) { previous, element in
//			Applicative.Concrete.pure(f.curry(++)) <*> previous <*> transform(element)
//		}
//	}
//
//    func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> State<Applicative.StateParameterType,Traversed<Applicative>> where Applicative: StateType {
//        typealias Returned = State<Applicative.StateParameterType,Traversed<Applicative>>
//        
//        return fold(Returned.pure([])) { previous, element in
//            Applicative.Concrete.pure(f.curry(++)) <*> previous <*> transform(element)
//        }
//    }
//
//	func traverse<Applicative>(_ transform: (ParameterType) -> Applicative) -> Writer<Applicative.LogType,Traversed<Applicative>> where Applicative: WriterType {
//		typealias Returned = Writer<Applicative.LogType,Traversed<Applicative>>
//
//		return fold(Returned.pure([])) { previous, element in
//			Applicative.Concrete.pure(f.curry(++)) <*> previous <*> transform(element)
//		}
//	}
//}
//
//// MARK: - Monad
//
//public extension ArrayType where ParameterType: ArrayType {
//	func joined() -> [ParameterType.ParameterType] {
//		let initial = [ParameterType.ParameterType].init()
//		return fold(initial) { externalPrevious, externalElement in
//			externalPrevious + externalElement.fold(initial) { internalPrevious, internalElement in
//				internalPrevious + [internalElement]
//			}
//		}
//	}
//}
//
//public extension ArrayType {
//	func bind <A> (_ transform: (ParameterType) -> A) -> [A.ParameterType] where A: ArrayType {
//		return fmap(transform).joined()
//	}
//}
