import Operadics

// MARK: - Definiton

public protocol FutureType: TypeConstructor {
	static func from(concrete: Concrete<ParameterType>) -> Self
	func run (_ callback: @escaping (ParameterType) -> ())
	static func unfold(_ continuation: @escaping (@escaping (ParameterType) -> ()) -> ()) -> Self
}

fileprivate enum FutureState<T> {
    case idle
    case running
    case done(T)
}

// MARK: - Data
// sourcery: functor
// sourcery: testArgs = "(x: String)"
// sourcery: concrete = "Future<String>"
// sourcery: create = "unfold"
// sourcery: createParams = "({ $0(x) })"
// sourcery: map = "map"
// sourcery: mapParams = "(fidentity)"
public final class Future<A>: FutureType {
	public typealias ParameterType = A

	private let continuation: (@escaping (A) -> ()) -> ()
	private init(_ continuation: @escaping (@escaping (A) -> ()) -> ()) {
		self.continuation = continuation
	}

	private var callbacks: [(A) -> ()] = []
    private var currentState = FutureState<A>.idle

	public static func from(concrete: Future<A>) -> Future<A> {
		return concrete
	}

	@discardableResult
	public func start() -> Future<A> {
		guard case .idle = currentState else { return self }
		currentState = .running
		continuation(weakly(self) { this, value in
			this.currentState = .done(value)
			this.callbacks.forEach { $0(value) }
			this.callbacks.removeAll()
		})
		return self
	}

	public func run(_ callback: @escaping (A) -> ()) {
		switch currentState {
		case .idle:
			callbacks.append(callback)
			start()
		case .running:
			callbacks.append(callback)
		case .done(let value):
			callback(value)
		}
	}

	public static func unfold(_ continuation: @escaping (@escaping (A) -> ()) -> ()) -> Future<A> {
		return Future<A>.init(continuation)
	}
}

// MARK: - Concrete

extension FutureType {
	public typealias Concrete<T> = Future<T>
}

// MARK: - Equatable

extension Future where A: Equatable {
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

// MARK: - Functor

extension FutureType {
	public func map <T> (_ transform: @escaping (ParameterType) -> T) -> Future<T> {
		return Future.unfold { done in
			self.run { value in done(transform(value)) }
		}
	}
}

// MARK: - Cartesian

extension FutureType {
	public static func zipParallel <F1,F2> (_ first: F1, _ second: F2) -> Future<(F1.ParameterType,F2.ParameterType)> where F1: FutureType, F2: FutureType, ParameterType == (F1.ParameterType,F2.ParameterType) {
		return Future.unfold { done in
			var tuple: (F1.ParameterType?,F2.ParameterType?) = (nil,nil)

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
}

// MARK: - Applicative

extension FutureType {
	public static func pure(_ value: ParameterType) -> Future<ParameterType> {
		return Future.unfold { $0(value) }.start()
	}

	public func applyParallel <F,T> (_ transform: F) -> Future<T> where F: FutureType, F.ParameterType == (ParameterType) -> T {
		return Future.zipParallel(self, transform).map { value, function in function(value) }
	}

	public static func <*> <F,T> (lhs: F, rhs: Self) -> Future<T> where F: FutureType, F.ParameterType == (ParameterType) -> T {
		return Future.zipParallel(lhs, rhs).map { function, value in function(value) }
	}
}

// MARK: - Monad

extension FutureType where ParameterType: FutureType {
	public var joined: Future<ParameterType.ParameterType> {
		return Future.unfold { done in self.run { $0.run(done) } }
	}

	public func flatMap <F> (_ transform: @escaping (ParameterType) -> F) -> Future<F.ParameterType> where F: FutureType {
		return map(transform).joined
	}
}
