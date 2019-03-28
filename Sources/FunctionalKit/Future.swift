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
// sourcery: testFunctor
// sourcery: testApplicative
// sourcery: testMonad
// sourcery: testConstruct = "init { $0(x) }"
// sourcery: testNeedsCommand = "start()"
public final class Future<Parameter> {
    private var continuation: ((@escaping (Parameter) -> ()) -> ())?
    public init(_ continuation: @escaping (@escaping (Parameter) -> ()) -> ()) {
        self.continuation = continuation
    }
    
    private var callbacks: [(Parameter) -> ()] = []
    private var currentState = FutureState<Parameter>.idle
    
    @discardableResult
    public func start() -> Future {
        guard case .idle = currentState, let currentContinuation = continuation else { return self }
        currentState = .running
        currentContinuation { value in
            self.currentState = .done(value)
            self.callbacks.forEach { $0(value) }
            self.callbacks.removeAll()
        }
        self.continuation = nil
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

    func callParallel <A,B> (_ value: Future<A>) -> Future<B> where ParameterType == (A) -> B {
        return Generic.zipParallel(self, value)
            .map { function, value in function(value) }
    }

    func callSerial <A,B> (_ value: Future<A>) -> Future<B> where ParameterType == (A) -> B {
        return Generic.zipSerial(self, value)
            .map { function, value in function(value) }
    }
    
    static func <*> <A> (lhs: Future<(ParameterType) -> A>, rhs: Future) -> Future<A> {
        return lhs.callSerial(rhs)
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

    static func after(_ delay: Double, call: @escaping () -> ParameterType) -> Future {
        return Future.init { done in
            DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                done(call())
            }
        }
    }
}
