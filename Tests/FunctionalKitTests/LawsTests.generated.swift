// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
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
            return (a.map(fidentity) == a)
        }
    }

    func testArrayFunctorComposition() {
        property("Array - Functor Laws - Composition") <- forAll { (f: ArrowOf<String,String>, g: ArrowOf<String,String>, x: String) in
            let a = Array<String>.init([x])
            let fLifted = fflip(Array<String>.fmap)(f.getArrow)
            let gLifted = fflip(Array<String>.fmap)(g.getArrow)
            return ((fLifted..gLifted)(a) == a.fmap(f.getArrow..g.getArrow))
        }
    }



//MARK: - Array - Applicative

    func testArrayApplicativeIdentity() {
        property("Array - Applicative Laws - Identity") <- forAll { (x: String) in
            let a_a = Array<Endo<String>>.pure(fidentity)
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
            let a_a_a = Array<(@escaping Endo<String>) -> (@escaping Endo<String>) -> Endo<String>>.pure(fcurry(fcompose))
            return ((a_a_a <*> a_a1 <*> a_a2 <*> a) == (a_a2 <*> (a_a1 <*> a)))
        }
    }

//MARK: - Array - Monad

    func testArrayMonadLeftIdentity() {
        property("Array - Monad Laws - Left Identity") <- forAll { (af: ArrowOf<String,String>, x: String) in
            let a = Array<String>.pure(x)
            let a_ma: (String) -> Array<String> = { y in Array<String>.pure(af.getArrow(y)) }
            return (a.bind(a_ma) == a_ma(x))
        }
    }

    func testArrayMonadRightIdentity() {
        property("Array - Monad Laws - Right Identity") <- forAll { (x: String) in
            let a = Array<String>.pure(x)
            return (a.bind(Array<String>.pure) == a)
        }
    }

    func testArrayMonadAssociativity() {
        property("Array - Monad Laws - Associativity") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
            let a = Array<String>.pure(x)
            let a_ma1: (String) -> Array<String> = { y in Array<String>.pure(af.getArrow(y)) }
            let a_ma2: (String) -> Array<String> = { y in Array<String>.pure(ag.getArrow(y)) }
            return (a.bind(a_ma1).bind(a_ma2) == a.bind{ y in a_ma1(y).bind(a_ma2) })
        }
    }












//MARK: - Coproduct - Bifunctor

    func testCoproductBifunctorIdentity() {
        property("Coproduct - Bifunctor Laws - Identity") <- forAll { (x: String, y: String) in
            let a = Coproduct<String,String>.random(x,y)
            return (a.bimap(fidentity,fidentity) == a)
        }
    }

    func testCoproductBifunctorComposition() {
        property("Coproduct - Bifunctor Laws - Composition") <- forAll { (x: String, y: String, f1: ArrowOf<String,String>, f2: ArrowOf<String,String>, g1: ArrowOf<String,String>, g2: ArrowOf<String,String>) in
            let a = Coproduct<String,String>.random(x,y)
            let fLifted: Endo<Coproduct<String,String>> = { t in t.bimap(f1.getArrow, f2.getArrow) }
            let gLifted: Endo<Coproduct<String,String>> = { t in t.bimap(g1.getArrow, g2.getArrow) }
            return ((fLifted..gLifted)(a) == a.bimap(f1.getArrow..g1.getArrow,f2.getArrow..g2.getArrow))
        }
    }






//MARK: - Exponential - Profunctor

    func testExponentialProfunctorIdentity() {
        property("Exponential - Profunctor Laws - Identity") <- forAll { (ax: ArrowOf<String,String>, c: String) in
            let x = ax.getArrow
            let a = Exponential<String,String>.init(x)
            return (a.dimap(fidentity,fidentity) == a).run(c)
        }
    }

    func testExponentialProfunctorComposition() {
        property("Exponential - Profunctor Laws - Composition") <- forAll { (ax: ArrowOf<String,String>, f1: ArrowOf<String,String>, f2: ArrowOf<String,String>, g1: ArrowOf<String,String>, g2: ArrowOf<String,String>, c: String) in
            let x = ax.getArrow
            let a = Exponential<String,String>.init(x)
            let fLifted: Endo<Exponential<String,String>> = { t in t.dimap(f1.getArrow, f2.getArrow) }
            let gLifted: Endo<Exponential<String,String>> = { t in t.dimap(g1.getArrow, g2.getArrow) }
            return ((fLifted..gLifted)(a) == a.dimap(f1.getArrow..g1.getArrow,f2.getArrow..g2.getArrow)).run(c)
        }
    }



