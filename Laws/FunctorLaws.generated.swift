// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT




import XCTest
@testable import FunctionalKit
import SwiftCheck

class FunctorLawsTests: XCTestCase {


//MARK: Array

// Identity Law
    func testArrayIdentity() {
        property("Array - Functor Laws - Identity") <- forAll { (x: ArrayOf<Int>) in
            return x.getArray.map(fidentity) == fidentity(x.getArray)
        }
    }




//MARK: Coproduct


// Left Identity Law
    func testCoproductLeftIdentity() {
        property("Coproduct - Functor Laws - Left Identity") <- forAll { (x: Int, context: Int) in
            return Coproduct<Int,Int>.left(x).mapLeft(fidentity) == fidentity(Coproduct<Int,Int>.left(x))
        }
    }

    func testCoproductRightIdentity() {
        property("Coproduct - Functor Laws - Right Identity") <- forAll { (x: Int, context: Int) in
            return Coproduct<Int,Int>.right(x).mapLeft(fidentity) == fidentity(Coproduct<Int,Int>.right(x))
        }
    }


//MARK: Future

// Identity Law
    func testFutureIdentity() {
        property("Future - Functor Laws - Identity") <- forAll { (x: Int) in
            return Future.unfold({ $0(x) }).map(fidentity) == fidentity(Future.unfold({ $0(x) }))
        }
    }




//MARK: Optional

// Identity Law
    func testOptionalIdentity() {
        property("Optional - Functor Laws - Identity") <- forAll { (x: OptionalOf<Int>) in
            return x.getOptional.map(fidentity) == fidentity(x.getOptional)
        }
    }



}
