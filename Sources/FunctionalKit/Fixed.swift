//#if SWIFT_PACKAGE
//    import Operadics
//#endif
//import Abstract
//
//public extension f {
//
//    static func identity <A> (_ a: A) -> A {
//        return a
//    }
//
//    static func identity <A,B> (_ a: A, _ b: B) -> (A,B) {
//        return (a,b)
//    }
//
//    static func identity <A,B,C> (_ a: A, _ b: B, _ c: C) -> (A,B,C) {
//        return (a,b,c)
//    }
//
//    static func pure0 <A> (_ a : A) -> () -> A {
//        return { a }
//    }
//
//    static func pure <A,B> (_ a : A) -> (B) -> A {
//        return { _ in a }
//    }
//
//    static func pure2 <A,B,C> (_ a : A) -> (B,C) -> A {
//        return { _, _ in a }
//    }
//
//    static func pure3 <A,B,C,D> (_ a : A) -> (B,C,D) -> A {
//        return { _, _, _ in a }
//    }
//
//    static func destructure <A,B,T> (_ function: @escaping (A,B) -> T) -> ((A,B)) -> T {
//        return { tuple in function(tuple.0,tuple.1) }
//    }
//
//    static func destructure <A,B,C,T> (_ function: @escaping (A,B,C) -> T) -> ((A,B,C)) -> T {
//        return { tuple in function(tuple.0,tuple.1,tuple.2) }
//    }
//
//    static func ignore () {}
//
//    static func ignore <A> (_ a: A) {}
//
//    static func ignore <A,B> (_ a: A, _ b: B) {}
//
//    static func ignore <A,B,C> (_ a: A, _ b: B, _ c: C) {}
//
//    static func first <A,B> (_ a: A, _ b: B) -> A {
//        return a
//    }
//
//    static func first <A,B,C> (_ a: A, _ b: B, _ c: C) -> A {
//        return a
//    }
//
//    static func second <A,B> (_ a: A, _ b: B) -> B {
//        return b
//    }
//
//    static func second <A,B,C> (_ a: A, _ b: B, _ c: C) -> B {
//        return b
//    }
//
//    static func third <A,B,C> (_ a: A, _ b: B, _ c: C) -> C {
//        return c
//    }
//
//    static func flatten <A,B,C> (_ ab: (A,B), _ c: C) -> (A,B,C) {
//        return (ab.0, ab.1, c)
//    }
//
//    static func flatten <A,B,C> (_ a: A, _ bc: (B,C)) -> (A,B,C) {
//        return (a, bc.0, bc.1)
//    }
//
//    static func flatten <A,B> (_ ab: ((A,B))) -> (A,B) {
//        return ab
//    }
//
//    static func flatten <A,B,C> (_ abc: ((A,B,C))) -> (A,B,C) {
//        return abc
//    }
//
//    static func zip <A1,B1,A2,B2> (_ function1: @escaping (A1) -> B1, _ function2: @escaping (A2) -> (B2)) -> (A1,A2) -> (B1,B2) {
//        return { a1, a2 in
//            (function1(a1),function2(a2))
//        }
//    }
//
//    static func zip <A1,B1,A2,B2,A3,B3> (_ function1: @escaping (A1) -> B1, _ function2: @escaping (A2) -> B2, _ function3: @escaping (A3) -> B3) -> (A1,A2,A3) -> (B1,B2,B3) {
//        return { a1, a2, a3 in
//            (function1(a1),function2(a2),function3(a3))
//        }
//    }
//
//    static func duplicate <A> (_ a: A) -> (A,A) {
//        return (a,a)
//    }
//
//    static func duplicate <A,B> (_ function: @escaping (A) -> B) -> (A,A) -> (B,B) {
//        return zip(function, function)
//    }
//
//    static func triplicate <A> (_ a: A) -> (A,A,A) {
//        return (a,a,a)
//    }
//
//    static func triplicate <A,B> (_ function: @escaping (A) -> B) -> (A,A,A) -> (B,B,B) {
//        return zip(function, function, function)
//    }
//    
//    static func with<A> (_ function: @escaping (inout A) -> ()) -> (A) -> A {
//        return { a in
//            var m = a
//            function(&m)
//            return m
//        }
//    }
//    
//    static func asTuple <A,B,C> (_ function: @escaping (A,B) -> C) -> ((A,B)) -> C {
//        return { function($0.0,$0.1) }
//    }
//
//    static func embedFirst <A,B> (_ a: A) -> (B) -> (A,B) {
//        return { b in
//            (a,b)
//        }
//    }
//
//    static func embedSecond <A,B> (_ b: B) -> (A) -> (A,B) {
//        return { a in
//            (a,b)
//        }
//    }
//}