//MARK: - Future - Functor

    func testFutureFunctorIdentity() {
        property("Future - Functor Laws - Identity") <- forAll { (x: String) in
            let a = Future<String>.unfold { $0(x) }
            return (a.map(fidentity).start() == a.start())
        }
    }

    func testFutureFunctorComposition() {
        property("Future - Functor Laws - Composition") <- forAll { (f: ArrowOf<String,String>, g: ArrowOf<String,String>, x: String) in
            let a = Future<String>.unfold { $0(x) }
            let fLifted = fflip(Future<String>.map)(f.getArrow)
            let gLifted = fflip(Future<String>.map)(g.getArrow)
            return ((fLifted..gLifted)(a).start() == a.map(f.getArrow..g.getArrow).start())
        }
    }



//MARK: - Future - Applicative

    func testFutureApplicativeIdentity() {
        property("Future - Applicative Laws - Identity") <- forAll { (x: String) in
            let a_a = Future<Endo<String>>.pure(fidentity)
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

    func testFutureApplicativeInterchange() {
        property("Future - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, x: String) in
            let a_a = Future<Endo<String>>.pure(af.getArrow)
            let a = Future<String>.pure(x)
            let a_a_a = Future<(@escaping Endo<String>) -> String>.pure { $0(x) }
            return ((a_a <*> a).start() == (a_a_a <*> a_a).start())
        }
    }

    func testFutureApplicativeComposition() {
        property("Future - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
            let a = Future<String>.pure(x)
            let a_a1 = Future<Endo<String>>.pure(af.getArrow)
            let a_a2 = Future<Endo<String>>.pure(ag.getArrow)
            let a_a_a = Future<(@escaping Endo<String>) -> (@escaping Endo<String>) -> Endo<String>>.pure(fcurry(fcompose))
            return ((a_a_a <*> a_a1 <*> a_a2 <*> a).start() == (a_a2 <*> (a_a1 <*> a)).start())
        }
    }

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
            return (a.bimap(fidentity,fidentity) == a)
        }
    }

    func testInclusiveBifunctorComposition() {
        property("Inclusive - Bifunctor Laws - Composition") <- forAll { (x: String, y: String, f1: ArrowOf<String,String>, f2: ArrowOf<String,String>, g1: ArrowOf<String,String>, g2: ArrowOf<String,String>) in
            let a = Inclusive<String,String>.random(x,y)
            let fLifted: Endo<Inclusive<String,String>> = { t in t.bimap(f1.getArrow, f2.getArrow) }
            let gLifted: Endo<Inclusive<String,String>> = { t in t.bimap(g1.getArrow, g2.getArrow) }
            return ((fLifted..gLifted)(a) == a.bimap(f1.getArrow..g1.getArrow,f2.getArrow..g2.getArrow))
        }
    }














//MARK: - Optional - Functor

    func testOptionalFunctorIdentity() {
        property("Optional - Functor Laws - Identity") <- forAll { (x: String) in
            let a = Optional<String>.init(x)
            return (a.map(fidentity) == a)
        }
    }

    func testOptionalFunctorComposition() {
        property("Optional - Functor Laws - Composition") <- forAll { (f: ArrowOf<String,String>, g: ArrowOf<String,String>, x: String) in
            let a = Optional<String>.init(x)
            let fLifted = fflip(Optional<String>.fmap)(f.getArrow)
            let gLifted = fflip(Optional<String>.fmap)(g.getArrow)
            return ((fLifted..gLifted)(a) == a.fmap(f.getArrow..g.getArrow))
        }
    }



//MARK: - Optional - Applicative

    func testOptionalApplicativeIdentity() {
        property("Optional - Applicative Laws - Identity") <- forAll { (x: String) in
            let a_a = Optional<Endo<String>>.pure(fidentity)
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
            let a_a_a = Optional<(@escaping Endo<String>) -> (@escaping Endo<String>) -> Endo<String>>.pure(fcurry(fcompose))
            return ((a_a_a <*> a_a1 <*> a_a2 <*> a) == (a_a2 <*> (a_a1 <*> a)))
        }
    }

