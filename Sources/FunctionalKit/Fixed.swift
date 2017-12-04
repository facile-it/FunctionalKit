#if !XCODE_BUILD
    import Operadics
#endif
import Abstract

public func fidentity <A> (_ a: A) -> A {
	return a
}

public func fidentity <A,B> (_ a: A, _ b: B) -> (A,B) {
	return (a,b)
}

public func fidentity <A,B,C> (_ a: A, _ b: B, _ c: C) -> (A,B,C) {
	return (a,b,c)
}

public func fconstant <A> (_ a : A) -> () -> A {
	return { a }
}

public func fconstant <A,B> (_ a : A) -> (B) -> A {
	return { _ in a }
}

public func fconstant <A,B,C> (_ a : A) -> (B,C) -> A {
	return { _, _ in a }
}

public func fconstant <A,B,C,D> (_ a : A) -> (B,C,D) -> A {
	return { _, _, _ in a }
}

public func fdestructure <A,B,T> (_ function: @escaping (A,B) -> T) -> ((A,B)) -> T {
	return { tuple in function(tuple.0,tuple.1) }
}

public func fdestructure <A,B,C,T> (_ function: @escaping (A,B,C) -> T) -> ((A,B,C)) -> T {
	return { tuple in function(tuple.0,tuple.1,tuple.2) }
}

public func fignore () {}

public func fignore <A> (_ a: A) {}

public func fignore <A,B> (_ a: A, _ b: B) {}

public func fignore <A,B,C> (_ a: A, _ b: B, _ c: C) {}

public func ffirst <A,B> (_ a: A, _ b: B) -> A {
	return a
}

public func ffirst <A,B,C> (_ a: A, _ b: B, _ c: C) -> A {
	return a
}

public func fsecond <A,B> (_ a: A, _ b: B) -> B {
	return b
}

public func fsecond <A,B,C> (_ a: A, _ b: B, _ c: C) -> B {
	return b
}

public func fthird <A,B,C> (_ a: A, _ b: B, _ c: C) -> C {
	return c
}

public func fflatten <A,B,C> (_ ab: (A,B), _ c: C) -> (A,B,C) {
	return (ab.0, ab.1, c)
}

public func fflatten <A,B,C> (_ a: A, _ bc: (B,C)) -> (A,B,C) {
	return (a, bc.0, bc.1)
}

public func fflatten <A,B> (_ ab: ((A,B))) -> (A,B) {
	return ab
}

public func fflatten <A,B,C> (_ abc: ((A,B,C))) -> (A,B,C) {
	return abc
}

public func fzip<A1,B1,A2,B2>(_ f1: @escaping (A1) -> B1, _ f2: @escaping (A2) -> (B2)) -> (A1,A2) -> (B1,B2) {
	return { a1, a2 in
		(f1(a1),f2(a2))
	}
}

public func fzip<A1,B1,A2,B2,A3,B3>(_ f1: @escaping (A1) -> B1, _ f2: @escaping (A2) -> B2, _ f3: @escaping (A3) -> B3) -> (A1,A2,A3) -> (B1,B2,B3) {
	return { a1, a2, a3 in
		(f1(a1),f2(a2),f3(a3))
	}
}

public func fduplicate<A> (_ a: A) -> (A,A) {
	return (a,a)
}

public func fduplicate <A,B> (_ f: @escaping (A) -> B) -> (A,A) -> (B,B) {
	return fzip(f, f)
}

public func ftriplicate <A> (_ a: A) -> (A,A,A) {
	return (a,a,a)
}

public func ftriplicate <A,B> (_ f: @escaping (A) -> B) -> (A,A,A) -> (B,B,B) {
	return fzip(f, f, f)
}
