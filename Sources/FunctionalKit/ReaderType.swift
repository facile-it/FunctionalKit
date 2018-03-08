#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

// MARK: - Definiton

// sourcery: functor
// sourcery: monad
// sourcery: customTransformer
// sourcery: concrete = "Reader"
// sourcery: secondaryParameter = "EnvironmentType"
// sourcery: escapingHOF
public protocol ReaderType: PureConstructible, ExponentialType {
	associatedtype EnvironmentType

	static func from(concrete: Concrete<EnvironmentType,ParameterType>) -> Self
	func run(_ environment: EnvironmentType) -> ParameterType
	static func unfold(_ function: @escaping (EnvironmentType) -> ParameterType) -> Self
}

extension ReaderType {
	public func call(_ source: EnvironmentType) -> ParameterType {
		return run(source)
	}
}

// MARK: - Data
// sourcery: testFunctor
// sourcery: testApplicative
// sourcery: testMonad
// sourcery: testConstruct = "unfold { _ in x }"
// sourcery: testNeedsContext
// sourcery: testSecondaryParameter
public struct Reader<E,A>: ReaderType {
	public typealias ParameterType = A

	private let _call: (E) -> A
	private init (_ _call: @escaping (E) -> A) {
		self._call = _call
	}

	public static func from(concrete: Reader<E, A>) -> Reader<E, A> {
		return concrete
	}

	public func run(_ environment: E) -> A {
		return _call(environment)
	}

	public static func unfold(_ function: @escaping (E) -> A) -> Reader<E, A> {
		return Reader.init(function)
	}
}

// MARK: - Concrete

extension ReaderType {
	public typealias Concrete<E,T> = Reader<E,T>
}

// MARK: - Equatable

extension ReaderType where ParameterType: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Reader<EnvironmentType,Bool> {
		return Reader.unfold { e in
			lhs.run(e) == rhs.run(e)
		}
	}
}

// MARK: - Functor

extension ReaderType {
	public func dimap<A, B>(from: @escaping (A) -> EnvironmentType, to: @escaping (ParameterType) -> B) -> Reader<A, B> {
		return Reader.unfold(from..self.run..to)
	}

	public func map <T> (_ transform: @escaping (ParameterType) -> T) -> Reader<EnvironmentType,T> {
		return dimap(from: { $0 }, to: transform)
	}

	public func contramap <T> (_ transform: @escaping (T) -> EnvironmentType) -> Reader<T,ParameterType> {
		return dimap(from: transform, to: { $0 })
	}
    
    public static func lift<A>(_ function: @escaping (ParameterType) -> A) -> (Self) -> Reader<EnvironmentType, A> {
        return { $0.map(function) }
    }
    
    public static func lift<A,Applicative2>(_ function: @escaping (ParameterType, Applicative2.ParameterType) -> A) -> (Self, Applicative2) -> Reader<EnvironmentType, A> where Applicative2: ReaderType, Applicative2.EnvironmentType == EnvironmentType {
        return { ap1, ap2 in
            Concrete.pure(f.curry(function)) <*> ap1 <*> ap2
        }
    }
  
    public static func lift<A,Applicative2,Applicative3>(_ function: @escaping (ParameterType, Applicative2.ParameterType, Applicative3.ParameterType) -> A) -> (Self, Applicative2, Applicative3) -> Reader<EnvironmentType, A> where Applicative2: ReaderType, Applicative3: ReaderType, Applicative2.EnvironmentType == EnvironmentType, Applicative3.EnvironmentType == EnvironmentType {
        return { ap1, ap2, ap3 in
            Concrete.pure(f.curry(function)) <*> ap1 <*> ap2 <*> ap3
        }
    }
}

// MARK: - Cartesian

extension ReaderType {
	public static func zip <R1,R2> (_ first: R1, _ second: R2) -> Reader<(R1.EnvironmentType,R2.EnvironmentType),(R1.ParameterType,R2.ParameterType)> where R1: ReaderType, R2: ReaderType, EnvironmentType == (R1.EnvironmentType,R2.EnvironmentType), ParameterType == (R1.ParameterType,R2.ParameterType) {
		return Reader.unfold { e1, e2 in (first.run(e1),second.run(e2)) }
	}