//MARK: - Optional - Monad

    func testOptionalMonadLeftIdentity() {
        property("Optional - Monad Laws - Left Identity") <- forAll { (af: ArrowOf<String,String>, x: String) in
            let a = Optional<String>.pure(x)
            let a_ma: (String) -> Optional<String> = { y in Optional<String>.pure(af.getArrow(y)) }
            return (a.bind(a_ma) == a_ma(x))
        }
    }

    func testOptionalMonadRightIdentity() {
        property("Optional - Monad Laws - Right Identity") <- forAll { (x: String) in
            let a = Optional<String>.pure(x)
            return (a.bind(Optional<String>.pure) == a)
        }
    }

    func testOptionalMonadAssociativity() {
        property("Optional - Monad Laws - Associativity") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
            let a = Optional<String>.pure(x)
            let a_ma1: (String) -> Optional<String> = { y in Optional<String>.pure(af.getArrow(y)) }
            let a_ma2: (String) -> Optional<String> = { y in Optional<String>.pure(ag.getArrow(y)) }
            return (a.bind(a_ma1).bind(a_ma2) == a.bind{ y in a_ma1(y).bind(a_ma2) })
        }
    }


//MARK: - Product - Bifunctor

    func testProductBifunctorIdentity() {
        property("Product - Bifunctor Laws - Identity") <- forAll { (x: String, y: String) in
            let a = Product<String,String>.init(x,y)
            return (a.bimap(fidentity,fidentity) == a)
        }
    }

    func testProductBifunctorComposition() {
        property("Product - Bifunctor Laws - Composition") <- forAll { (x: String, y: String, f1: ArrowOf<String,String>, f2: ArrowOf<String,String>, g1: ArrowOf<String,String>, g2: ArrowOf<String,String>) in
            let a = Product<String,String>.init(x,y)
            let fLifted: Endo<Product<String,String>> = { t in t.bimap(f1.getArrow, f2.getArrow) }
            let gLifted: Endo<Product<String,String>> = { t in t.bimap(g1.getArrow, g2.getArrow) }
            return ((fLifted..gLifted)(a) == a.bimap(f1.getArrow..g1.getArrow,f2.getArrow..g2.getArrow))
        }
    }














//MARK: - Reader - Functor

    func testReaderFunctorIdentity() {
        property("Reader - Functor Laws - Identity") <- forAll { (x: String, c: String) in
            let a = Reader<String,String>.unfold { _ in x }
            return (a.map(fidentity) == a).run(c)
        }
    }

    func testReaderFunctorComposition() {
        property("Reader - Functor Laws - Composition") <- forAll { (f: ArrowOf<String,String>, g: ArrowOf<String,String>, x: String, c: String) in
            let a = Reader<String,String>.unfold { _ in x }
            let fLifted = fflip(Reader<String,String>.map)(f.getArrow)
            let gLifted = fflip(Reader<String,String>.map)(g.getArrow)
            return ((fLifted..gLifted)(a) == a.map(f.getArrow..g.getArrow)).run(c)
        }
    }



//MARK: - Reader - Applicative

    func testReaderApplicativeIdentity() {
        property("Reader - Applicative Laws - Identity") <- forAll { (x: String, c: String) in
            let a_a = Reader<String,Endo<String>>.pure(fidentity)
            let a = Reader<String,String>.pure(x)
            return ((a_a <*> a) == a).run(c)
        }
    }

    func testReaderApplicativeHomomorphism() {
        property("Reader - Applicative Laws - Homomorphism") <- forAll { (af: ArrowOf<String,String>, x: String, c: String) in
            let a_a = Reader<String,Endo<String>>.pure(af.getArrow)
            let a1 = Reader<String,String>.pure(x)
            let a2 = Reader<String,String>.pure(af.getArrow(x))
            return ((a_a <*> a1) == a2).run(c)
        }
    }

    func testReaderApplicativeInterchange() {
        property("Reader - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, x: String, c: String) in
            let a_a = Reader<String,Endo<String>>.pure(af.getArrow)
            let a = Reader<String,String>.pure(x)
            let a_a_a = Reader<String,(@escaping Endo<String>) -> String>.pure { $0(x) }
            return ((a_a <*> a) == (a_a_a <*> a_a)).run(c)
        }
    }

    func testReaderApplicativeComposition() {
        property("Reader - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String, c: String) in
            let a = Reader<String,String>.pure(x)
            let a_a1 = Reader<String,Endo<String>>.pure(af.getArrow)
            let a_a2 = Reader<String,Endo<String>>.pure(ag.getArrow)
            let a_a_a = Reader<String,(@escaping Endo<String>) -> (@escaping Endo<String>) -> Endo<String>>.pure(fcurry(fcompose))
            return ((a_a_a <*> a_a1 <*> a_a2 <*> a) == (a_a2 <*> (a_a1 <*> a))).run(c)
        }
    }

