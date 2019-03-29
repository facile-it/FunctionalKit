// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
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

//    func testArrayApplicativeInterchange() {
//        property("Array - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, x: String) in
//            let a_a = Array<Endo<String>>.pure(af.getArrow)
//            let a = Array<String>.pure(x)
//            let a_a_a = Array<(@escaping Endo<String>) -> String>.pure { $0(x) }
//            return ((a_a <*> a) == (a_a_a <*> a_a))
//        }
//    }
//
//    func testArrayApplicativeComposition() {
//        property("Array - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
//            let a = Array<String>.pure(x)
//            let a_a1 = Array<Endo<String>>.pure(af.getArrow)
//            let a_a2 = Array<Endo<String>>.pure(ag.getArrow)
//            let a_a_a = Array<(@escaping Endo<String>) -> (@escaping Endo<String>) -> Endo<String>>.pure(f.curry(f.compose))
//            return ((a_a_a <*> a_a1 <*> a_a2 <*> a) == (a_a2 <*> (a_a1 <*> a)))
//        }
//    }
//
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






//MARK: - Future - Functor

    func testFutureFunctorIdentity() {
        property("Future - Functor Laws - Identity") <- forAll { (x: String) in
            let a = Future<String>.init { $0(x) }
            return (a.map(f.identity).start() == a.start())
        }
    }

    func testFutureFunctorComposition() {
        property("Future - Functor Laws - Composition") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
            let a = Future<String>.init { $0(x) }
            let fLifted = f.flip(Future<String>.map)(af.getArrow)
            let gLifted = f.flip(Future<String>.map)(ag.getArrow)
            return ((fLifted >>> gLifted)(a).start() == a.map(af.getArrow >>> ag.getArrow).start())
        }
    }



//MARK: - Future - Applicative

    func testFutureApplicativeIdentity() {
        property("Future - Applicative Laws - Identity") <- forAll { (x: String) in
            let a_a = Future<Endo<String>>.pure(f.identity)
            let a = Future<String>.pure(x)
            return ((a_a <*> a).start() == a.start())
        }
    }

    func testFutureApplicativeHomomorphism() {
        property("Future - Applicative Laws - Homomorphism") <- forAll { (af: ArrowOf<String,String>, x: String) in
            let a_a = Future<Endo<String>>.pure(af.getArrow)
            let a1 = Future<String>.pure(x)
            let a2 = Future<String>.pure(af.getArrow(x))
            return ((a_a <*> a1).start() == a2.start())
        }
    }

//    func testFutureApplicativeInterchange() {
//        property("Future - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, x: String) in
//            let a_a = Future<Endo<String>>.pure(af.getArrow)
//            let a = Future<String>.pure(x)
//            let a_a_a = Future<(@escaping Endo<String>) -> String>.pure { $0(x) }
//            return ((a_a <*> a).start() == (a_a_a <*> a_a).start())
//        }
//    }
//
//    func testFutureApplicativeComposition() {
//        property("Future - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
//            let a = Future<String>.pure(x)
//            let a_a1 = Future<Endo<String>>.pure(af.getArrow)
//            let a_a2 = Future<Endo<String>>.pure(ag.getArrow)
//            let a_a_a = Future<(@escaping Endo<String>) -> (@escaping Endo<String>) -> Endo<String>>.pure(f.curry(f.compose))
//            return ((a_a_a <*> a_a1 <*> a_a2 <*> a).start() == (a_a2 <*> (a_a1 <*> a)).start())
//        }
//    }

