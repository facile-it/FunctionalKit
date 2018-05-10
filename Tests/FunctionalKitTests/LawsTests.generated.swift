// Generated using Sourcery 0.11.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT









import XCTest
@testable import FunctionalKit
import SwiftCheck
#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

class LawsTests: XCTestCase {















//MARK: - Array - Functor

    func testArrayFunctorIdentity() {
        property("Array - Functor Laws - Identity") <- forAll { (x: String) in
            let a = Array<String>.init([x])
            return (a.map(f.identity) == a)
        }
    }

    func testArrayFunctorComposition() {
        property("Array - Functor Laws - Composition") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
            let a = Array<String>.init([x])
            let fLifted = f.flip(Array<String>.fmap)(af.getArrow)
            let gLifted = f.flip(Array<String>.fmap)(ag.getArrow)
            return ((fLifted >>> gLifted)(a) == a.fmap(af.getArrow >>> ag.getArrow))
        }
    }



//MARK: - Array - Applicative

    func testArrayApplicativeIdentity() {
        property("Array - Applicative Laws - Identity") <- forAll { (x: String) in
            let a_a = Array<Endo<String>>.pure(f.identity)
            let a = Array<String>.pure(x)
            return ((a_a <*> a) == a)
        }
    }

    func testArrayApplicativeHomomorphism() {
        property("Array - Applicative Laws - Homomorphism") <- forAll { (af: ArrowOf<String,String>, x: String) in
            let a_a = Array<Endo<String>>.pure(af.getArrow)
            let a1 = Array<String>.pure(x)
            let a2 = Array<String>.pure(af.getArrow(x))
            return ((a_a <*> a1) == a2)
        }
    }

    func testArrayApplicativeInterchange() {
        property("Array - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, x: String) in
            let a_a = Array<Endo<String>>.pure(af.getArrow)
            let a = Array<String>.pure(x)
            let a_a_a = Array<(@escaping Endo<String>) -> String>.pure { $0(x) }
            return ((a_a <*> a) == (a_a_a <*> a_a))
        }
    }

    func testArrayApplicativeComposition() {
        property("Array - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
            let a = Array<String>.pure(x)
            let a_a1 = Array<Endo<String>>.pure(af.getArrow)
            let a_a2 = Array<Endo<String>>.pure(ag.getArrow)
            let a_a_a = Array<(@escaping Endo<String>) -> (@escaping Endo<String>) -> Endo<String>>.pure(f.curry(f.compose))
            return ((a_a_a <*> a_a1 <*> a_a2 <*> a) == (a_a2 <*> (a_a1 <*> a)))
        }
    }

//MARK: - Array - Monad

    func testArrayMonadLeftIdentity() {
        property("Array - Monad Laws - Left Identity") <- forAll { (af: ArrowOf<String,String>, x: String) in
            let a = Array<String>.pure(x)
            let a_ma: (String) -> Array<String> = { y in Array<String>.pure(af.getArrow(y)) }
            return (a.flatMap(a_ma) == a_ma(x))
        }
    }

    func testArrayMonadRightIdentity() {
        property("Array - Monad Laws - Right Identity") <- forAll { (x: String) in
            let a = Array<String>.pure(x)
            return (a.flatMap(Array<String>.pure) == a)
        }
    }

    func testArrayMonadAssociativity() {
        property("Array - Monad Laws - Associativity") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
            let a = Array<String>.pure(x)
            let a_ma1: (String) -> Array<String> = { y in Array<String>.pure(af.getArrow(y)) }
            let a_ma2: (String) -> Array<String> = { y in Array<String>.pure(ag.getArrow(y)) }
            return (a.flatMap(a_ma1).flatMap(a_ma2) == a.flatMap{ y in a_ma1(y).flatMap(a_ma2) })
        }
    }