//MARK: - Reader - Monad

    func testReaderMonadLeftIdentity() {
        property("Reader - Monad Laws - Left Identity") <- forAll { (af: ArrowOf<String,String>, x: String, c: String) in
            let a = Reader<String,String>.pure(x)
            let a_ma: (String) -> Reader<String,String> = { y in Reader<String,String>.pure(af.getArrow(y)) }
            return (a.flatMap(a_ma) == a_ma(x)).run(c)
        }
    }

    func testReaderMonadRightIdentity() {
        property("Reader - Monad Laws - Right Identity") <- forAll { (x: String, c: String) in
            let a = Reader<String,String>.pure(x)
            return (a.flatMap(Reader<String,String>.pure) == a).run(c)
        }
    }

    func testReaderMonadAssociativity() {
        property("Reader - Monad Laws - Associativity") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String, c: String) in
            let a = Reader<String,String>.pure(x)
            let a_ma1: (String) -> Reader<String,String> = { y in Reader<String,String>.pure(af.getArrow(y)) }
            let a_ma2: (String) -> Reader<String,String> = { y in Reader<String,String>.pure(ag.getArrow(y)) }
            return (a.flatMap(a_ma1).flatMap(a_ma2) == a.flatMap{ y in a_ma1(y).flatMap(a_ma2) }).run(c)
        }
    }






//MARK: - Result - Functor

    func testResultFunctorIdentity() {
        property("Result - Functor Laws - Identity") <- forAll { (x: String) in
            let a = Result<String,String>.success(x)
            return (a.map(fidentity) == a)
        }
    }

    func testResultFunctorComposition() {
        property("Result - Functor Laws - Composition") <- forAll { (f: ArrowOf<String,String>, g: ArrowOf<String,String>, x: String) in
            let a = Result<String,String>.success(x)
            let fLifted = fflip(Result<String,String>.map)(f.getArrow)
            let gLifted = fflip(Result<String,String>.map)(g.getArrow)
            return ((fLifted..gLifted)(a) == a.map(f.getArrow..g.getArrow))
        }
    }



//MARK: - Result - Applicative

    func testResultApplicativeIdentity() {
        property("Result - Applicative Laws - Identity") <- forAll { (x: String) in
            let a_a = Result<String,Endo<String>>.pure(fidentity)
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

    func testResultApplicativeInterchange() {
        property("Result - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, x: String) in
            let a_a = Result<String,Endo<String>>.pure(af.getArrow)
            let a = Result<String,String>.pure(x)
            let a_a_a = Result<String,(@escaping Endo<String>) -> String>.pure { $0(x) }
            return ((a_a <*> a) == (a_a_a <*> a_a))
        }
    }

    func testResultApplicativeComposition() {
        property("Result - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
            let a = Result<String,String>.pure(x)
            let a_a1 = Result<String,Endo<String>>.pure(af.getArrow)
            let a_a2 = Result<String,Endo<String>>.pure(ag.getArrow)
            let a_a_a = Result<String,(@escaping Endo<String>) -> (@escaping Endo<String>) -> Endo<String>>.pure(fcurry(fcompose))
            return ((a_a_a <*> a_a1 <*> a_a2 <*> a) == (a_a2 <*> (a_a1 <*> a)))
        }
    }

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
            let a = State<String,String>.unfold { s in (s,x) }
            return (a.map(fidentity) == a).run(c)
        }
    }

    func testStateFunctorComposition() {
        property("State - Functor Laws - Composition") <- forAll { (f: ArrowOf<String,String>, g: ArrowOf<String,String>, x: String, c: String) in
            let a = State<String,String>.unfold { s in (s,x) }
            let fLifted = fflip(State<String,String>.map)(f.getArrow)
            let gLifted = fflip(State<String,String>.map)(g.getArrow)
            return ((fLifted..gLifted)(a) == a.map(f.getArrow..g.getArrow)).run(c)
        }
    }