	public static func zipCommon <R1,R2> (_ first: R1, _ second: R2) -> Reader<EnvironmentType,(R1.ParameterType,R2.ParameterType)> where R1: ReaderType, R2: ReaderType, R1.EnvironmentType == EnvironmentType, R2.EnvironmentType == EnvironmentType, ParameterType == (R1.ParameterType,R2.ParameterType) {
		return Reader.unfold { e in (first.run(e),second.run(e)) }
	}
}

// MARK: - Applicative

extension ReaderType {
	public static func pure(_ value: ParameterType) -> Reader<EnvironmentType,ParameterType> {
		return Reader.unfold(f.pure(value))
	}

	public func apply <R,T> (_ transform: R) -> Reader<EnvironmentType,T> where R: ReaderType, R.ParameterType == (ParameterType) -> T, R.EnvironmentType == EnvironmentType {
		return Reader.zipCommon(self, transform).map { value, function in function(value) }
	}

	public static func <*> <R,T> (lhs: R, rhs: Self) -> Reader<EnvironmentType,T> where R: ReaderType, R.ParameterType == (ParameterType) -> T, R.EnvironmentType == EnvironmentType {
		return Reader.zipCommon(lhs, rhs).map { function, value in function(value) }
	}
}

// MARK: - Monad

extension ReaderType where ParameterType: ReaderType, ParameterType.EnvironmentType == EnvironmentType {
	public var joined: Reader<EnvironmentType,ParameterType.ParameterType> {
		return Reader.unfold { e in self.run(e).run(e) }
	}
}

extension ReaderType {
	public func flatMap <R> (_ transform: @escaping (ParameterType) -> R) -> Reader<EnvironmentType,R.ParameterType> where R: ReaderType, R.EnvironmentType == EnvironmentType {
		return map(transform).joined
	}
}

// MARK: - Utility

extension ReaderType {
	public static var ask: Reader<EnvironmentType,EnvironmentType> {
		return Reader<EnvironmentType,EnvironmentType>.unfold(f.identity)
	}
}

// MARK: Effect

public typealias Effect<A> = Reader<(),A>

public func effect <T> (_ execute: @escaping () -> T) -> Effect<T> {
	return Effect<T>.unfold(execute)
}

public func lazily <T> (_ execute: @escaping @autoclosure () -> T) -> Effect<T> {
	return effect(execute)
}

extension ReaderType where EnvironmentType == () {
	public func execute() -> ParameterType {
		return run(())
	}
}

// MARK: Coeffect

public typealias Coeffect<A> = Reader<A,()>

public func coeffect <T> (_ execute: @escaping (T) -> ()) -> Coeffect<T> {
	return Reader.unfold(execute)
}

extension ReaderType where ParameterType == () {
	public func execute(_ value: EnvironmentType) {
		run(value)
	}
}

// MARK: Handler

public struct Handler<T>: ReaderType, Monoid {
	public typealias EnvironmentType = T
	public typealias ParameterType = ()

	private let root: Coeffect<T>
	public init(_ handler: @escaping (T) -> ()) {
		self.root = Coeffect<T>.unfold(handler)
	}

	public func handle(_ value: T) {
		self.run(value)
	}

	public static func pure(_ value: ()) -> Handler<T> {
		return .empty
	}

	public static func from(concrete: Reader<T, ()>) -> Handler {
		return Handler.init(concrete.run)
	}

	public func run(_ environment: T) -> () {
		root.run(environment)
	}

	public static func unfold(_ function: @escaping (T) -> ()) -> Handler {
		return Handler.init(function)
	}

	public static var empty: Handler {
		return Handler.init(f.ignore)
	}

	public static func <> (left: Handler, right: Handler) -> Handler {
		return Handler.init { action in
			left.run(action)
			right.run(action)
		}
	}
}

extension ReaderType where ParameterType == () {
	public var toHandler: Handler<EnvironmentType> {
		return Handler<EnvironmentType>.unfold(self.run)
	}
}

public typealias Updater<T> = Handler<Endo<T>>
