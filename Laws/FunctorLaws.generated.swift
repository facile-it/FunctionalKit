// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import XCTest
@testable import FunctionalKit
import SwiftCheck
import Abstract

class FunctorLawsTests: XCTestCase {


//MARK: Array

//  Identity Law
    func testArrayIdentity() {
        property("Array - Functor Laws - Identity") <- forAll { (x: ArrayOf<String>) in
            return x.getArray.map(fidentity) == fidentity(x.getArray)
        }
    }


//MARK: Coproduct

// Left Identity Law
    func testCoproductLeftIdentity() {
        property("Coproduct - Functor Laws - LeftIdentity") <- forAll { (x: String, y: String) in
            return Coproduct<String,String>.left(x).mapLeft(fidentity) == fidentity(Coproduct<String,String>.left(x))
        }
    }

// Right Identity Law
    func testCoproductRightIdentity() {
        property("Coproduct - Functor Laws - RightIdentity") <- forAll { (x: String, y: String) in
            return Coproduct<String,String>.right(x).mapRight(fidentity) == fidentity(Coproduct<String,String>.right(x))
        }
    }


//MARK: Exponential

//  Identity Law
    func testExponentialIdentity() {
        property("Exponential - Functor Laws - Identity") <- forAll { (x: ArrowOf<String,String>, c: String) in
            return (Exponential<String,String>.init(x.getArrow).map(fidentity) == fidentity(Exponential<String,String>.init(x.getArrow))).run(c)
        }
    }


//MARK: Future

//  Identity Law
    func testFutureIdentity() {
        property("Future - Functor Laws - Identity") <- forAll { (x: String) in
            return Future<String>.unfold({ $0(x) }).map(fidentity) == fidentity(Future<String>.unfold({ $0(x) }))
        }
    }


//MARK: Inclusive

// Left Identity Law
    func testInclusiveLeftIdentity() {
        property("Inclusive - Functor Laws - LeftIdentity") <- forAll { (x: String, y: String) in
            return Inclusive<String,String>.left(x).mapLeft(fidentity) == fidentity(Inclusive<String,String>.left(x))
        }
    }

// Right Identity Law
    func testInclusiveRightIdentity() {
        property("Inclusive - Functor Laws - RightIdentity") <- forAll { (x: String, y: String) in
            return Inclusive<String,String>.right(x).mapRight(fidentity) == fidentity(Inclusive<String,String>.right(x))
        }
    }

// Center Identity Law
    func testInclusiveCenterIdentity() {
        property("Inclusive - Functor Laws - CenterIdentity") <- forAll { (x: String, y: String) in
            return Inclusive<String,String>.center(x,x).bimap(onLeft: fidentity, onRight: fidentity) == fidentity(Inclusive<String,String>.center(x,x))
        }
    }


//MARK: Optional

//  Identity Law
    func testOptionalIdentity() {
        property("Optional - Functor Laws - Identity") <- forAll { (x: OptionalOf<String>) in
            return x.getOptional.map(fidentity) == fidentity(x.getOptional)
        }
    }


//MARK: Product

// First Identity Law
    func testProductFirstIdentity() {
        property("Product - Functor Laws - FirstIdentity") <- forAll { (x: String, y: String) in
            return Product<String,String>.init(x,y) == fidentity(Product<String,String>.init(x,y))
        }
    }

// Second Identity Law
    func testProductSecondIdentity() {
        property("Product - Functor Laws - SecondIdentity") <- forAll { (x: String, y: String) in
            return Product<String,String>.init(x,y).mapSecond(fidentity) == fidentity(Product<String,String>.init(x,y))
        }
    }

// Both Identity Law
    func testProductBothIdentity() {
        property("Product - Functor Laws - BothIdentity") <- forAll { (x: String, y: String) in
            return Product<String,String>.init(x,y).bimap(onFirst: fidentity, onSecond: fidentity) == fidentity(Product<String,String>.init(x,y))
        }
    }


//MARK: Reader

//  Identity Law
    func testReaderIdentity() {
        property("Reader - Functor Laws - Identity") <- forAll { (x: ArrowOf<String,String>, c: String) in
            return (Reader<String,String>.unfold(x.getArrow).map(fidentity) == fidentity(Reader<String,String>.unfold(x.getArrow))).run(c)
        }
    }


//MARK: Result

//  Identity Law
    func testResultIdentity() {
        property("Result - Functor Laws - Identity") <- forAll { (x: String) in
            return Result<String,String>.success(x).map(fidentity) == fidentity(Result<String,String>.success(x))
        }
    }


//MARK: State

//  Identity Law
    func testStateIdentity() {
        property("State - Functor Laws - Identity") <- forAll { (x: String, c: String) in
            return (State<String,String>.unfold{ s in (s,x)}.map(fidentity) == fidentity(State<String,String>.unfold{ s in (s,x)})).run(c)
        }
    }


//MARK: Writer

//  Identity Law
    func testWriterIdentity() {
        property("Writer - Functor Laws - Identity") <- forAll { (x: String, y: String) in
            return Writer<String,String>.init(log:y,value:y).map(fidentity) == fidentity(Writer<String,String>.init(log:y,value:y))
        }
    }

}


























