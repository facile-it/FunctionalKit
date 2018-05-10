#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract
import Dispatch

private enum FutureState<T> {
    case idle
    case running
    case done(T)
}

// sourcery: functor
// sourcery: escapingHOF
// sourcery: monad
public final class Future<Parameter> {
    private let continuation: (@escaping (Parameter) -> ()) -> ()
    public init(_ continuation: @escaping (@escaping (Parameter) -> ()) -> ()) {
        self.continuation = continuation
    }
    
    private var callbacks: [(Parameter) -> ()] = []
    private var currentState = FutureState<Parameter>.idle
    
    @discardableResult
    public func start() -> Future {
        guard case .idle = currentState else { return self }
        currentState = .running
        continuation { value in
            self.currentState = .done(value)
            self.callbacks.forEach { $0(value) }
            self.callbacks.removeAll()
        }
        return self
    }
    
    @discardableResult
    public func run(_ callback: @escaping (Parameter) -> ()) -> Future {
        switch currentState {
        case .idle:
            callbacks.append(callback)
            return start()
        case .running:
            callbacks.append(callback)
            return self
        case .done(let value):
            callback(value)
            return self
        }
    }
}

extension Future: Equatable where Parameter: Equatable {
    public static func == (lhs: Future, rhs: Future) -> Bool {
        switch (lhs.currentState,rhs.currentState) {
        case (.idle,.idle):
            return true
        case (.running,.running):
            return true
        case(.done(let left),.done(let right)):
            return left == right
        default:
            return false
        }
    }
}

extension Future: TypeConstructor {
    public typealias ParameterType = Parameter
}

public extension Future {
    typealias Generic<A> = Future<A>
}

extension Future: PureConstructible {
    public static func pure(_ value: ParameterType) -> Future {
        return Future.init { $0(value) }
    }
}


public extension Future {
    func map <A> (_ transform: @escaping (ParameterType) -> A) -> Future<A> {
        return Generic.init { done in
            self.run { value in done(transform(value)) }
        }
    }
    
    static func lift<A>(_ function: @escaping (ParameterType) -> A) -> (Future) -> Future<A> {
        return { $0.map(function) }
    }
    
    static func lift<A,B>(_ function: @escaping (A, B) -> ParameterType) -> (Future<A>, Future<B>) -> Future {
        return { (ap1, ap2) in
            Generic.pure(f.curry(function)) <*> ap1 <*> ap2
        }
    }
    
    static func lift<A,B,C>(_ function: @escaping (A, B, C) -> ParameterType) -> (Future<A>, Future<B>, Future<C>) -> Future {
        return { (ap1, ap2, ap3) in
            Generic.pure(f.curry(function)) <*> ap1 <*> ap2 <*> ap3
        }
    }
}

public extension Future {
    static func zipParallel <A,B> (_ first: Future<A>, _ second: Future<B>) -> Future<(A,B)> where ParameterType == (A,B) {
        return Generic.init { done in
            var tuple: (A?,B?) = (nil,nil)
            
            first.run { value in
                tuple.0 = value
                guard let first = tuple.0, let second = tuple.1 else { return }
                done((first,second))
            }
            
            second.run { value in
                tuple.1 = value
                guard let first = tuple.0, let second = tuple.1 else { return }
                done((first,second))
            }
        }
    }
    
    static func zipSerial <A,B> (_ first: Future<A>, _ second: Future<B>) -> Future<(A,B)> where ParameterType == (A,B) {
        return first.flatMap { firstValue in
            second.map { secondValue in (firstValue, secondValue) }
        }
    }
}

public extension Future {
    func applyParallel <A> (_ transform: Future<(ParameterType) -> A>) -> Future<A> {
        return Generic.zipParallel(self, transform).map { value, function in function(value) }
    }
    
    func applySerial <A> (_ transform: Future<(ParameterType) -> A>) -> Future<A> {
        return Generic.zipSerial(self, transform).map { value, function in function(value) }
    }
    
    static func <*> <A> (lhs: Future<(ParameterType) -> A>, rhs: Future) -> Future<A> {
        return rhs.applyParallel(lhs)
    }
}

public extension Future {
    func joined <A> () -> Future<A> where ParameterType == Future<A> {
        return Generic.init { done in self.run { $0.run(done) } }
    }

    func flatMap <A> (_ transform: @escaping (ParameterType) -> Future<A>) -> Future<A> {
        return map(transform).joined()
    }
}

public extension Future {
    static func after(_ delay: Double, pure value: ParameterType) -> Future {
        return Future.init { done in
            DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                done(value)
            }
        }
    }
}