//MARK: - Coproduct - Bifunctor

    func testCoproductBifunctorIdentity() {
        property("Coproduct - Bifunctor Laws - Identity") <- forAll { (x: String, y: String) in
            let a = Coproduct<String,String>.random(x,y)
            return (a.bimap(f.identity,f.identity) == a)
        }
    }

    func testCoproductBifunctorComposition() {
        property("Coproduct - Bifunctor Laws - Composition") <- forAll { (x: String, y: String, f1: ArrowOf<String,String>, f2: ArrowOf<String,String>, g1: ArrowOf<String,String>, g2: ArrowOf<String,String>) in
            let a = Coproduct<String,String>.random(x,y)
            let fLifted: Endo<Coproduct<String,String>> = { t in t.bimap(f1.getArrow, f2.getArrow) }
            let gLifted: Endo<Coproduct<String,String>> = { t in t.bimap(g1.getArrow, g2.getArrow) }
            return ((fLifted >>> gLifted)(a) == a.bimap(f1.getArrow >>> g1.getArrow,f2.getArrow >>> g2.getArrow))
        }
    }














//MARK: - Effect - Functor

    func testEffectFunctorIdentity() {
        property("Effect - Functor Laws - Identity") <- forAll { (x: String) in
            let a = Effect<String>.init { x }
            return (a.map(f.identity).run() == a.run())
        }
    }

    func testEffectFunctorComposition() {
        property("Effect - Functor Laws - Composition") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
            let a = Effect<String>.init { x }
            let fLifted = f.flip(Effect<String>.map)(af.getArrow)
            let gLifted = f.flip(Effect<String>.map)(ag.getArrow)
            return ((fLifted >>> gLifted)(a).run() == a.map(af.getArrow >>> ag.getArrow).run())
        }
    }



//MARK: - Effect - Applicative

    func testEffectApplicativeIdentity() {
        property("Effect - Applicative Laws - Identity") <- forAll { (x: String) in
            let a_a = Effect<Endo<String>>.pure(f.identity)
            let a = Effect<String>.pure(x)
            return ((a_a <*> a).run() == a.run())
        }
    }

    func testEffectApplicativeHomomorphism() {
        property("Effect - Applicative Laws - Homomorphism") <- forAll { (af: ArrowOf<String,String>, x: String) in
            let a_a = Effect<Endo<String>>.pure(af.getArrow)
            let a1 = Effect<String>.pure(x)
            let a2 = Effect<String>.pure(af.getArrow(x))
            return ((a_a <*> a1).run() == a2.run())
        }
    }

    func testEffectApplicativeInterchange() {
        property("Effect - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, x: String) in
            let a_a = Effect<Endo<String>>.pure(af.getArrow)
            let a = Effect<String>.pure(x)
            let a_a_a = Effect<(@escaping Endo<String>) -> String>.pure { $0(x) }
            return ((a_a <*> a).run() == (a_a_a <*> a_a).run())
        }
    }

    func testEffectApplicativeComposition() {
        property("Effect - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
            let a = Effect<String>.pure(x)
            let a_a1 = Effect<Endo<String>>.pure(af.getArrow)
            let a_a2 = Effect<Endo<String>>.pure(ag.getArrow)
            let a_a_a = Effect<(@escaping Endo<String>) -> (@escaping Endo<String>) -> Endo<String>>.pure(f.curry(f.compose))
            return ((a_a_a <*> a_a1 <*> a_a2 <*> a).run() == (a_a2 <*> (a_a1 <*> a)).run())
        }
    }

//MARK: - Effect - Monad

    func testEffectMonadLeftIdentity() {
        property("Effect - Monad Laws - Left Identity") <- forAll { (af: ArrowOf<String,String>, x: String) in
            let a = Effect<String>.pure(x)
            let a_ma: (String) -> Effect<String> = { y in Effect<String>.pure(af.getArrow(y)) }
            return (a.flatMap(a_ma).run() == a_ma(x).run())
        }
    }

    func testEffectMonadRightIdentity() {
        property("Effect - Monad Laws - Right Identity") <- forAll { (x: String) in
            let a = Effect<String>.pure(x)
            return (a.flatMap(Effect<String>.pure).run() == a.run())
        }
    }

    func testEffectMonadAssociativity() {
        property("Effect - Monad Laws - Associativity") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
            let a = Effect<String>.pure(x)
            let a_ma1: (String) -> Effect<String> = { y in Effect<String>.pure(af.getArrow(y)) }
            let a_ma2: (String) -> Effect<String> = { y in Effect<String>.pure(ag.getArrow(y)) }
            return (a.flatMap(a_ma1).flatMap(a_ma2).run() == a.flatMap{ y in a_ma1(y).flatMap(a_ma2) }.run())
        }
    }

















