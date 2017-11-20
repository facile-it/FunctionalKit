import Operadics

public func compose <A,B,C> (_ first: @escaping (A) -> B, _ second: @escaping (B) -> C) -> (A) -> C {
	return { second(first($0)) }
}

public func compose <A,B,C> (_ first: @escaping (A) throws -> B, _ second: @escaping (B) -> C) -> (A) throws -> C {
	return { try second(first($0)) }
}

public func compose <A,B,C> (_ first: @escaping (A) -> B, _ second: @escaping (B) throws -> C) -> (A) throws -> C {
	return { try second(first($0)) }
}

public func compose <A,B,C> (_ first: @escaping (A) throws -> B, _ second: @escaping (B) throws -> C) -> (A) throws -> C {
	return { try second(first($0)) }
}

public func flip<A,B,C>(_ function: @escaping (A) -> (B) -> C) -> (B) -> (A) -> C {
	return { b in { a in function(a)(b) } }
}

public func flip<A,B,C>(_ function: @escaping (A) throws -> (B) -> C) -> (B) -> (A) throws -> C {
	return { b in { a in try function(a)(b) } }
}

public func flip<A,B,C>(_ function: @escaping (A) -> (B) throws -> C) -> (B) throws -> (A) throws -> C {
	return { b in { a in try function(a)(b) } }
}

public func flip<A,B,C>(_ function: @escaping (A) throws -> (B) throws -> C) -> (B) throws -> (A) throws -> C {
	return { b in { a in try function(a)(b) } }
}

public func • <A,B,C> (second: @escaping (B) -> C, first: @escaping (A) -> B) -> (A) -> C {
	return compose(first, second)
}

public func • <A,B,C> (second: @escaping (B) -> C, first: @escaping (A) throws -> B) -> (A) throws -> C {
	return compose(first, second)
}

public func • <A,B,C> (second: @escaping (B) throws -> C, first: @escaping (A) -> B) -> (A) throws -> C {
	return compose(first, second)
}

public func • <A,B,C> (second: @escaping (B) throws -> C, first: @escaping (A) throws -> B) -> (A) throws -> C {
	return compose(first, second)
}

public func .. <A,B,C> (first: @escaping (A) -> B, second: @escaping (B) -> C) -> (A) -> C {
	return compose(first, second)
}

public func .. <A,B,C> (first: @escaping (A) throws -> B, second: @escaping (B) -> C) -> (A) throws -> C {
	return compose(first, second)
}

public func .. <A,B,C> (first: @escaping (A) -> B, second: @escaping (B) throws -> C) -> (A) throws -> C {
	return compose(first, second)
}

public func .. <A,B,C> (first: @escaping (A) throws -> B, second: @escaping (B) throws -> C) -> (A) throws -> C {
	return compose(first, second)
}

public postfix func .. <A,B> (function: @escaping (A) -> B) -> (@escaping (B) -> (B)) -> (A) -> B {
	return { bc in compose(function, bc) }
}

public postfix func .. <A,B> (function: @escaping (A) throws -> B) -> (@escaping (B) -> (B)) -> (A) throws -> B {
	return { bc in compose(function, bc) }
}

public prefix func .. <B,C> (function: @escaping (B) -> C) -> (@escaping (B) -> (B)) -> (B) -> C {
	return { ab in compose(ab, function) }
}

public prefix func .. <B,C> (function: @escaping (B) throws -> C) -> (@escaping (B) -> (B)) -> (B) throws -> C {
	return { ab in compose(ab, function) }
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