//MARK: - State - Applicative

    func testStateApplicativeIdentity() {
        property("State - Applicative Laws - Identity") <- forAll { (x: String, c: String) in
            let a_a = State<String,Endo<String>>.pure(fidentity)
            let a = State<String,String>.pure(x)
            return ((a_a <*> a) == a).run(c)
        }
    }

    func testStateApplicativeHomomorphism() {
        property("State - Applicative Laws - Homomorphism") <- forAll { (af: ArrowOf<String,String>, x: String, c: String) in
            let a_a = State<String,Endo<String>>.pure(af.getArrow)
            let a1 = State<String,String>.pure(x)
            let a2 = State<String,String>.pure(af.getArrow(x))
            return ((a_a <*> a1) == a2).run(c)
        }
    }

    func testStateApplicativeInterchange() {
        property("State - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, x: String, c: String) in
            let a_a = State<String,Endo<String>>.pure(af.getArrow)
            let a = State<String,String>.pure(x)
            let a_a_a = State<String,(@escaping Endo<String>) -> String>.pure { $0(x) }
            return ((a_a <*> a) == (a_a_a <*> a_a)).run(c)
        }
    }

    func testStateApplicativeComposition() {
        property("State - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String, c: String) in
            let a = State<String,String>.pure(x)
            let a_a1 = State<String,Endo<String>>.pure(af.getArrow)
            let a_a2 = State<String,Endo<String>>.pure(ag.getArrow)
            let a_a_a = State<String,(@escaping Endo<String>) -> (@escaping Endo<String>) -> Endo<String>>.pure(fcurry(fcompose))
            return ((a_a_a <*> a_a1 <*> a_a2 <*> a) == (a_a2 <*> (a_a1 <*> a))).run(c)
        }
    }

//MARK: - State - Monad

    func testStateMonadLeftIdentity() {
        property("State - Monad Laws - Left Identity") <- forAll { (af: ArrowOf<String,String>, x: String, c: String) in
            let a = State<String,String>.pure(x)
            let a_ma: (String) -> State<String,String> = { y in State<String,String>.pure(af.getArrow(y)) }
            return (a.flatMap(a_ma) == a_ma(x)).run(c)
        }
    }

    func testStateMonadRightIdentity() {
        property("State - Monad Laws - Right Identity") <- forAll { (x: String, c: String) in
            let a = State<String,String>.pure(x)
            return (a.flatMap(State<String,String>.pure) == a).run(c)
        }
    }

    func testStateMonadAssociativity() {
        property("State - Monad Laws - Associativity") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String, c: String) in
            let a = State<String,String>.pure(x)
            let a_ma1: (String) -> State<String,String> = { y in State<String,String>.pure(af.getArrow(y)) }
            let a_ma2: (String) -> State<String,String> = { y in State<String,String>.pure(ag.getArrow(y)) }
            return (a.flatMap(a_ma1).flatMap(a_ma2) == a.flatMap{ y in a_ma1(y).flatMap(a_ma2) }).run(c)
        }
    }

//MARK: - Writer - Functor

    func testWriterFunctorIdentity() {
        property("Writer - Functor Laws - Identity") <- forAll { (x: String) in
            let a = Writer<String,String>.init(log: .empty, value: x)
            return (a.map(fidentity) == a)
        }
    }

    func testWriterFunctorComposition() {
        property("Writer - Functor Laws - Composition") <- forAll { (f: ArrowOf<String,String>, g: ArrowOf<String,String>, x: String) in
            let a = Writer<String,String>.init(log: .empty, value: x)
            let fLifted = fflip(Writer<String,String>.map)(f.getArrow)
            let gLifted = fflip(Writer<String,String>.map)(g.getArrow)
            return ((fLifted..gLifted)(a) == a.map(f.getArrow..g.getArrow))
        }
    }



