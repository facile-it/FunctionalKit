// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT






import XCTest
@testable import FunctionalKit
import SwiftCheck
import Abstract

class LawsTests: XCTestCase {

//MARK: Array
    func testArrayFunctorMapIdentity() {
        property("Array - Functor Laws - Identity") <- forAll { (x: ArrayOf<String>) in
            return x.getArray.map(fidentity)  == fidentity(x.getArray)
        }
    }

    func testArrayFunctorMapComposition() {
        property("Array - Functor Laws - Composition") <- forAll { (x: ArrayOf<String>, f: ArrowOf<String,String>, g: ArrowOf<String,String>) in
            let fLifted = fflip(Array<String>.map)(f.getArrow)
            let gLifted = fflip(Array<String>.map)(g.getArrow)
            return x.getArray.map(g.getArrow • f.getArrow)  == (gLifted • fLifted § x.getArray)
        }
    }


//MARK: Coproduct
    func testCoproductFunctorMapleftIdentity() {
        property("Coproduct - Functor Laws - Identity") <- forAll { (x: String, y: String) in
            return Coproduct<String,String>.left(x).mapLeft(fidentity)  == fidentity(Coproduct<String,String>.left(x))
        }
    }
    func testCoproductFunctorMaprightIdentity() {
        property("Coproduct - Functor Laws - Identity") <- forAll { (x: String, y: String) in
            return Coproduct<String,String>.right(x).mapRight(fidentity)  == fidentity(Coproduct<String,String>.right(x))
        }
    }

    func testCoproductFunctorMapleftComposition() {
        property("Coproduct - Functor Laws - Composition") <- forAll { (x: String, y: String, f: ArrowOf<String,String>, g: ArrowOf<String,String>) in
            let fLifted = fflip(Coproduct<String,String>.mapLeft)(f.getArrow)
            let gLifted = fflip(Coproduct<String,String>.mapLeft)(g.getArrow)
            return Coproduct<String,String>.left(x).mapLeft(g.getArrow • f.getArrow)  == (gLifted • fLifted § Coproduct<String,String>.left(x))
        }
    }
    func testCoproductFunctorMaprightComposition() {
        property("Coproduct - Functor Laws - Composition") <- forAll { (x: String, y: String, f: ArrowOf<String,String>, g: ArrowOf<String,String>) in
            let fLifted = fflip(Coproduct<String,String>.mapRight)(f.getArrow)
            let gLifted = fflip(Coproduct<String,String>.mapRight)(g.getArrow)
            return Coproduct<String,String>.right(x).mapRight(g.getArrow • f.getArrow)  == (gLifted • fLifted § Coproduct<String,String>.right(x))
        }
    }


//MARK: Exponential
    func testExponentialFunctorMapIdentity() {
        property("Exponential - Functor Laws - Identity") <- forAll { (x: ArrowOf<String,String>, c: String) in
            return (Exponential<String,String>.init(x.getArrow).map(fidentity)  == fidentity(Exponential<String,String>.init(x.getArrow))).run(c)
        }
    }

    func testExponentialFunctorMapComposition() {
        property("Exponential - Functor Laws - Composition") <- forAll { (x: ArrowOf<String,String>, c: String, f: ArrowOf<String,String>, g: ArrowOf<String,String>) in
            let fLifted = fflip(Exponential<String,String>.map)(f.getArrow)
            let gLifted = fflip(Exponential<String,String>.map)(g.getArrow)
            return (Exponential<String,String>.init(x.getArrow).map(g.getArrow • f.getArrow)  == (gLifted • fLifted § Exponential<String,String>.init(x.getArrow))).run(c)
        }
    }


//MARK: Future
    func testFutureFunctorMapIdentity() {
        property("Future - Functor Laws - Identity") <- forAll { (x: String) in
            return Future<String>.unfold({ $0(x) }).map(fidentity)  == fidentity(Future<String>.unfold({ $0(x) }))
        }
    }

