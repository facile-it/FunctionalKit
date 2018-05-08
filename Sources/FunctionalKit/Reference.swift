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

public extension Ref {
	var retrieve: Effect<T> {
		return Effect<T>.unfold { [unowned self] in
			self.value
		}
	}

	var update: Coeffect<T> {
		return Coeffect<T>.unfold { [unowned self] newValue in
			self.value = newValue
		}
	}

	var modify: Coeffect<Endo<T>> {
		return Coeffect<Endo<T>>.unfold { [unowned self] endo in
			self.value = endo(self.value)
		}
	}
}

public extension Ref where T: Semigroup {
	var append: Coeffect<T> {
		return Coeffect<T>.unfold { [unowned self] newValue in
			self.value = self.value <> newValue
		}
	}
}