//MARK: - Future - Monad

    func testFutureMonadLeftIdentity() {
        property("Future - Monad Laws - Left Identity") <- forAll { (af: ArrowOf<String,String>, x: String) in
            let a = Future<String>.pure(x)
            let a_ma: (String) -> Future<String> = { y in Future<String>.pure(af.getArrow(y)) }
            return (a.flatMap(a_ma).start() == a_ma(x).start())
        }
    }

    func testFutureMonadRightIdentity() {
        property("Future - Monad Laws - Right Identity") <- forAll { (x: String) in
            let a = Future<String>.pure(x)
            return (a.flatMap(Future<String>.pure).start() == a.start())
        }
    }

    func testFutureMonadAssociativity() {
        property("Future - Monad Laws - Associativity") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
            let a = Future<String>.pure(x)
            let a_ma1: (String) -> Future<String> = { y in Future<String>.pure(af.getArrow(y)) }
            let a_ma2: (String) -> Future<String> = { y in Future<String>.pure(ag.getArrow(y)) }
            return (a.flatMap(a_ma1).flatMap(a_ma2).start() == a.flatMap{ y in a_ma1(y).flatMap(a_ma2) }.start())
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
























//MARK: - Optional - Functor

    func testOptionalFunctorIdentity() {
        property("Optional - Functor Laws - Identity") <- forAll { (x: String) in
            let a = Optional<String>.init(x)
            return (a.map(f.identity) == a)
        }
    }

    func testOptionalFunctorComposition() {
        property("Optional - Functor Laws - Composition") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
            let a = Optional<String>.init(x)
            let fLifted = f.flip(Optional<String>.fmap)(af.getArrow)
            let gLifted = f.flip(Optional<String>.fmap)(ag.getArrow)
            return ((fLifted >>> gLifted)(a) == a.fmap(af.getArrow >>> ag.getArrow))
        }
    }



//MARK: - Optional - Applicative

    func testOptionalApplicativeIdentity() {
        property("Optional - Applicative Laws - Identity") <- forAll { (x: String) in
            let a_a = Optional<Endo<String>>.pure(f.identity)
            let a = Optional<String>.pure(x)
            return ((a_a <*> a) == a)
        }
    }

    func testOptionalApplicativeHomomorphism() {
        property("Optional - Applicative Laws - Homomorphism") <- forAll { (af: ArrowOf<String,String>, x: String) in
            let a_a = Optional<Endo<String>>.pure(af.getArrow)
            let a1 = Optional<String>.pure(x)
            let a2 = Optional<String>.pure(af.getArrow(x))
            return ((a_a <*> a1) == a2)
        }
    }

    func testOptionalApplicativeInterchange() {
        property("Optional - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, x: String) in
            let a_a = Optional<Endo<String>>.pure(af.getArrow)
            let a = Optional<String>.pure(x)
            let a_a_a = Optional<(@escaping Endo<String>) -> String>.pure { $0(x) }
            return ((a_a <*> a) == (a_a_a <*> a_a))
        }
    }

    func testOptionalApplicativeComposition() {
        property("Optional - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
            let a = Optional<String>.pure(x)
            let a_a1 = Optional<Endo<String>>.pure(af.getArrow)
            let a_a2 = Optional<Endo<String>>.pure(ag.getArrow)
            let a_a_a = Optional<(@escaping Endo<String>) -> (@escaping Endo<String>) -> Endo<String>>.pure(f.curry(f.compose))
            return ((a_a_a <*> a_a1 <*> a_a2 <*> a) == (a_a2 <*> (a_a1 <*> a)))
        }
    }

//MARK: - Optional - Monad

    func testOptionalMonadLeftIdentity() {
        property("Optional - Monad Laws - Left Identity") <- forAll { (af: ArrowOf<String,String>, x: String) in
            let a = Optional<String>.pure(x)
            let a_ma: (String) -> Optional<String> = { y in Optional<String>.pure(af.getArrow(y)) }
            return (a.flatMap(a_ma) == a_ma(x))
        }
    }

    func testOptionalMonadRightIdentity() {
        property("Optional - Monad Laws - Right Identity") <- forAll { (x: String) in
            let a = Optional<String>.pure(x)
            return (a.flatMap(Optional<String>.pure) == a)
        }
    }

    func testOptionalMonadAssociativity() {
        property("Optional - Monad Laws - Associativity") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
            let a = Optional<String>.pure(x)
            let a_ma1: (String) -> Optional<String> = { y in Optional<String>.pure(af.getArrow(y)) }
            let a_ma2: (String) -> Optional<String> = { y in Optional<String>.pure(ag.getArrow(y)) }
            return (a.flatMap(a_ma1).flatMap(a_ma2) == a.flatMap{ y in a_ma1(y).flatMap(a_ma2) })
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



















//MARK: - Reader - Functor

    func testReaderFunctorIdentity() {
        property("Reader - Functor Laws - Identity") <- forAll { (x: String, c: String) in
            let a = Reader<String,String>.init { _ in x }
            return (a.map(f.identity) == a)(c)
        }
    }

    func testReaderFunctorComposition() {
        property("Reader - Functor Laws - Composition") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String, c: String) in
            let a = Reader<String,String>.init { _ in x }
            let fLifted = f.flip(Reader<String,String>.map)(af.getArrow)
            let gLifted = f.flip(Reader<String,String>.map)(ag.getArrow)
            return ((fLifted >>> gLifted)(a) == a.map(af.getArrow >>> ag.getArrow))(c)
        }
    }