    func testFutureFunctorMapComposition() {
        property("Future - Functor Laws - Composition") <- forAll { (x: String, f: ArrowOf<String,String>, g: ArrowOf<String,String>) in
            let fLifted = fflip(Future<String>.map)(f.getArrow)
            let gLifted = fflip(Future<String>.map)(g.getArrow)
            return Future<String>.unfold({ $0(x) }).map(g.getArrow • f.getArrow)  == (gLifted • fLifted § Future<String>.unfold({ $0(x) }))
        }
    }


//MARK: Inclusive
    func testInclusiveFunctorMapleftIdentity() {
        property("Inclusive - Functor Laws - Identity") <- forAll { (x: String, y: String) in
            return Inclusive<String,String>.left(x).mapLeft(fidentity)  == fidentity(Inclusive<String,String>.left(x))
        }
    }
    func testInclusiveFunctorMaprightIdentity() {
        property("Inclusive - Functor Laws - Identity") <- forAll { (x: String, y: String) in
            return Inclusive<String,String>.right(x).mapRight(fidentity)  == fidentity(Inclusive<String,String>.right(x))
        }
    }
    func testInclusiveFunctorBimapIdentity() {
        property("Inclusive - Functor Laws - Identity") <- forAll { (x: String, y: String) in
            return Inclusive<String,String>.center(x,y).bimap(onLeft: fidentity, onRight: fidentity)  == fidentity(Inclusive<String,String>.center(x,y))
        }
    }

    func testInclusiveFunctorMapleftComposition() {
        property("Inclusive - Functor Laws - Composition") <- forAll { (x: String, y: String, f: ArrowOf<String,String>, g: ArrowOf<String,String>) in
            let fLifted = fflip(Inclusive<String,String>.mapLeft)(f.getArrow)
            let gLifted = fflip(Inclusive<String,String>.mapLeft)(g.getArrow)
            return Inclusive<String,String>.left(x).mapLeft(g.getArrow • f.getArrow)  == (gLifted • fLifted § Inclusive<String,String>.left(x))
        }
    }
    func testInclusiveFunctorMaprightComposition() {
        property("Inclusive - Functor Laws - Composition") <- forAll { (x: String, y: String, f: ArrowOf<String,String>, g: ArrowOf<String,String>) in
            let fLifted = fflip(Inclusive<String,String>.mapRight)(f.getArrow)
            let gLifted = fflip(Inclusive<String,String>.mapRight)(g.getArrow)
            return Inclusive<String,String>.right(x).mapRight(g.getArrow • f.getArrow)  == (gLifted • fLifted § Inclusive<String,String>.right(x))
        }
    }


//MARK: Product
    func testProductFunctorMapfirstIdentity() {
        property("Product - Functor Laws - Identity") <- forAll { (x: String, y: String) in
            return Product<String,String>.init(x,y).mapFirst(fidentity)  == fidentity(Product<String,String>.init(x,y))
        }
    }
    func testProductFunctorMapsecondIdentity() {
        property("Product - Functor Laws - Identity") <- forAll { (x: String, y: String) in
            return Product<String,String>.init(x,y).mapSecond(fidentity)  == fidentity(Product<String,String>.init(x,y))
        }
    }
    func testProductFunctorBimapIdentity() {
        property("Product - Functor Laws - Identity") <- forAll { (x: String, y: String) in
            return Product<String,String>.init(x,y).bimap(onFirst: fidentity, onSecond: fidentity)  == fidentity(Product<String,String>.init(x,y))
        }
    }

