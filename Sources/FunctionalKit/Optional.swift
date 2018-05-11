#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

// sourcery: functor
// sourcery: monad
// sourcery: traversable
// sourcery: testFunctor
// sourcery: testApplicative
// sourcery: testMonad
// sourcery: testConstruct = "init(x)"
// sourcery: customMap = "fmap"
extension Optional: TypeConstructor {
    public typealias ParameterType = Wrapped
}

extension Optional: PureConstructible {
    public static func pure(_ value: ParameterType) -> Optional {
        return Optional(value)
    }
}

public extension Optional {
    typealias Generic<A> = Optional<A>
}

public extension Optional {
    public func fold <A> (onNone: () -> A, onSome: (Wrapped) -> A) -> A {
        switch self {
        case .none:
            return onNone()
        case .some(let value):
            return onSome(value)
        }
    }
}

extension Optional: CoproductType {
	public typealias LeftType = ()
	public typealias RightType = Wrapped

	public func fold<T>(onLeft: (()) -> T, onRight: (Wrapped) -> T) -> T {
		return fold(
			onNone: { onLeft(()) },
			onSome: onRight)
	}
}

public extension Optional{
	func fmap <A> (_ transform: (ParameterType) -> A) -> Optional<A> {
		return map(transform)
	}

    static func lift<A>(_ function: @escaping (ParameterType) -> A) -> (Optional) -> Optional<A> {
        return { $0.map(function) }
    }
    
    static func lift<A,B>(_ function: @escaping (A, B) -> ParameterType) -> (Optional<A>, Optional<B>) -> Optional {
        return { (ap1, ap2) in
            Generic.pure(f.curry(function)) <*> ap1 <*> ap2
        }
    }
    
    static func lift<A,B,C>(_ function: @escaping (A, B, C) -> ParameterType) -> (Optional<A>, Optional<B>, Optional<C>) -> Optional {
        return { (ap1, ap2, ap3) in
            Generic.pure(f.curry(function)) <*> ap1 <*> ap2 <*> ap3
        }
    }

    static func zip <A,B> (_ first: Optional<A>, _ second: Optional<B>) -> Optional<(A,B)> where ParameterType == (A,B) {
        switch (first,second) {
        case let (firstValue?, secondValue?):
            return .some((firstValue,secondValue))
        default:
            return .none
        }
    }
    
    func apply<A>(_ transform: Optional<(ParameterType) -> A>) -> Optional<A> {
        return Generic.zip(self, transform).map { value, function in function(value) }
    }
    
    static func <*> <A> (lhs: Optional<(ParameterType) -> A>, rhs: Optional) -> Optional<A> {
        return Generic.zip(lhs, rhs).map { function, value in function(value) }
    }
    
    func joined <A> () -> Optional<A> where ParameterType == Optional<A> {
        switch self {
        case let .some(value?):
            return Generic.some(value)
        default:
            return .none
        }
    }
    
    func traverse <A> (_ transform: (ParameterType) -> Array<A>) -> Array<Optional<A>> {
        switch self {
        case let value?:
            return Array.pure(Optional<A>.some) <*> transform(value)
        case .none:
            return Array.pure(Optional<A>.none)
        }
    }
    
    func traverse <A> (_ transform: (ParameterType) -> Effect<A>) -> Effect<Optional<A>> {
        switch self {
        case let value?:
            return Effect.pure(Optional<A>.some) <*> transform(value)
        case .none:
            return Effect.pure(Optional<A>.none)
        }
    }

    func traverse <A> (_ transform: (ParameterType) -> Future<A>) -> Future<Optional<A>> {
        switch self {
        case let value?:
            return Future.pure(Optional<A>.some) <*> transform(value)
        case .none:
            return Future.pure(Optional<A>.none)
        }
    }
    
    func traverse <A> (_ transform: (ParameterType) -> Optional<A>) -> Optional<Optional<A>> {
        switch self {
        case let value?:
            return Generic.pure(Optional<A>.some) <*> transform(value)
        case .none:
            return Generic.pure(Optional<A>.none)
        }
    }
    
    func traverse <A,E> (_ transform: (ParameterType) -> Reader<E,A>) -> Reader<E,Optional<A>> {
        switch self {
        case let value?:
            return Reader.pure(Optional<A>.some) <*> transform(value)
        case .none:
            return Reader.pure(Optional<A>.none)
        }
    }

	func traverse <A,F> (_ transform: (ParameterType) -> Result<F,A>) -> Result<F,Optional<A>> {
		switch self {
		case let value?:
			return Result.pure(Optional<A>.some) <*> transform(value)
		case .none:
			return Result.pure(Optional<A>.none)
		}
	}

	func traverse <A,M> (_ transform: (ParameterType) -> State<M,A>) -> State<M,Optional<A>> {
		switch self {
		case let value?:
			return State.pure(Optional<A>.some) <*> transform(value)
		case .none:
			return State.pure(Optional<A>.none)
		}
	}

	func traverse <A,L> (_ transform: (ParameterType) -> Writer<L,A>) -> Writer<L,Optional<A>> {
		switch self {
		case let value?:
			return Writer.pure(Optional<A>.some) <*> transform(value)
		case .none:
			return Writer.pure(Optional<A>.none)
		}
	}

    func filter(_ predicate: (ParameterType) -> Bool) -> Optional {
        return flatMap { (element) -> Optional in
            if predicate(element) {
                return .some(element)
            } else {
                return .none
            }
        }
    }
    
    func get(or getElseValue: @autoclosure () -> ParameterType) -> ParameterType {
        switch self {
        case let value?:
            return value
        case .none:
            return getElseValue()
        }
    }
    
    func toArray() -> Array<ParameterType> {
        switch self {
        case let value?:
            return [value]
        case .none:
            return []
        }
    }
    
    func toResult <E> (getError: @autoclosure () -> E) -> Result<E,ParameterType> where E: Error {
		switch self {
		case let value?:
			return .success(value)
		case .none:
			return .failure(getError())
		}
    }
    
    var isNil: Bool {
        switch self {
        case .some:
            return false
        case .none:
            return true
        }
    }
    
    func ifNotNil(_ action: (ParameterType) -> ()) {
        switch self {
        case let value?:
            action(value)
        case .none:
            break
        }
    }
}