//MARK: - Reader - Monad

    func testReaderMonadLeftIdentity() {
        property("Reader - Monad Laws - Left Identity") <- forAll { (af: ArrowOf<String,String>, x: String, c: String) in
            let a = Reader<String,String>.pure(x)
            let a_ma: (String) -> Reader<String,String> = { y in Reader<String,String>.pure(af.getArrow(y)) }
            return (a.flatMap(a_ma) == a_ma(x))(c)
        }
    }

    func testReaderMonadRightIdentity() {
        property("Reader - Monad Laws - Right Identity") <- forAll { (x: String, c: String) in
            let a = Reader<String,String>.pure(x)
            return (a.flatMap(Reader<String,String>.pure) == a)(c)
        }
    }

    func testReaderMonadAssociativity() {
        property("Reader - Monad Laws - Associativity") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String, c: String) in
            let a = Reader<String,String>.pure(x)
            let a_ma1: (String) -> Reader<String,String> = { y in Reader<String,String>.pure(af.getArrow(y)) }
            let a_ma2: (String) -> Reader<String,String> = { y in Reader<String,String>.pure(ag.getArrow(y)) }
            return (a.flatMap(a_ma1).flatMap(a_ma2) == a.flatMap{ y in a_ma1(y).flatMap(a_ma2) })(c)
        }
    }






//MARK: - Result - Functor

    func testResultFunctorIdentity() {
        property("Result - Functor Laws - Identity") <- forAll { (x: String) in
            let a = Result<String,String>.success(x)
            return (a.map(f.identity) == a)
        }
    }

    func testResultFunctorComposition() {
        property("Result - Functor Laws - Composition") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
            let a = Result<String,String>.success(x)
            let fLifted = f.flip(Result<String,String>.map)(af.getArrow)
            let gLifted = f.flip(Result<String,String>.map)(ag.getArrow)
            return ((fLifted >>> gLifted)(a) == a.map(af.getArrow >>> ag.getArrow))
        }
    }



//MARK: - Result - Applicative

    func testResultApplicativeIdentity() {
        property("Result - Applicative Laws - Identity") <- forAll { (x: String) in
            let a_a = Result<String,Endo<String>>.pure(f.identity)
            let a = Result<String,String>.pure(x)
            return ((a_a <*> a) == a)
        }
    }

    func testResultApplicativeHomomorphism() {
        property("Result - Applicative Laws - Homomorphism") <- forAll { (af: ArrowOf<String,String>, x: String) in
            let a_a = Result<String,Endo<String>>.pure(af.getArrow)
            let a1 = Result<String,String>.pure(x)
            let a2 = Result<String,String>.pure(af.getArrow(x))
            return ((a_a <*> a1) == a2)
        }
    }

