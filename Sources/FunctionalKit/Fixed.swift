public func identity <A> (_ a: A) -> A {
	return a
}

public func identity <A,B> (_ a: A, _ b: B) -> (A,B) {
	return (a,b)
}

public func identity <A,B,C> (_ a: A, _ b: B, _ c: C) -> (A,B,C) {
	return (a,b,c)
}

public func constant <A,B> (_ a : A) -> (B) -> A {
	return { _ in a }
}

public func destructure <A,B,T> (_ function: @escaping (A,B) -> T) -> ((A,B)) -> T {
	return { tuple in function(tuple.0,tuple.1) }
}

public func destructure <A,B,C,T> (_ function: @escaping (A,B,C) -> T) -> ((A,B,C)) -> T {
	return { tuple in function(tuple.0,tuple.1,tuple.2) }
}

public func ignore () {}

public func ignore <A> (_ a: A) {}

public func ignore <A,B> (_ a: A, _ b: B) {}

public func ignore <A,B,C> (_ a: A, _ b: B, _ c: C) {}

public func first <A,B> (_ a: A, _ b: B) -> A {
	return a
}

public func first <A,B,C> (_ a: A, _ b: B, _ c: C) -> A {
	return a
}

public func second <A,B> (_ a: A, _ b: B) -> B {
	return b
}

public func second <A,B,C> (_ a: A, _ b: B, _ c: C) -> B {
	return b
}

public func third <A,B,C> (_ a: A, _ b: B, _ c: C) -> C {
	return c
}

public func flatten <A,B,C> (_ ab: (A,B), c: C) -> (A,B,C) {
	return (ab.0, ab.1, c)
}

public func flatten <A,B,C> (_ a: A, bc: (B,C)) -> (A,B,C) {
	return (a, bc.0, bc.1)
}

public func flatten <A,B> (_ ab: ((A,B))) -> (A,B) {
	return ab
}

public func flatten <A,B,C> (_ abc: ((A,B,C))) -> (A,B,C) {
	return abc
}

public func duplicate<A> (_ a: A) -> (A,A) {
	return (a,a)
}

public func duplicate <A,B> (_ f: @escaping (A) -> B) -> (A,A) -> (B,B) {
	return { (a1,a2)  in (f(a1),f(a2)) }
}

public func triplicate <A> (_ a: A) -> (A,A,A) {
	return (a,a,a)
}

public func triplicate <A,B> (_ f: @escaping (A) -> B) -> (A,A,A) -> (B,B,B) {
	return { (a1,a2,a3)  in (f(a1),f(a2),f(a3)) }
}
