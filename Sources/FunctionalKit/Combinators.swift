#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

extension f {
	public static func compose <A,B,C> (_ firstFunction: @escaping (A) -> B, _ secondFunction: @escaping (B) -> C) -> (A) -> C {
		return { secondFunction(firstFunction($0)) }
	}

	public static func compose <A,B,C> (_ firstFunction: @escaping (A) throws -> B, _ secondFunction: @escaping (B) -> C) -> (A) throws -> C {
		return { try secondFunction(firstFunction($0)) }
	}

	public static func compose <A,B,C> (_ firstFunction: @escaping (A) -> B, _ secondFunction: @escaping (B) throws -> C) -> (A) throws -> C {
		return { try secondFunction(firstFunction($0)) }
	}

	public static func compose <A,B,C> (_ firstFunction: @escaping (A) throws -> B, _ secondFunction: @escaping (B) throws -> C) -> (A) throws -> C {
		return { try secondFunction(firstFunction($0)) }
	}

	public static func flip<A,B,C>(_ function: @escaping (A) -> (B) -> C) -> (B) -> (A) -> C {
		return { b in { a in function(a)(b) } }
	}

	public static func flip<A,B,C>(_ function: @escaping (A) throws -> (B) -> C) -> (B) -> (A) throws -> C {
		return { b in { a in try function(a)(b) } }
	}

	public static func flip<A,B,C>(_ function: @escaping (A) -> (B) throws -> C) -> (B) throws -> (A) throws -> C {
		return { b in { a in try function(a)(b) } }
	}

	public static func flip<A,B,C>(_ function: @escaping (A) throws -> (B) throws -> C) -> (B) throws -> (A) throws -> C {
		return { b in { a in try function(a)(b) } }
	}
}

public func <<< <A,B,C> (second: @escaping (B) -> C, first: @escaping (A) -> B) -> (A) -> C {
	return f.compose(first, second)
}

public func <<< <A,B,C> (second: @escaping (B) -> C, first: @escaping (A) throws -> B) -> (A) throws -> C {
	return f.compose(first, second)
}

public func <<< <A,B,C> (second: @escaping (B) throws -> C, first: @escaping (A) -> B) -> (A) throws -> C {
	return f.compose(first, second)
}

public func <<< <A,B,C> (second: @escaping (B) throws -> C, first: @escaping (A) throws -> B) -> (A) throws -> C {
	return f.compose(first, second)
}

public func >>> <A,B,C> (first: @escaping (A) -> B, second: @escaping (B) -> C) -> (A) -> C {
	return f.compose(first, second)
}

public func >>> <A,B,C> (first: @escaping (A) throws -> B, second: @escaping (B) -> C) -> (A) throws -> C {
	return f.compose(first, second)
}

public func >>> <A,B,C> (first: @escaping (A) -> B, second: @escaping (B) throws -> C) -> (A) throws -> C {
	return f.compose(first, second)
}

public func >>> <A,B,C> (first: @escaping (A) throws -> B, second: @escaping (B) throws -> C) -> (A) throws -> C {
	return f.compose(first, second)
}

public func >< <A,B,C> (lhs: @escaping (A) -> (B) -> C, rhs: B) -> (A) -> C {
	return f.flip(lhs)(rhs)
}

public func >< <A,B,C> (lhs: @escaping (A) throws -> (B) -> C, rhs: B) -> (A) throws -> C {
	return f.flip(lhs)(rhs)
}

public func >< <A,B,C> (lhs: @escaping (A) -> (B) throws -> C, rhs: B) throws -> (A) throws -> C {
	return try f.flip(lhs)(rhs)
}

public func >< <A,B,C> (lhs: @escaping (A) throws -> (B) throws -> C, rhs: B) throws -> (A) throws -> C {
	return try f.flip(lhs)(rhs)
}

public func § <A,B> (function: (A) throws -> B, value: A) rethrows -> B {
	return try function(value)
}

public func |> <A,B> (value: A, function: (A) throws -> B) rethrows -> B {
	return try function(value)
}

public func <| <A,B> (function: (A) throws -> B, value: A) rethrows -> B {
	return try function(value)
}

public func <*> <A,B> (function: (A) throws -> B, value: A) rethrows -> B {
	return try function(value)
}