//    func testResultApplicativeInterchange() {
//        property("Result - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, x: String) in
//            let a_a = Result<String,Endo<String>>.pure(af.getArrow)
//            let a = Result<String,String>.pure(x)
//            let a_a_a = Result<String,(@escaping Endo<String>) -> String>.pure { $0(x) }
//            return ((a_a <*> a) == (a_a_a <*> a_a))
//        }
//    }
//
//    func testResultApplicativeComposition() {
//        property("Result - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
//            let a = Result<String,String>.pure(x)
//            let a_a1 = Result<String,Endo<String>>.pure(af.getArrow)
//            let a_a2 = Result<String,Endo<String>>.pure(ag.getArrow)
//            let a_a_a = Result<String,(@escaping Endo<String>) -> (@escaping Endo<String>) -> Endo<String>>.pure(f.curry(f.compose))
//            return ((a_a_a <*> a_a1 <*> a_a2 <*> a) == (a_a2 <*> (a_a1 <*> a)))
//        }
//    }
//
//MARK: - Result - Monad

    func testResultMonadLeftIdentity() {
        property("Result - Monad Laws - Left Identity") <- forAll { (af: ArrowOf<String,String>, x: String) in
            let a = Result<String,String>.pure(x)
            let a_ma: (String) -> Result<String,String> = { y in Result<String,String>.pure(af.getArrow(y)) }
            return (a.flatMap(a_ma) == a_ma(x))
        }
    }

    func testResultMonadRightIdentity() {
        property("Result - Monad Laws - Right Identity") <- forAll { (x: String) in
            let a = Result<String,String>.pure(x)
            return (a.flatMap(Result<String,String>.pure) == a)
        }
    }

    func testResultMonadAssociativity() {
        property("Result - Monad Laws - Associativity") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
            let a = Result<String,String>.pure(x)
            let a_ma1: (String) -> Result<String,String> = { y in Result<String,String>.pure(af.getArrow(y)) }
            let a_ma2: (String) -> Result<String,String> = { y in Result<String,String>.pure(ag.getArrow(y)) }
            return (a.flatMap(a_ma1).flatMap(a_ma2) == a.flatMap{ y in a_ma1(y).flatMap(a_ma2) })
        }
    }
















//MARK: - State - Functor

    func testStateFunctorIdentity() {
        property("State - Functor Laws - Identity") <- forAll { (x: String, c: String) in
            let a = State<String,String>.init { m in (m,x) }
            return (a.map(f.identity) == a)(c)
        }
    }

    func testStateFunctorComposition() {
        property("State - Functor Laws - Composition") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String, c: String) in
            let a = State<String,String>.init { m in (m,x) }
            let fLifted = f.flip(State<String,String>.map)(af.getArrow)
            let gLifted = f.flip(State<String,String>.map)(ag.getArrow)
            return ((fLifted >>> gLifted)(a) == a.map(af.getArrow >>> ag.getArrow))(c)
        }
    }




//MARK: - State - Monad

    func testStateMonadLeftIdentity() {
        property("State - Monad Laws - Left Identity") <- forAll { (af: ArrowOf<String,String>, x: String, c: String) in
            let a = State<String,String>.pure(x)
            let a_ma: (String) -> State<String,String> = { y in State<String,String>.pure(af.getArrow(y)) }
            return (a.flatMap(a_ma) == a_ma(x))(c)
        }
    }

    func testStateMonadRightIdentity() {
        property("State - Monad Laws - Right Identity") <- forAll { (x: String, c: String) in
            let a = State<String,String>.pure(x)
            return (a.flatMap(State<String,String>.pure) == a)(c)
        }
    }

    func testStateMonadAssociativity() {
        property("State - Monad Laws - Associativity") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String, c: String) in
            let a = State<String,String>.pure(x)
            let a_ma1: (String) -> State<String,String> = { y in State<String,String>.pure(af.getArrow(y)) }
            let a_ma2: (String) -> State<String,String> = { y in State<String,String>.pure(ag.getArrow(y)) }
            return (a.flatMap(a_ma1).flatMap(a_ma2) == a.flatMap{ y in a_ma1(y).flatMap(a_ma2) })(c)
        }
    }






//MARK: - Writer - Functor

    func testWriterFunctorIdentity() {
        property("Writer - Functor Laws - Identity") <- forAll { (x: String) in
            let a = Writer<String,String>.init(log: .empty, value: x)
            return (a.map(f.identity) == a)
        }
    }

    func testWriterFunctorComposition() {
        property("Writer - Functor Laws - Composition") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
            let a = Writer<String,String>.init(log: .empty, value: x)
            let fLifted = f.flip(Writer<String,String>.map)(af.getArrow)
            let gLifted = f.flip(Writer<String,String>.map)(ag.getArrow)
            return ((fLifted >>> gLifted)(a) == a.map(af.getArrow >>> ag.getArrow))
        }
    }



