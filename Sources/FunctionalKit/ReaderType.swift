#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

// sourcery: functor
// sourcery: escapingHOF
// sourcery: secondaryParameter = "Environment"
public struct Reader<Environment,Parameter> {
    public let call: (Environment) -> Parameter
    public init (_ call: @escaping (Environment) -> Parameter) {
        self.call = call
    }
    
    public func run(_ environment: Environment) -> Parameter {
        return call(environment)
    }
}

extension Reader: TypeConstructor2 {
    public typealias ParameterType = Parameter
    public typealias SecondaryType = Environment
}

extension Reader: PureConstructible {
    public static func pure(_ value: ParameterType) -> Reader {
        return Reader.init(f.pure(value))
    }
}

extension Reader {
    typealias Generic<E,A> = Reader<E,A>
}

extension Reader {
    func dimap <A,B> (from: @escaping (A) -> Environment, to: @escaping (ParameterType) -> B) -> Reader<A,B> {
        return Generic.init(from >>> self.run >>> to)
    }
    
    func map <A> (_ transform: @escaping (ParameterType) -> A) -> Reader<Environment,A> {
        return dimap(from: { $0 }, to: transform)
    }
    
    func contramap <A> (_ transform: @escaping (A) -> Environment) -> Reader<A,ParameterType> {
        return dimap(from: transform, to: { $0 })
    }
    
    static func lift <A> (_ function: @escaping (ParameterType) -> A) -> (Reader) -> Reader<Environment, A> {
        return { $0.map(function) }
    }
    
    static func zip <E1,A,E2,B> (_ first: Reader<E1,A>, _ second: Reader<E2,B>) -> Reader<(E1,E2),(A,B)> where Environment == (E1,E2), ParameterType == (A,B) {
        return Generic.init { e1, e2 in (first.run(e1),second.run(e2)) }
    }
    
    static func zipCommon <A,B> (_ first: Reader<Environment,A>, _ second: Reader<Environment,B>) -> Reader<Environment,(A,B)> where ParameterType == (A,B) {
        return Generic.init { e in (first.run(e),second.run(e)) }
    }
    
    func apply <A> (_ transform: Reader<Environment,(ParameterType) -> A>) -> Reader<Environment,A> {
        return Generic.zipCommon(self, transform).map { value, function in function(value) }
    }
    
    static func <*> <A> (lhs: Reader<Environment,(ParameterType) -> A>, rhs: Reader) -> Reader<Environment,A> {
        return rhs.apply(lhs)
    }
    
    static func lift <A,B> (_ function: @escaping (A,B) -> ParameterType) -> (Reader<Environment,A>, Reader<Environment,B>) -> Reader {
        return { ap1, ap2 in
            Generic.pure(f.curry(function)) <*> ap1 <*> ap2
        }
    }

    static func lift <A,B,C> (_ function: @escaping (A,B,C) -> ParameterType) -> (Reader<Environment,A>, Reader<Environment,B>,Reader<Environment,C>) -> Reader {
        return { ap1, ap2, ap3 in
            Generic.pure(f.curry(function)) <*> ap1 <*> ap2 <*> ap3
        }
    }
    
        func joined <A> () -> Reader<Environment,A> where ParameterType == Reader<Environment,A> {
            return Generic.init { e in self.run(e).run(e) }
        }
    
        func flatMap <A> (_ transform: @escaping (ParameterType) -> Reader<Environment,A>) -> Reader<Environment,A> {
            return map(transform).joined()
        }

        static var ask: Reader<Environment,Environment> {
            return Generic.init(f.identity)
        }
}

