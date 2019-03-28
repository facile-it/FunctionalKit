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

    func call <A,B> (_ value: Array<A>) -> Array<B> where ParameterType == (A) -> B {
        return Generic.cartesian(self, value)
            .map { function, value in function(value) }
    }

    static func <*> <A> (lhs: Array<(ParameterType) -> A>, rhs: Array) -> Array<A> {
        return lhs.call(rhs)
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

//    func traverse <A,F> (_ transform: (ParameterType) -> Result<F,A>) -> Result<F,Array<A>> {
//        return reduce(Result.pure([])) { previous, element in
//            Result.pure(f.curry(++)) <*> previous <*> transform(element)
//        }
//    }

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
