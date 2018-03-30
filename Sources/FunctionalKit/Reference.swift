#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

public final class Ref<T> {
	public var value: T {
		didSet {
			notify()
		}
	}

	public init(_ value: T) {
		self.value = value
	}

	public func add(listener: AnyHashable, onNext: @escaping (T) ->()) {
		listeners[listener] = onNext
	}

	public func remove(listener: AnyHashable) {
		listeners[listener] = nil
	}

	public func removeAll() {
		listeners.removeAll()
	}

	public func notify() {
		listeners.values.forEach { $0(value) }
	}

	private var listeners: [AnyHashable : (T) -> ()] = [:]
}
