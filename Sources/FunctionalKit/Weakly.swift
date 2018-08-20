#if SWIFT_PACKAGE
	import Operadics
#endif
import Abstract

public extension f {

	static func weaklyOr<T,O>(_ reference: T?, onNil onNilValue: @autoclosure @escaping () -> O, closure: @escaping (T) -> O) -> () -> O where T: AnyObject {
		return { [weak reference] in
			guard let some = reference else { return onNilValue() }
			return closure(some)
		}
	}

	static func weaklyOr<T,I1,O>(_ reference: T?, onNil onNilValue: @autoclosure @escaping () -> O, closure: @escaping (T,I1) -> O) -> (I1) -> O where T: AnyObject {
		return { [weak reference] input in
			guard let some = reference else { return onNilValue() }
			return closure(some,input)
		}
	}

	static func weaklyOr<T,I1,I2,O>(_ reference: T?, onNil onNilValue: @autoclosure @escaping () -> O, closure: @escaping (T,I1,I2) -> O) -> (I1,I2) -> O where T: AnyObject {
		return { [weak reference] (input1, input2) in
			guard let some = reference else { return onNilValue() }
			return closure(some,input1,input2)
		}
	}

	static func weaklyOr<T,I1,I2,I3,O>(_ reference: T?, onNil onNilValue: @autoclosure @escaping () -> O, closure: @escaping (T,I1,I2,I3) -> O) -> (I1,I2,I3) -> O where T: AnyObject {
		return { [weak reference] (input1, input2, input3) in
			guard let some = reference else { return onNilValue() }
			return closure(some,input1,input2,input3)
		}
	}

	static func weakly<T>(_ reference: T?, closure: @escaping (T) -> ()) -> () -> () where T: AnyObject {
		return { [weak reference] in
			guard let some = reference else { return }
			closure(some)
		}
	}

	static func weakly<T,I1>(_ reference: T?, closure: @escaping (T,I1) -> ()) -> (I1) -> () where T: AnyObject {
		return { [weak reference] input in
			guard let some = reference else { return }
			closure(some,input)
		}
	}

	static func weakly<T,I1,I2>(_ reference: T?, closure: @escaping (T,I1,I2) -> ()) -> (I1,I2) -> () where T: AnyObject {
		return { [weak reference] (input1, input2) in
			guard let some = reference else { return }
			closure(some,input1,input2)
		}
	}

	static func weakly<T,I1,I2,I3>(_ reference: T?, closure: @escaping (T,I1,I2,I3) -> ()) -> (I1,I2,I3) -> () where T: AnyObject {
		return { [weak reference] (input1, input2, input3) in
			guard let some = reference else { return }
			closure(some,input1,input2,input3)
		}
	}
}
