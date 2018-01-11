#if SWIFT_PACKAGE
	import Operadics
#endif
import Abstract

extension f {

	public static func identity <A> (_ a: A) -> A {
		return a
	}

	public static func identity <A,B> (_ a: A, _ b: B) -> (A,B) {
		return (a,b)
	}

	public static func identity <A,B,C> (_ a: A, _ b: B, _ c: C) -> (A,B,C) {
		return (a,b,c)
	}

	public static func constant <A> (_ a : A) -> () -> A {
		return { a }
	}

	public static func constant <A,B> (_ a : A) -> (B) -> A {
		return { _ in a }
	}

	public static func constant <A,B,C> (_ a : A) -> (B,C) -> A {
		return { _, _ in a }
	}

	public static func constant <A,B,C,D> (_ a : A) -> (B,C,D) -> A {
		return { _, _, _ in a }
	}

	public static func destructure <A,B,T> (_ function: @escaping (A,B) -> T) -> ((A,B)) -> T {
		return { tuple in function(tuple.0,tuple.1) }
	}

	public static func destructure <A,B,C,T> (_ function: @escaping (A,B,C) -> T) -> ((A,B,C)) -> T {
		return { tuple in function(tuple.0,tuple.1,tuple.2) }
	}

	public static func ignore () {}

	public static func ignore <A> (_ a: A) {}

	public static func ignore <A,B> (_ a: A, _ b: B) {}

	public static func ignore <A,B,C> (_ a: A, _ b: B, _ c: C) {}

	public static func first <A,B> (_ a: A, _ b: B) -> A {
		return a
	}

	public static func first <A,B,C> (_ a: A, _ b: B, _ c: C) -> A {
		return a
	}

	public static func second <A,B> (_ a: A, _ b: B) -> B {
		return b
	}

	public static func second <A,B,C> (_ a: A, _ b: B, _ c: C) -> B {
		return b
	}

	public static func third <A,B,C> (_ a: A, _ b: B, _ c: C) -> C {
		return c
	}

	public static func flatten <A,B,C> (_ ab: (A,B), _ c: C) -> (A,B,C) {
		return (ab.0, ab.1, c)
	}

	public static func flatten <A,B,C> (_ a: A, _ bc: (B,C)) -> (A,B,C) {
		return (a, bc.0, bc.1)
	}

	public static func flatten <A,B> (_ ab: ((A,B))) -> (A,B) {
		return ab
	}

	public static func flatten <A,B,C> (_ abc: ((A,B,C))) -> (A,B,C) {
		return abc
	}

	public static func zip <A1,B1,A2,B2> (_ f1: @escaping (A1) -> B1, _ f2: @escaping (A2) -> (B2)) -> (A1,A2) -> (B1,B2) {
		return { a1, a2 in
			(f1(a1),f2(a2))
		}
	}

	public static func zip <A1,B1,A2,B2,A3,B3> (_ f1: @escaping (A1) -> B1, _ f2: @escaping (A2) -> B2, _ f3: @escaping (A3) -> B3) -> (A1,A2,A3) -> (B1,B2,B3) {
		return { a1, a2, a3 in
			(f1(a1),f2(a2),f3(a3))
		}
	}

	public static func duplicate <A> (_ a: A) -> (A,A) {
		return (a,a)
	}

	public static func duplicate <A,B> (_ f: @escaping (A) -> B) -> (A,A) -> (B,B) {
		return zip(f, f)
	}

	public static func triplicate <A> (_ a: A) -> (A,A,A) {
		return (a,a,a)
	}

	public static func triplicate <A,B> (_ f: @escaping (A) -> B) -> (A,A,A) -> (B,B,B) {
		return zip(f, f, f)
	}
}
