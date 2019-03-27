//#if SWIFT_PACKAGE
//    import Operadics
//#endif
//import Abstract
//
//// sourcery: functor
//// sourcery: escapingHOF
//// sourcery: secondaryParameter = "Environment"
//// sourcery: monad
//// sourcery: customTransformer
//// sourcery: testFunctor
//// sourcery: test_Applicative /// segfault
//// sourcery: testMonad
//// sourcery: testConstruct = "init { _ in x }"
//// sourcery: testNeedsContext
//// sourcery: testSecondaryParameter
//public struct Reader<Environment,Parameter> {
//    private let _call: (Environment) -> Parameter
//    public init (_ call: @escaping (Environment) -> Parameter) {
//        self._call = call
//    }
//    
//    public func run(_ environment: Environment) -> Parameter {
//        return _call(environment)
//    }
//}
//
//extension Reader: FunctionType {
//    public typealias SourceType = Environment
//    public typealias TargetType = Parameter
//
//    public func call(_ source: Environment) -> Parameter {
//        return run(source)
//    }
//
//    public static func from(function: Function<Environment, Parameter>) -> Reader<Environment, Parameter> {
//        return Reader.init(function.call)
//    }
//}
//
//extension Reader: EquatableInContext where Parameter: Equatable {
//    public typealias Context = Environment
//}
//
//extension Reader: TypeConstructor2 {
//    public typealias ParameterType = Parameter
//    public typealias SecondaryType = Environment
//}
//
//extension Reader: PureConstructible {
//    public static func pure(_ value: ParameterType) -> Reader {
//        return Reader.init(f.pure(value))
//    }
//}
//
//extension Reader {
//    typealias Generic<E,A> = Reader<E,A>
//}
//
//extension Reader {
//    func dimap <A,B> (from: @escaping (A) -> Environment, to: @escaping (ParameterType) -> B) -> Reader<A,B> {
//        return Generic.init(from >>> self.run >>> to)
//    }
//    
//    func map <A> (_ transform: @escaping (ParameterType) -> A) -> Reader<Environment,A> {
//        return dimap(from: { $0 }, to: transform)
//    }
//    
//    func contramap <A> (_ transform: @escaping (A) -> Environment) -> Reader<A,ParameterType> {
//        return dimap(from: transform, to: { $0 })
//    }
//    
//    static func lift <A> (_ function: @escaping (ParameterType) -> A) -> (Reader) -> Reader<Environment, A> {
//        return { $0.map(function) }
//    }
//    
//    static func zip <E1,A,E2,B> (_ first: Reader<E1,A>, _ second: Reader<E2,B>) -> Reader<(E1,E2),(A,B)> where Environment == (E1,E2), ParameterType == (A,B) {
//        return Generic.init { e1, e2 in (first.run(e1),second.run(e2)) }
//    }
//    
//    static func zipCommon <A,B> (_ first: Reader<Environment,A>, _ second: Reader<Environment,B>) -> Reader<Environment,(A,B)> where ParameterType == (A,B) {
//        return Generic.init { e in (first.run(e),second.run(e)) }
//    }
//    
//    func apply <A> (_ transform: Reader<Environment,(ParameterType) -> A>) -> Reader<Environment,A> {
//        return Generic.zipCommon(self, transform).map { value, function in function(value) }
//    }
//    
//    static func <*> <A> (lhs: Reader<Environment,(ParameterType) -> A>, rhs: Reader) -> Reader<Environment,A> {
//        return rhs.apply(lhs)
//    }
//    
//    static func lift <A,B> (_ function: @escaping (A,B) -> ParameterType) -> (Reader<Environment,A>, Reader<Environment,B>) -> Reader {
//        return { ap1, ap2 in
//            Generic.pure(f.curry(function)) <*> ap1 <*> ap2
//        }
//    }
//
//    static func lift <A,B,C> (_ function: @escaping (A,B,C) -> ParameterType) -> (Reader<Environment,A>, Reader<Environment,B>,Reader<Environment,C>) -> Reader {
//        return { ap1, ap2, ap3 in
//            Generic.pure(f.curry(function)) <*> ap1 <*> ap2 <*> ap3
//        }
//    }
//    
//        func joined <A> () -> Reader<Environment,A> where ParameterType == Reader<Environment,A> {
//            return Generic.init { e in self.run(e).run(e) }
//        }
//    
//        func flatMap <A> (_ transform: @escaping (ParameterType) -> Reader<Environment,A>) -> Reader<Environment,A> {
//            return map(transform).joined()
//        }
//
//        static var ask: Reader<Environment,Environment> {
//            return Generic.init(f.identity)
//        }
//}
