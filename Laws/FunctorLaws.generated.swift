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
        property("Coproduct - Functor Laws - Identity") <- forAll { (x: String, y: String) in
            return Coproduct<String,String>.left(x) == fidentity(Coproduct<String,String>.left(x))
        }
    }

// Right Identity Law
    func testCoproductRightIdentity() {
        property("Coproduct - Functor Laws - Identity") <- forAll { (x: String, y: String) in
            return Coproduct<String,String>.right(x) == fidentity(Coproduct<String,String>.right(x))
        }
    }


//MARK: Exponential

// Identity Law
    func testExponentialIdentity() {
        property("Exponential - Functor Laws - Identity") <- forAll { (x: ArrowOf<String,String>, c: String) in
            return (Exponential<String,String>.init(x.getArrow).map(fidentity) == fidentity(Exponential<String,String>.init(x.getArrow))).run(c)
        }
    }




//MARK: Future





//MARK: Inclusive





//MARK: Optional





//MARK: Product





//MARK: Reader





//MARK: Result





//MARK: State





//MARK: Writer




}


























