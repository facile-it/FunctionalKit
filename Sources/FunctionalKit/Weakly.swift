#if !XCODE_BUILD
    import Operadics
#endif
import Abstract

public func weakly<T,I,O>(_ reference: T?, onNil onNilValue: @autoclosure @escaping () -> O, closure: @escaping (T,I) -> O) -> (I) -> O where T: AnyObject {
	return { [weak reference] input in
		guard let some = reference else { return onNilValue() }
		return closure(some,input)
	}
}

public func weakly<T,I1,I2,O>(_ reference: T?, onNil onNilValue: @autoclosure @escaping () -> O, closure: @escaping (T,I1,I2) -> O) -> (I1,I2) -> O where T: AnyObject {
	return { [weak reference] (input1, input2) in
		guard let some = reference else { return onNilValue() }
		return closure(some,input1,input2)
	}
}

public func weakly<T,I1,I2,I3,O>(_ reference: T?, onNil onNilValue: @autoclosure @escaping () -> O, closure: @escaping (T,I1,I2,I3) -> O) -> (I1,I2,I3) -> O where T: AnyObject {
	return { [weak reference] (input1, input2, input3) in
		guard let some = reference else { return onNilValue() }
		return closure(some,input1,input2,input3)
	}
}

public func weakly<T,O>(_ reference: T?, onNil onNilValue: @autoclosure @escaping () -> O, closure: @escaping (T) -> O) -> () -> O where T: AnyObject {
	return { [weak reference] in
		guard let some = reference else { return onNilValue() }
		return closure(some)
	}
}

public func weakly<T,I>(_ reference: T?, closure: @escaping (T,I) -> ()) -> (I) -> () where T: AnyObject {
	return { [weak reference] input in
		guard let some = reference else { return }
		closure(some,input)
	}
}

public func weakly<T,I1,I2>(_ reference: T?, closure: @escaping (T,I1,I2) -> ()) -> (I1,I2) -> () where T: AnyObject {
	return { [weak reference] (input1, input2) in
		guard let some = reference else { return }
		closure(some,input1,input2)
	}
}

public func weakly<T,I1,I2,I3>(_ reference: T?, closure: @escaping (T,I1,I2,I3) -> ()) -> (I1,I2,I3) -> () where T: AnyObject {
	return { [weak reference] (input1, input2, input3) in
		guard let some = reference else { return }
		closure(some,input1,input2,input3)
	}
}

public func weakly<T>(_ reference: T?, closure: @escaping (T) -> ()) -> () -> () where T: AnyObject {
	return { [weak reference] in
		guard let some = reference else { return }
		closure(some)
	}
}
