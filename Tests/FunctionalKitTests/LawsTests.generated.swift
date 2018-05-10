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
        ("testCoproductBifunctorIdentity",testCoproductBifunctorIdentity),
        ("testCoproductBifunctorComposition",testCoproductBifunctorComposition),
        ("testInclusiveBifunctorIdentity",testInclusiveBifunctorIdentity),
        ("testInclusiveBifunctorComposition",testInclusiveBifunctorComposition),
        ("testProductBifunctorIdentity",testProductBifunctorIdentity),
        ("testProductBifunctorComposition",testProductBifunctorComposition),
    ]

}
