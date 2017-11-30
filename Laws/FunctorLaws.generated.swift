// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import XCTest
@testable import FunctionalKit
import SwiftCheck
import Abstract

class FunctorLawsTests: XCTestCase {

//MARK: Array

// Identity Law
    func testArrayIdentity() {
        property("Array - Functor Laws - Identity") <- forAll { (x: ArrayOf<String>) in
            return x.getArray.map(fidentity) == fidentity(x.getArray)
        }
    }

//MARK: Coproduct

// Left Identity Law
    func testCoproductLeftIdentity() {
        property("Coproduct - Functor Laws - Left Identity") <- forAll { (x: String) in
            return Coproduct<String,String>.left(x).mapLeft(fidentity) == fidentity(Coproduct<String,String>.left(x))
        }
    }

// Right Identity Law
    func testCoproductRightIdentity() {
        property("Coproduct - Functor Laws - Right Identity") <- forAll { (x: String) in
            return Coproduct<String,String>.right(x).mapRight(fidentity) == fidentity(Coproduct<String,String>.right(x))
        }
    }

//MARK: Exponential

// Identity Law
    func testExponentialIdentity() {
        property("Exponential - Functor Laws - Identity") <- forAll { (x: ArrowOf<String,String>, context: String) in
            return (Exponential.init(x.getArrow).map(fidentity) == fidentity(Exponential.init(x.getArrow))).run(context)
        }
    }

//MARK: Future

// Identity Law
    func testFutureIdentity() {
        property("Future - Functor Laws - Identity") <- forAll { (x: String) in
            return Future.unfold({ $0(x) }).map(fidentity) == fidentity(Future.unfold({ $0(x) }))
        }
    }

//MARK: Inclusive

// Left Identity Law
    func testInclusiveLeftIdentity() {
        property("Inclusive - Functor Laws - Left Identity") <- forAll { (x: String, y: String) in
            return Inclusive<String,String>.left(x).mapLeft(fidentity) == fidentity(Inclusive<String,String>.left(x))
        }
    }

// Right Identity Law
    func testInclusiveRightIdentity() {
        property("Inclusive - Functor Laws - Right Identity") <- forAll { (x: String, y: String) in
            return Inclusive<String,String>.right(x).mapRight(fidentity) == fidentity(Inclusive<String,String>.right(x))
        }
    }

    func testInclusiveCenterIdentity() {
        property("Inclusive - Functor Laws - Center Identity") <- forAll { (x: String, y: String) in
            return Inclusive<String,String>.center(x,y).bimap(onLeft: fidentity, onRight: fidentity) == fidentity(Inclusive<String,String>.center(x,y))
        }
    }

//MARK: Optional

// Identity Law
    func testOptionalIdentity() {
        property("Optional - Functor Laws - Identity") <- forAll { (x: OptionalOf<String>) in
            return x.getOptional.map(fidentity) == fidentity(x.getOptional)
        }
    }

//MARK: Product

// First Identity Law
    func testProductFirstIdentity() {
        property("Product - Functor Laws - First Identity") <- forAll { (x: String, y: String) in
            return Product<String,String>.init(x,y).mapFirst(fidentity) == fidentity(Product<String,String>.init(x,y))
        }
    }

// Second Identity Law
    func testProductSecondIdentity() {
        property("Product - Functor Laws - Second Identity") <- forAll { (x: String, y: String) in
            return Product<String,String>.init(x,y).mapSecond(fidentity) == fidentity(Product<String,String>.init(x,y))
        }
    }

// Both Identity Law
    func testProductBothIdentity() {
        property("Product - Functor Laws - Both Identity") <- forAll { (x: String, y: String) in
            return Product<String,String>.init(x,y).bimap(onFirst: fidentity, onSecond: fidentity) == fidentity(Product<String,String>.init(x,y))
        }
    }

//MARK: Reader

// Identity Law
    func testReaderIdentity() {
        property("Reader - Functor Laws - Identity") <- forAll { (x: ArrowOf<String,String>, context: String) in
            return (Reader.unfold(x.getArrow).map(fidentity) == fidentity(Reader.unfold(x.getArrow))).run(context)
        }
    }

//MARK: Result

// Identity Law
    func testResultIdentity() {
        property("Result - Functor Laws - Identity") <- forAll { (x: String) in
            return Result<AnyError,String>.success(x).map(fidentity) == fidentity(Result<AnyError,String>.success(x))
        }
    }

//MARK: State

// Identity Law
    func testStateIdentity() {
        property("State - Functor Laws - Identity") <- forAll { (x: String, context: String) in
            return (State<String,String>.unfold{ s in (s,x)}.map(fidentity) == fidentity(State<String,String>.unfold{ s in (s,x)})).run(context)
        }
    }

//MARK: Writer

// Identity Law
    func testWriterIdentity() {
        property("Writer - Functor Laws - Identity") <- forAll { (x: String, context: String) in
            return Writer<String,String>.init(log: context, value: x).map(fidentity) == fidentity(Writer<String,String>.init(log: context, value: x))
        }
    }

}
