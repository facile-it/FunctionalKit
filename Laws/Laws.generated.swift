// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT









import XCTest
@testable import FunctionalKit
import SwiftCheck
import Abstract

class LawsTests: XCTestCase {

//MARK: Array
    func testArrayFunctorMapIdentity() {
        property("Array - Functor Laws - MapIdentity") <- forAll { (x: ArrayOf<String>) in
            return x.getArray.map(fidentity)  == fidentity(x.getArray)
        }
    }


//MARK: Coproduct


//MARK: Exponential


//MARK: Future


//MARK: Inclusive


//MARK: Optional


//MARK: Product


//MARK: Reader


//MARK: Result


//MARK: State


//MARK: Writer


}
