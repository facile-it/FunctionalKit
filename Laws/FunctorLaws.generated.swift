// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import XCTest
@testable import FunctionalKit
import SwiftCheck
import Abstract

class FunctorLawsTests: XCTestCase {


//MARK: Array


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


//MARK: Future


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


//MARK: Result


//MARK: State


//MARK: Writer

}


