//MARK: - Writer - Applicative

    func testWriterApplicativeIdentity() {
        property("Writer - Applicative Laws - Identity") <- forAll { (x: String) in
            let a_a = Writer<String,Endo<String>>.pure(f.identity)
            let a = Writer<String,String>.pure(x)
            return ((a_a <*> a) == a)
        }
    }

    func testWriterApplicativeHomomorphism() {
        property("Writer - Applicative Laws - Homomorphism") <- forAll { (af: ArrowOf<String,String>, x: String) in
            let a_a = Writer<String,Endo<String>>.pure(af.getArrow)
            let a1 = Writer<String,String>.pure(x)
            let a2 = Writer<String,String>.pure(af.getArrow(x))
            return ((a_a <*> a1) == a2)
        }
    }

//    func testWriterApplicativeInterchange() {
//        property("Writer - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, x: String) in
//            let a_a = Writer<String,Endo<String>>.pure(af.getArrow)
//            let a = Writer<String,String>.pure(x)
//            let a_a_a = Writer<String,(@escaping Endo<String>) -> String>.pure { $0(x) }
//            return ((a_a <*> a) == (a_a_a <*> a_a))
//        }
//    }
//
//    func testWriterApplicativeComposition() {
//        property("Writer - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
//            let a = Writer<String,String>.pure(x)
//            let a_a1 = Writer<String,Endo<String>>.pure(af.getArrow)
//            let a_a2 = Writer<String,Endo<String>>.pure(ag.getArrow)
//            let a_a_a = Writer<String,(@escaping Endo<String>) -> (@escaping Endo<String>) -> Endo<String>>.pure(f.curry(f.compose))
//            return ((a_a_a <*> a_a1 <*> a_a2 <*> a) == (a_a2 <*> (a_a1 <*> a)))
//        }
//    }
//
//MARK: - Writer - Monad

    func testWriterMonadLeftIdentity() {
        property("Writer - Monad Laws - Left Identity") <- forAll { (af: ArrowOf<String,String>, x: String) in
            let a = Writer<String,String>.pure(x)
            let a_ma: (String) -> Writer<String,String> = { y in Writer<String,String>.pure(af.getArrow(y)) }
            return (a.flatMap(a_ma) == a_ma(x))
        }
    }

    func testWriterMonadRightIdentity() {
        property("Writer - Monad Laws - Right Identity") <- forAll { (x: String) in
            let a = Writer<String,String>.pure(x)
            return (a.flatMap(Writer<String,String>.pure) == a)
        }
    }

    func testWriterMonadAssociativity() {
        property("Writer - Monad Laws - Associativity") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
            let a = Writer<String,String>.pure(x)
            let a_ma1: (String) -> Writer<String,String> = { y in Writer<String,String>.pure(af.getArrow(y)) }
            let a_ma2: (String) -> Writer<String,String> = { y in Writer<String,String>.pure(ag.getArrow(y)) }
            return (a.flatMap(a_ma1).flatMap(a_ma2) == a.flatMap{ y in a_ma1(y).flatMap(a_ma2) })
        }
    }

















    static var allTests = [
        ("testArrayFunctorIdentity",testArrayFunctorIdentity),
        ("testArrayFunctorComposition",testArrayFunctorComposition),
        ("testArrayApplicativeIdentity",testArrayApplicativeIdentity),
        ("testArrayApplicativeHomomorphism",testArrayApplicativeHomomorphism),
//        ("testArrayApplicativeInterchange",testArrayApplicativeInterchange),
//        ("testArrayApplicativeComposition",testArrayApplicativeComposition),
        ("testArrayMonadLeftIdentity",testArrayMonadLeftIdentity),
        ("testArrayMonadRightIdentity",testArrayMonadRightIdentity),
        ("testArrayMonadAssociativity",testArrayMonadAssociativity),
        ("testCoproductBifunctorIdentity",testCoproductBifunctorIdentity),
        ("testCoproductBifunctorComposition",testCoproductBifunctorComposition),
        ("testEffectFunctorIdentity",testEffectFunctorIdentity),
        ("testEffectFunctorComposition",testEffectFunctorComposition),
        ("testEffectMonadLeftIdentity",testEffectMonadLeftIdentity),
        ("testEffectMonadRightIdentity",testEffectMonadRightIdentity),
        ("testEffectMonadAssociativity",testEffectMonadAssociativity),
        ("testFutureFunctorIdentity",testFutureFunctorIdentity),
        ("testFutureFunctorComposition",testFutureFunctorComposition),
        ("testFutureApplicativeIdentity",testFutureApplicativeIdentity),
        ("testFutureApplicativeHomomorphism",testFutureApplicativeHomomorphism),
//        ("testFutureApplicativeInterchange",testFutureApplicativeInterchange),
//        ("testFutureApplicativeComposition",testFutureApplicativeComposition),
        ("testFutureMonadLeftIdentity",testFutureMonadLeftIdentity),
        ("testFutureMonadRightIdentity",testFutureMonadRightIdentity),
        ("testFutureMonadAssociativity",testFutureMonadAssociativity),
        ("testInclusiveBifunctorIdentity",testInclusiveBifunctorIdentity),
        ("testInclusiveBifunctorComposition",testInclusiveBifunctorComposition),
        ("testOptionalFunctorIdentity",testOptionalFunctorIdentity),
        ("testOptionalFunctorComposition",testOptionalFunctorComposition),
        ("testOptionalApplicativeIdentity",testOptionalApplicativeIdentity),
        ("testOptionalApplicativeHomomorphism",testOptionalApplicativeHomomorphism),
        ("testOptionalApplicativeInterchange",testOptionalApplicativeInterchange),
        ("testOptionalApplicativeComposition",testOptionalApplicativeComposition),
        ("testOptionalMonadLeftIdentity",testOptionalMonadLeftIdentity),
        ("testOptionalMonadRightIdentity",testOptionalMonadRightIdentity),
        ("testOptionalMonadAssociativity",testOptionalMonadAssociativity),
        ("testProductBifunctorIdentity",testProductBifunctorIdentity),
        ("testProductBifunctorComposition",testProductBifunctorComposition),
        ("testReaderFunctorIdentity",testReaderFunctorIdentity),
        ("testReaderFunctorComposition",testReaderFunctorComposition),
        ("testReaderMonadLeftIdentity",testReaderMonadLeftIdentity),
        ("testReaderMonadRightIdentity",testReaderMonadRightIdentity),
        ("testReaderMonadAssociativity",testReaderMonadAssociativity),
        ("testResultFunctorIdentity",testResultFunctorIdentity),
        ("testResultFunctorComposition",testResultFunctorComposition),
        ("testResultApplicativeIdentity",testResultApplicativeIdentity),
        ("testResultApplicativeHomomorphism",testResultApplicativeHomomorphism),
//        ("testResultApplicativeInterchange",testResultApplicativeInterchange),
//        ("testResultApplicativeComposition",testResultApplicativeComposition),
        ("testResultMonadLeftIdentity",testResultMonadLeftIdentity),
        ("testResultMonadRightIdentity",testResultMonadRightIdentity),
        ("testResultMonadAssociativity",testResultMonadAssociativity),
        ("testStateFunctorIdentity",testStateFunctorIdentity),
        ("testStateFunctorComposition",testStateFunctorComposition),
        ("testStateMonadLeftIdentity",testStateMonadLeftIdentity),
        ("testStateMonadRightIdentity",testStateMonadRightIdentity),
        ("testStateMonadAssociativity",testStateMonadAssociativity),
        ("testWriterFunctorIdentity",testWriterFunctorIdentity),
        ("testWriterFunctorComposition",testWriterFunctorComposition),
        ("testWriterApplicativeIdentity",testWriterApplicativeIdentity),
        ("testWriterApplicativeHomomorphism",testWriterApplicativeHomomorphism),
//        ("testWriterApplicativeInterchange",testWriterApplicativeInterchange),
//        ("testWriterApplicativeComposition",testWriterApplicativeComposition),
        ("testWriterMonadLeftIdentity",testWriterMonadLeftIdentity),
        ("testWriterMonadRightIdentity",testWriterMonadRightIdentity),
        ("testWriterMonadAssociativity",testWriterMonadAssociativity),
    ]

}