//MARK: - Inclusive - Bifunctor

    func testInclusiveBifunctorIdentity() {
        property("Inclusive - Bifunctor Laws - Identity") <- forAll { (x: String, y: String) in
            let a = Inclusive<String,String>.random(x,y)
            return (a.bimap(f.identity,f.identity) == a)
        }
    }

    func testInclusiveBifunctorComposition() {
        property("Inclusive - Bifunctor Laws - Composition") <- forAll { (x: String, y: String, f1: ArrowOf<String,String>, f2: ArrowOf<String,String>, g1: ArrowOf<String,String>, g2: ArrowOf<String,String>) in
            let a = Inclusive<String,String>.random(x,y)
            let fLifted: Endo<Inclusive<String,String>> = { t in t.bimap(f1.getArrow, f2.getArrow) }
            let gLifted: Endo<Inclusive<String,String>> = { t in t.bimap(g1.getArrow, g2.getArrow) }
            return ((fLifted >>> gLifted)(a) == a.bimap(f1.getArrow >>> g1.getArrow,f2.getArrow >>> g2.getArrow))
        }
    }













































//MARK: - Product - Bifunctor

    func testProductBifunctorIdentity() {
        property("Product - Bifunctor Laws - Identity") <- forAll { (x: String, y: String) in
            let a = Product<String,String>.init(x,y)
            return (a.bimap(f.identity,f.identity) == a)
        }
    }

    func testProductBifunctorComposition() {
        property("Product - Bifunctor Laws - Composition") <- forAll { (x: String, y: String, f1: ArrowOf<String,String>, f2: ArrowOf<String,String>, g1: ArrowOf<String,String>, g2: ArrowOf<String,String>) in
            let a = Product<String,String>.init(x,y)
            let fLifted: Endo<Product<String,String>> = { t in t.bimap(f1.getArrow, f2.getArrow) }
            let gLifted: Endo<Product<String,String>> = { t in t.bimap(g1.getArrow, g2.getArrow) }
            return ((fLifted >>> gLifted)(a) == a.bimap(f1.getArrow >>> g1.getArrow,f2.getArrow >>> g2.getArrow))
        }
    }




























































    static var allTests = [
        ("testArrayFunctorIdentity",testArrayFunctorIdentity),
        ("testArrayFunctorComposition",testArrayFunctorComposition),
        ("testArrayApplicativeIdentity",testArrayApplicativeIdentity),
        ("testArrayApplicativeHomomorphism",testArrayApplicativeHomomorphism),
        ("testArrayApplicativeInterchange",testArrayApplicativeInterchange),
        ("testArrayApplicativeComposition",testArrayApplicativeComposition),
        ("testArrayMonadLeftIdentity",testArrayMonadLeftIdentity),
        ("testArrayMonadRightIdentity",testArrayMonadRightIdentity),
        ("testArrayMonadAssociativity",testArrayMonadAssociativity),
        ("testCoproductBifunctorIdentity",testCoproductBifunctorIdentity),
        ("testCoproductBifunctorComposition",testCoproductBifunctorComposition),
        ("testEffectFunctorIdentity",testEffectFunctorIdentity),
        ("testEffectFunctorComposition",testEffectFunctorComposition),
        ("testEffectApplicativeIdentity",testEffectApplicativeIdentity),
        ("testEffectApplicativeHomomorphism",testEffectApplicativeHomomorphism),
        ("testEffectApplicativeInterchange",testEffectApplicativeInterchange),
        ("testEffectApplicativeComposition",testEffectApplicativeComposition),
        ("testEffectMonadLeftIdentity",testEffectMonadLeftIdentity),
        ("testEffectMonadRightIdentity",testEffectMonadRightIdentity),
        ("testEffectMonadAssociativity",testEffectMonadAssociativity),
        ("testInclusiveBifunctorIdentity",testInclusiveBifunctorIdentity),
        ("testInclusiveBifunctorComposition",testInclusiveBifunctorComposition),
        ("testProductBifunctorIdentity",testProductBifunctorIdentity),
        ("testProductBifunctorComposition",testProductBifunctorComposition),
    ]

}