//
//import Dispatch
//
//// MARK: - Definiton
//
//// sourcery: split3
//// sourcery: functor
//// sourcery: monad
//// sourcery: concrete = "Future"
//// sourcery: escapingHOF
//public protocol FutureType: PureConstructible {
//	static func from(concrete: Concrete<ParameterType>) -> Self
//	@discardableResult func run (_ callback: @escaping (ParameterType) -> ()) -> Self
//	static func unfold(_ continuation: @escaping (@escaping (ParameterType) -> ()) -> ()) -> Self
//}
//
//fileprivate enum FutureState<T> {
//    case idle
//    case running
//    case done(T)
//}
//
//// MARK: - Data
//
//// sourcery: testFunctor
//// sourcery: testApplicative
//// sourcery: testMonad
//// sourcery: testConstruct = "unfold { $0(x) }"
//// sourcery: testNeedsCommand = "start()"
//public final class Future<A>: FutureType {
//    public typealias ParameterType = A
//
//    private let continuation: (@escaping (A) -> ()) -> ()
//    private init(_ continuation: @escaping (@escaping (A) -> ()) -> ()) {
//        self.continuation = continuation
//    }
//
//    private var callbacks: [(A) -> ()] = []
//    private var currentState = FutureState<A>.idle
//
//    public static func from(concrete: Future<A>) -> Future<A> {
//        return concrete
//    }
//
//    @discardableResult
//    public func start() -> Future<A> {
//        guard case .idle = currentState else { return self }
//        currentState = .running
//        continuation { value in
//            self.currentState = .done(value)
//            self.callbacks.forEach { $0(value) }
//            self.callbacks.removeAll()
//        }
//        return self
//    }
//
//    @discardableResult
//    public func run(_ callback: @escaping (A) -> ()) -> Future<A> {
//        switch currentState {
//        case .idle:
//            callbacks.append(callback)
//            return start()
//        case .running:
//            callbacks.append(callback)
//            return self
//        case .done(let value):
//            callback(value)
//            return self
//        }
//    }
//
//    public static func unfold(_ continuation: @escaping (@escaping (A) -> ()) -> ()) -> Future<A> {
//        return Future<A>.init(continuation)
//    }
//}
//
//// MARK: - Concrete
//
//public extension FutureType {
//	typealias Concrete<T> = Future<T>
//}
//
//// MARK: - Equatable
//
//extension Future: Equatable where A: Equatable {
//    public static func == (lhs: Future, rhs: Future) -> Bool {
//        switch (lhs.currentState,rhs.currentState) {
//        case (.idle,.idle):
//            return true
//        case (.running,.running):
//            return true
//        case(.done(let left),.done(let right)):
//            return left == right
//        default:
//            return false
//        }
//    }
//}
//
//// MARK: - Functor
//
//public extension FutureType {
//    func map <T> (_ transform: @escaping (ParameterType) -> T) -> Future<T> {
//        return Future.unfold { done in
//            self.run { value in done(transform(value)) }
//        }
//    }
//
//    static func lift<A>(_ function: @escaping (ParameterType) -> A) -> (Self) -> Future<A> {
//        return { $0.map(function) }
//    }
//
//    static func lift<A,Applicative2>(_ function: @escaping (ParameterType, Applicative2.ParameterType) -> A) -> (Self, Applicative2) -> Future<A> where Applicative2: FutureType {
//        return { (ap1, ap2) in
//            Concrete.pure(f.curry(function)) <*> ap1 <*> ap2
//        }
//    }
//
//    static func lift<A,Applicative2,Applicative3>(_ function: @escaping (ParameterType, Applicative2.ParameterType, Applicative3.ParameterType) -> A) -> (Self, Applicative2, Applicative3) -> Future<A> where Applicative2: FutureType, Applicative3: FutureType {
//        return { ap1, ap2, ap3 in
//            Concrete.pure(f.curry(function)) <*> ap1 <*> ap2 <*> ap3
//        }
//    }
//}
//
//// MARK: - Cartesian
//
//public extension FutureType {
//    static func zipParallel <F1,F2> (_ first: F1, _ second: F2) -> Future<(F1.ParameterType,F2.ParameterType)> where F1: FutureType, F2: FutureType, ParameterType == (F1.ParameterType,F2.ParameterType) {
//        return Future.unfold { done in
//            var tuple: (F1.ParameterType?,F2.ParameterType?) = (nil,nil)
//
//            first.run { value in
//                tuple.0 = value
//                guard let first = tuple.0, let second = tuple.1 else { return }
//                done((first,second))
//            }
//
//            second.run { value in
//                tuple.1 = value
//                guard let first = tuple.0, let second = tuple.1 else { return }
//                done((first,second))
//            }
//        }
//    }
//
//    static func zipSerial <F1,F2> (_ first: F1, _ second: F2) -> Future<(F1.ParameterType,F2.ParameterType)> where F1: FutureType, F2: FutureType, ParameterType == (F1.ParameterType,F2.ParameterType) {
//        return first.flatMap { firstValue in
//            second.map { secondValue in (firstValue, secondValue) }
//        }
//    }
//}
//
//// MARK: - Applicative
//
//public extension FutureType {
//	static func pure(_ value: ParameterType) -> Future<ParameterType> {
//		return Future.unfold { $0(value) }.start()
//	}
//
//    func applyParallel <F,T> (_ transform: F) -> Future<T> where F: FutureType, F.ParameterType == (ParameterType) -> T {
//        return Future.zipParallel(self, transform).map { value, function in function(value) }
//    }
//
//    func applySerial <F,T> (_ transform: F) -> Future<T> where F: FutureType, F.ParameterType == (ParameterType) -> T {
//        return Future.zipSerial(self, transform).map { value, function in function(value) }
//    }
//
//    static func <*> <F,T> (lhs: F, rhs: Self) -> Future<T> where F: FutureType, F.ParameterType == (ParameterType) -> T {
//        return rhs.applyParallel(lhs)
//    }
//}
//
//// MARK: - Monad
//
//public extension FutureType where ParameterType: FutureType {
//    func joined() -> Future<ParameterType.ParameterType> {
//        return Future.unfold { done in self.run { $0.run(done) } }
//    }
//}
//
//public extension FutureType {
//    func flatMap <F> (_ transform: @escaping (ParameterType) -> F) -> Future<F.ParameterType> where F: FutureType {
//        return map(transform).joined()
//    }
//}
//
//// MARK: - Utility
//
//public extension FutureType {
//    static func after(_ delay: Double, pure value: ParameterType) -> Future<ParameterType> {
//        return Future<ParameterType>.unfold { done in
//            DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
//                done(value)
//            }
//        }
//    }
//}