//MARK: - Writer - Applicative

    func testWriterApplicativeIdentity() {
        property("Writer - Applicative Laws - Identity") <- forAll { (x: String) in
            let a_a = Writer<String,Endo<String>>.pure(fidentity)
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

    func testWriterApplicativeInterchange() {
        property("Writer - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, x: String) in
            let a_a = Writer<String,Endo<String>>.pure(af.getArrow)
            let a = Writer<String,String>.pure(x)
            let a_a_a = Writer<String,(@escaping Endo<String>) -> String>.pure { $0(x) }
            return ((a_a <*> a) == (a_a_a <*> a_a))
        }
    }

    func testWriterApplicativeComposition() {
        property("Writer - Applicative Laws - Interchange") <- forAll { (af: ArrowOf<String,String>, ag: ArrowOf<String,String>, x: String) in
            let a = Writer<String,String>.pure(x)
            let a_a1 = Writer<String,Endo<String>>.pure(af.getArrow)
            let a_a2 = Writer<String,Endo<String>>.pure(ag.getArrow)
            let a_a_a = Writer<String,(@escaping Endo<String>) -> (@escaping Endo<String>) -> Endo<String>>.pure(fcurry(fcompose))
            return ((a_a_a <*> a_a1 <*> a_a2 <*> a) == (a_a2 <*> (a_a1 <*> a)))
        }
    }

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
        ("testArrayApplicativeInterchange",testArrayApplicativeInterchange),
        ("testArrayApplicativeComposition",testArrayApplicativeComposition),
        ("testArrayMonadLeftIdentity",testArrayMonadLeftIdentity),
        ("testArrayMonadRightIdentity",testArrayMonadRightIdentity),
        ("testArrayMonadAssociativity",testArrayMonadAssociativity),
        ("testCoproductBifunctorIdentity",testCoproductBifunctorIdentity),
        ("testCoproductBifunctorComposition",testCoproductBifunctorComposition),
        ("testExponentialProfunctorIdentity",testExponentialProfunctorIdentity),
        ("testExponentialProfunctorComposition",testExponentialProfunctorComposition),
        ("testFutureFunctorIdentity",testFutureFunctorIdentity),
        ("testFutureFunctorComposition",testFutureFunctorComposition),
        ("testFutureApplicativeIdentity",testFutureApplicativeIdentity),
        ("testFutureApplicativeHomomorphism",testFutureApplicativeHomomorphism),
        ("testFutureApplicativeInterchange",testFutureApplicativeInterchange),
        ("testFutureApplicativeComposition",testFutureApplicativeComposition),
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
        ("testReaderApplicativeIdentity",testReaderApplicativeIdentity),
        ("testReaderApplicativeHomomorphism",testReaderApplicativeHomomorphism),
        ("testReaderApplicativeInterchange",testReaderApplicativeInterchange),
        ("testReaderApplicativeComposition",testReaderApplicativeComposition),
        ("testReaderMonadLeftIdentity",testReaderMonadLeftIdentity),
        ("testReaderMonadRightIdentity",testReaderMonadRightIdentity),
        ("testReaderMonadAssociativity",testReaderMonadAssociativity),
        ("testResultFunctorIdentity",testResultFunctorIdentity),
        ("testResultFunctorComposition",testResultFunctorComposition),
        ("testResultApplicativeIdentity",testResultApplicativeIdentity),
        ("testResultApplicativeHomomorphism",testResultApplicativeHomomorphism),
        ("testResultApplicativeInterchange",testResultApplicativeInterchange),
        ("testResultApplicativeComposition",testResultApplicativeComposition),
        ("testResultMonadLeftIdentity",testResultMonadLeftIdentity),
        ("testResultMonadRightIdentity",testResultMonadRightIdentity),
        ("testResultMonadAssociativity",testResultMonadAssociativity),
        ("testStateFunctorIdentity",testStateFunctorIdentity),
        ("testStateFunctorComposition",testStateFunctorComposition),
        ("testStateApplicativeIdentity",testStateApplicativeIdentity),
        ("testStateApplicativeHomomorphism",testStateApplicativeHomomorphism),
        ("testStateApplicativeInterchange",testStateApplicativeInterchange),
        ("testStateApplicativeComposition",testStateApplicativeComposition),
        ("testStateMonadLeftIdentity",testStateMonadLeftIdentity),
        ("testStateMonadRightIdentity",testStateMonadRightIdentity),
        ("testStateMonadAssociativity",testStateMonadAssociativity),
        ("testWriterFunctorIdentity",testWriterFunctorIdentity),
        ("testWriterFunctorComposition",testWriterFunctorComposition),
        ("testWriterApplicativeIdentity",testWriterApplicativeIdentity),
        ("testWriterApplicativeHomomorphism",testWriterApplicativeHomomorphism),
        ("testWriterApplicativeInterchange",testWriterApplicativeInterchange),
        ("testWriterApplicativeComposition",testWriterApplicativeComposition),
        ("testWriterMonadLeftIdentity",testWriterMonadLeftIdentity),
        ("testWriterMonadRightIdentity",testWriterMonadRightIdentity),
        ("testWriterMonadAssociativity",testWriterMonadAssociativity),
    ]

}
