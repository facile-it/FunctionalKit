// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT





import XCTest
@testable import FunctionalKit
import SwiftCheck
import Abstract

class LawsTests: XCTestCase {

//MARK: Array

    func testArrayFunctorIdentity() {
        property("Array - Functor Laws - Identity") <- forAll { (x: String) in
            let a = Array<String>.init([x])
            return (a.map(fidentity) == a)
        }
    }

    func testArrayFunctorComposition() {
        property("Array - Functor Laws - Identity") <- forAll { (f: ArrowOf<String,String>, g: ArrowOf<String,String>, x: String) in
            let a = Array<String>.init([x])
            let fLifted = fflip(Array<String>.map)(f.getArrow)
            let gLifted = fflip(Array<String>.map)(g.getArrow)
            return ((fLifted..gLifted)(a) == a.map(f.getArrow..g.getArrow))
        }
    }

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


//MARK: Future

    func testFutureFunctorIdentity() {
        property("Future - Functor Laws - Identity") <- forAll { (x: String) in
            let a = Future<String>.unfold { $0(x) }
            return (a.map(fidentity).start() == a.start())
        }
    }

    func testFutureFunctorComposition() {
        property("Future - Functor Laws - Identity") <- forAll { (f: ArrowOf<String,String>, g: ArrowOf<String,String>, x: String) in
            let a = Future<String>.unfold { $0(x) }
            let fLifted = fflip(Future<String>.map)(f.getArrow)
            let gLifted = fflip(Future<String>.map)(g.getArrow)
            return ((fLifted..gLifted)(a).start() == a.map(f.getArrow..g.getArrow).start())
        }
    }

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


//MARK: Optional

    func testOptionalFunctorIdentity() {
        property("Optional - Functor Laws - Identity") <- forAll { (x: String) in
            let a = Optional<String>.init(x)
            return (a.map(fidentity) == a)
        }
    }

    func testOptionalFunctorComposition() {
        property("Optional - Functor Laws - Identity") <- forAll { (f: ArrowOf<String,String>, g: ArrowOf<String,String>, x: String) in
            let a = Optional<String>.init(x)
            let fLifted = fflip(Optional<String>.fmap)(f.getArrow)
            let gLifted = fflip(Optional<String>.fmap)(g.getArrow)
            return ((fLifted..gLifted)(a) == a.fmap(f.getArrow..g.getArrow))
        }
    }

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


//MARK: Reader

    func testReaderFunctorIdentity() {
        property("Reader - Functor Laws - Identity") <- forAll { (x: String, c: String) in
            let a = Reader<String,String>.unfold { _ in x }
            return (a.map(fidentity) == a).run(c)
        }
    }

    func testReaderFunctorComposition() {
        property("Reader - Functor Laws - Identity") <- forAll { (f: ArrowOf<String,String>, g: ArrowOf<String,String>, x: String, c: String) in
            let a = Reader<String,String>.unfold { _ in x }
            let fLifted = fflip(Reader<String,String>.map)(f.getArrow)
            let gLifted = fflip(Reader<String,String>.map)(g.getArrow)
            return ((fLifted..gLifted)(a) == a.map(f.getArrow..g.getArrow)).run(c)
        }
    }

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


//MARK: Result

    func testResultFunctorIdentity() {
        property("Result - Functor Laws - Identity") <- forAll { (x: String) in
            let a = Result<String,String>.success(x)
            return (a.map(fidentity) == a)
        }
    }

    func testResultFunctorComposition() {
        property("Result - Functor Laws - Identity") <- forAll { (f: ArrowOf<String,String>, g: ArrowOf<String,String>, x: String) in
            let a = Result<String,String>.success(x)
            let fLifted = fflip(Result<String,String>.map)(f.getArrow)
            let gLifted = fflip(Result<String,String>.map)(g.getArrow)
            return ((fLifted..gLifted)(a) == a.map(f.getArrow..g.getArrow))
        }
    }

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


//MARK: State

    func testStateFunctorIdentity() {
        property("State - Functor Laws - Identity") <- forAll { (x: String, c: String) in
            let a = State<String,String>.unfold { s in (s,x) }
            return (a.map(fidentity) == a).run(c)
        }
    }

    func testStateFunctorComposition() {
        property("State - Functor Laws - Identity") <- forAll { (f: ArrowOf<String,String>, g: ArrowOf<String,String>, x: String, c: String) in
            let a = State<String,String>.unfold { s in (s,x) }
            let fLifted = fflip(State<String,String>.map)(f.getArrow)
            let gLifted = fflip(State<String,String>.map)(g.getArrow)
            return ((fLifted..gLifted)(a) == a.map(f.getArrow..g.getArrow)).run(c)
        }
    }

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


//MARK: Writer

    func testWriterFunctorIdentity() {
        property("Writer - Functor Laws - Identity") <- forAll { (x: String) in
            let a = Writer<String,String>.init(log: .empty, value: x)
            return (a.map(fidentity) == a)
        }
    }

    func testWriterFunctorComposition() {
        property("Writer - Functor Laws - Identity") <- forAll { (f: ArrowOf<String,String>, g: ArrowOf<String,String>, x: String) in
            let a = Writer<String,String>.init(log: .empty, value: x)
            let fLifted = fflip(Writer<String,String>.map)(f.getArrow)
            let gLifted = fflip(Writer<String,String>.map)(g.getArrow)
            return ((fLifted..gLifted)(a) == a.map(f.getArrow..g.getArrow))
        }
    }

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


}