    func testProductFunctorMapfirstComposition() {
        property("Product - Functor Laws - Composition") <- forAll { (x: String, y: String, f: ArrowOf<String,String>, g: ArrowOf<String,String>) in
            let fLifted = fflip(Product<String,String>.mapFirst)(f.getArrow)
            let gLifted = fflip(Product<String,String>.mapFirst)(g.getArrow)
            return Product<String,String>.init(x,y).mapFirst(g.getArrow • f.getArrow)  == (gLifted • fLifted § Product<String,String>.init(x,y))
        }
    }
    func testProductFunctorMapsecondComposition() {
        property("Product - Functor Laws - Composition") <- forAll { (x: String, y: String, f: ArrowOf<String,String>, g: ArrowOf<String,String>) in
            let fLifted = fflip(Product<String,String>.mapSecond)(f.getArrow)
            let gLifted = fflip(Product<String,String>.mapSecond)(g.getArrow)
            return Product<String,String>.init(x,y).mapSecond(g.getArrow • f.getArrow)  == (gLifted • fLifted § Product<String,String>.init(x,y))
        }
    }


//MARK: Reader
    func testReaderFunctorMapIdentity() {
        property("Reader - Functor Laws - Identity") <- forAll { (x: ArrowOf<String,String>, c: String) in
            return (Reader<String,String>.unfold(x.getArrow).map(fidentity)  == fidentity(Reader<String,String>.unfold(x.getArrow))).run(c)
        }
    }

    func testReaderFunctorMapComposition() {
        property("Reader - Functor Laws - Composition") <- forAll { (x: ArrowOf<String,String>, c: String, f: ArrowOf<String,String>, g: ArrowOf<String,String>) in
            let fLifted = fflip(Reader<String,String>.map)(f.getArrow)
            let gLifted = fflip(Reader<String,String>.map)(g.getArrow)
            return (Reader<String,String>.unfold(x.getArrow).map(g.getArrow • f.getArrow)  == (gLifted • fLifted § Reader<String,String>.unfold(x.getArrow))).run(c)
        }
    }


//MARK: Result
    func testResultFunctorMapIdentity() {
        property("Result - Functor Laws - Identity") <- forAll { (x: String) in
            return Result<String,String>.success(x).map(fidentity)  == fidentity(Result<String,String>.success(x))
        }
    }

    func testResultFunctorMapComposition() {
        property("Result - Functor Laws - Composition") <- forAll { (x: String, f: ArrowOf<String,String>, g: ArrowOf<String,String>) in
            let fLifted = fflip(Result<String,String>.map)(f.getArrow)
            let gLifted = fflip(Result<String,String>.map)(g.getArrow)
            return Result<String,String>.success(x).map(g.getArrow • f.getArrow)  == (gLifted • fLifted § Result<String,String>.success(x))
        }
    }


//MARK: State
    func testStateFunctorMapIdentity() {
        property("State - Functor Laws - Identity") <- forAll { (x: String, c: String) in
            return (State<String,String>.unfold{ s in (s,x)}.map(fidentity)  == fidentity(State<String,String>.unfold{ s in (s,x)})).run(c)
        }
    }

    func testStateFunctorMapComposition() {
        property("State - Functor Laws - Composition") <- forAll { (x: String, c: String, f: ArrowOf<String,String>, g: ArrowOf<String,String>) in
            let fLifted = fflip(State<String,String>.map)(f.getArrow)
            let gLifted = fflip(State<String,String>.map)(g.getArrow)
            return (State<String,String>.unfold{ s in (s,x)}.map(g.getArrow • f.getArrow)  == (gLifted • fLifted § State<String,String>.unfold{ s in (s,x)})).run(c)
        }
    }


//MARK: Writer
    func testWriterFunctorMapIdentity() {
        property("Writer - Functor Laws - Identity") <- forAll { (x: String, y: String) in
            return Writer<String,String>.init(log: y, value: x).map(fidentity)  == fidentity(Writer<String,String>.init(log: y, value: x))
        }
    }

    func testWriterFunctorMapComposition() {
        property("Writer - Functor Laws - Composition") <- forAll { (x: String, y: String, f: ArrowOf<String,String>, g: ArrowOf<String,String>) in
            let fLifted = fflip(Writer<String,String>.map)(f.getArrow)
            let gLifted = fflip(Writer<String,String>.map)(g.getArrow)
            return Writer<String,String>.init(log: y, value: x).map(g.getArrow • f.getArrow)  == (gLifted • fLifted § Writer<String,String>.init(log: y, value: x))
        }
    }


}