//
//// MARK: - Definiton
//
//// sourcery: split5
//// sourcery: functor
//// sourcery: monad
//// sourcery: customTransformer
//// sourcery: concrete = "Reader"
//// sourcery: secondaryParameter = "EnvironmentType"
//// sourcery: escapingHOF
//public protocol ReaderType: PureConstructible, ExponentialType {
//	associatedtype EnvironmentType
//
//	static func from(concrete: Concrete<EnvironmentType,ParameterType>) -> Self
//	func run(_ environment: EnvironmentType) -> ParameterType
//	static func unfold(_ function: @escaping (EnvironmentType) -> ParameterType) -> Self
//}
//
//public extension ReaderType {
//	func call(_ source: EnvironmentType) -> ParameterType {
//		return run(source)
//	}
//}
//
//// MARK: - Data
//
//// sourcery: testFunctor
//// sourcery: testApplicative
//// sourcery: testMonad
//// sourcery: testConstruct = "unfold { _ in x }"
//// sourcery: testNeedsContext
//// sourcery: testSecondaryParameter
//public struct Reader<E,A>: ReaderType {
//    public typealias ParameterType = A
//
//    private let _call: (E) -> A
//    private init (_ _call: @escaping (E) -> A) {
//        self._call = _call
//    }
//
//    public static func from(concrete: Reader<E, A>) -> Reader<E, A> {
//        return concrete
//    }
//
//    public func run(_ environment: E) -> A {
//        return _call(environment)
//    }
//
//    public static func unfold(_ function: @escaping (E) -> A) -> Reader<E, A> {
//        return Reader.init(function)
//    }
//}
//
//// MARK: - Concrete
//
//extension ReaderType {
//	public typealias Concrete<E,T> = Reader<E,T>
//}
//
//// MARK: - Equatable
//
//extension Reader: EquatableInContext where A: Equatable {
//	public typealias Context = E
//}
//
//// MARK: - Functor
//
//public extension ReaderType {
//    func dimap<A, B>(from: @escaping (A) -> EnvironmentType, to: @escaping (ParameterType) -> B) -> Reader<A, B> {
//        return Reader.unfold(from >>> self.run >>> to)
//    }
//
//    func map <T> (_ transform: @escaping (ParameterType) -> T) -> Reader<EnvironmentType,T> {
//        return dimap(from: { $0 }, to: transform)
//    }
//
//    func contramap <T> (_ transform: @escaping (T) -> EnvironmentType) -> Reader<T,ParameterType> {
//        return dimap(from: transform, to: { $0 })
//    }
//
//    static func lift<A>(_ function: @escaping (ParameterType) -> A) -> (Self) -> Reader<EnvironmentType, A> {
//        return { $0.map(function) }
//    }
//
//    static func lift<A,Applicative2>(_ function: @escaping (ParameterType, Applicative2.ParameterType) -> A) -> (Self, Applicative2) -> Reader<EnvironmentType, A> where Applicative2: ReaderType, Applicative2.EnvironmentType == EnvironmentType {
//        return { ap1, ap2 in
//            Concrete.pure(f.curry(function)) <*> ap1 <*> ap2
//        }
//    }
//
//    static func lift<A,Applicative2,Applicative3>(_ function: @escaping (ParameterType, Applicative2.ParameterType, Applicative3.ParameterType) -> A) -> (Self, Applicative2, Applicative3) -> Reader<EnvironmentType, A> where Applicative2: ReaderType, Applicative3: ReaderType, Applicative2.EnvironmentType == EnvironmentType, Applicative3.EnvironmentType == EnvironmentType {
//        return { ap1, ap2, ap3 in
//            Concrete.pure(f.curry(function)) <*> ap1 <*> ap2 <*> ap3
//        }
//    }
//}
//
//// MARK: - Cartesian
//
//public extension ReaderType {
//    static func zip <R1,R2> (_ first: R1, _ second: R2) -> Reader<(R1.EnvironmentType,R2.EnvironmentType),(R1.ParameterType,R2.ParameterType)> where R1: ReaderType, R2: ReaderType, EnvironmentType == (R1.EnvironmentType,R2.EnvironmentType), ParameterType == (R1.ParameterType,R2.ParameterType) {
//        return Reader.unfold { e1, e2 in (first.run(e1),second.run(e2)) }
//    }
//
//    static func zipCommon <R1,R2> (_ first: R1, _ second: R2) -> Reader<EnvironmentType,(R1.ParameterType,R2.ParameterType)> where R1: ReaderType, R2: ReaderType, R1.EnvironmentType == EnvironmentType, R2.EnvironmentType == EnvironmentType, ParameterType == (R1.ParameterType,R2.ParameterType) {
//        return Reader.unfold { e in (first.run(e),second.run(e)) }
//    }
//}
//
//// MARK: - Applicative
//
//public extension ReaderType {
//    static func pure(_ value: ParameterType) -> Reader<EnvironmentType,ParameterType> {
//        return Reader.unfold(f.pure(value))
//    }
//
//    func apply <R,T> (_ transform: R) -> Reader<EnvironmentType,T> where R: ReaderType, R.ParameterType == (ParameterType) -> T, R.EnvironmentType == EnvironmentType {
//        return Reader.zipCommon(self, transform).map { value, function in function(value) }
//    }
//
//    static func <*> <R,T> (lhs: R, rhs: Self) -> Reader<EnvironmentType,T> where R: ReaderType, R.ParameterType == (ParameterType) -> T, R.EnvironmentType == EnvironmentType {
//        return Reader.zipCommon(lhs, rhs).map { function, value in function(value) }
//    }
//}
//
//// MARK: - Monad
//
//public extension ReaderType where ParameterType: ReaderType, ParameterType.EnvironmentType == EnvironmentType {
//    func joined() -> Reader<EnvironmentType,ParameterType.ParameterType> {
//        return Reader.unfold { e in self.run(e).run(e) }
//    }
//}
//
//public extension ReaderType {
//    func flatMap <R> (_ transform: @escaping (ParameterType) -> R) -> Reader<EnvironmentType,R.ParameterType> where R: ReaderType, R.EnvironmentType == EnvironmentType {
//        return map(transform).joined()
//    }
//}
//
//// MARK: - Utility
//
//public extension ReaderType {
//    static var ask: Reader<EnvironmentType,EnvironmentType> {
//        return Reader<EnvironmentType,EnvironmentType>.unfold(f.identity)
//    }
//}
