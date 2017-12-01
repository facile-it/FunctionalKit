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


//MARK: Exponential
    func testExponentialFunctorMapIdentity() {
        property("Exponential - Functor Laws - Identity") <- forAll { (x: ArrowOf<String,String>, c: String) in
            return (Exponential<String,String>.init(x.getArrow).map(fidentity)  == fidentity(Exponential<String,String>.init(x.getArrow))).run(c)
        }
    }


//MARK: Future
    func testFutureFunctorMapIdentity() {
        property("Future - Functor Laws - Identity") <- forAll { (x: String) in
            return Future<String>.unfold({ $0(x) }).map(fidentity)  == fidentity(Future<String>.unfold({ $0(x) }))
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


//MARK: Optional
    func testOptionalFunctorMapIdentity() {
        property("Optional - Functor Laws - Identity") <- forAll { (x: OptionalOf<String>) in
            return x.getOptional.map(fidentity)  == fidentity(x.getOptional)
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


//MARK: Reader
    func testReaderFunctorMapIdentity() {
        property("Reader - Functor Laws - Identity") <- forAll { (x: ArrowOf<String,String>, c: String) in
            return (Reader<String,String>.unfold(x.getArrow).map(fidentity)  == fidentity(Reader<String,String>.unfold(x.getArrow))).run(c)
        }
    }


//MARK: Result
    func testResultFunctorMapIdentity() {
        property("Result - Functor Laws - Identity") <- forAll { (x: String) in
            return Result<String,String>.success(x).map(fidentity)  == fidentity(Result<String,String>.success(x))
        }
    }


//MARK: State
    func testStateFunctorMapIdentity() {
        property("State - Functor Laws - Identity") <- forAll { (x: String, c: String) in
            return (State<String,String>.unfold{ s in (s,x)}.map(fidentity)  == fidentity(State<String,String>.unfold{ s in (s,x)})).run(c)
        }
    }


//MARK: Writer
    func testWriterFunctorMapIdentity() {
        property("Writer - Functor Laws - Identity") <- forAll { (x: String, y: String) in
            return Writer<String,String>.init(log: y, value: x).map(fidentity)  == fidentity(Writer<String,String>.init(log: y, value: x))
        }
    }


}
