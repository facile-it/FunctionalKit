#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

public extension f {
	static func compose <A,B,C> (_ firstFunction: @escaping (A) -> B, _ secondFunction: @escaping (B) -> C) -> (A) -> C {
		return { secondFunction(firstFunction($0)) }
	}

	static func compose <A,B,C> (_ firstFunction: @escaping (A) throws -> B, _ secondFunction: @escaping (B) -> C) -> (A) throws -> C {
		return { try secondFunction(firstFunction($0)) }
	}

	static func compose <A,B,C> (_ firstFunction: @escaping (A) -> B, _ secondFunction: @escaping (B) throws -> C) -> (A) throws -> C {
		return { try secondFunction(firstFunction($0)) }
	}

	static func compose <A,B,C> (_ firstFunction: @escaping (A) throws -> B, _ secondFunction: @escaping (B) throws -> C) -> (A) throws -> C {
		return { try secondFunction(firstFunction($0)) }
	}

	static func flip<A,B,C>(_ function: @escaping (A) -> (B) -> C) -> (B) -> (A) -> C {
		return { b in { a in function(a)(b) } }
	}

	static func flip<A,B,C>(_ function: @escaping (A) throws -> (B) -> C) -> (B) -> (A) throws -> C {
		return { b in { a in try function(a)(b) } }
	}

	static func flip<A,B,C>(_ function: @escaping (A) -> (B) throws -> C) -> (B) throws -> (A) throws -> C {
		return { b in { a in try function(a)(b) } }
	}

	static func flip<A,B,C>(_ function: @escaping (A) throws -> (B) throws -> C) -> (B) throws -> (A) throws -> C {
		return { b in { a in try function(a)(b) } }
	}

	static func map <A, B> (_ transform: @escaping (A) -> B) -> ([A]) -> [B] {
		return  { $0.map(transform) }
	}

	static func map <A, B> (_ transform: @escaping (A) throws -> B) -> ([A]) throws -> [B] {
		return  { try $0.map(transform) }
	}

	static func filter <A> (_ predicate: @escaping (A) -> Bool) -> ([A]) -> [A] {
		return { $0.filter(predicate) }
	}

	static func filter <A> (_ predicate: @escaping (A) throws -> Bool) -> ([A]) throws -> [A] {
		return { try $0.filter(predicate) }
	}

	static func or <A, B> (_ fallback: @escaping (A) -> B) -> (@escaping (A) -> B?) -> (A) -> B {
		return { original in
			{ a in
				original(a).get(or: fallback(a))
			}
		}
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
