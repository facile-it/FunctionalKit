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
    func testExponentialFunctorMapIdentity() {
        property("Exponential - Functor Laws - MapIdentity") <- forAll { (x: ArrowOf<String,String>, c: String) in
            return (Exponential<String,String>.init(x.getArrow).map(fidentity)  == fidentity(Exponential<String,String>.init(x.getArrow))).run(c)
        }
    }


//MARK: Future
    func testFutureFunctorMapIdentity() {
        property("Future - Functor Laws - MapIdentity") <- forAll { (x: String) in
            return Future<String>.unfold({ $0(x) }).map(fidentity)  == fidentity(Future<String>.unfold({ $0(x) }))
        }
    }


//MARK: Inclusive


//MARK: Optional
    func testOptionalFunctorMapIdentity() {
        property("Optional - Functor Laws - MapIdentity") <- forAll { (x: OptionalOf<String>) in
            return x.getOptional.map(fidentity)  == fidentity(x.getOptional)
        }
    }


//MARK: Product


//MARK: Reader
    func testReaderFunctorMapIdentity() {
        property("Reader - Functor Laws - MapIdentity") <- forAll { (x: ArrowOf<String,String>, c: String) in
            return (Reader<String,String>.unfold(x.getArrow).map(fidentity)  == fidentity(Reader<String,String>.unfold(x.getArrow))).run(c)
        }
    }


//MARK: Result
    func testResultFunctorMapIdentity() {
        property("Result - Functor Laws - MapIdentity") <- forAll { (x: String) in
            return Result<String,String>.success(x).map(fidentity)  == fidentity(Result<String,String>.success(x))
        }
    }


//MARK: State
    func testStateFunctorMapIdentity() {
        property("State - Functor Laws - MapIdentity") <- forAll { (x: String, c: String) in
            return (State<String,String>.unfold{ s in (s,x)}.map(fidentity)  == fidentity(State<String,String>.unfold{ s in (s,x)})).run(c)
        }
    }


//MARK: Writer
    func testWriterFunctorMapIdentity() {
        property("Writer - Functor Laws - MapIdentity") <- forAll { (x: String, y: String) in
            return Writer<String,String>.init(log: y, value: x).map(fidentity)  == fidentity(Writer<String,String>.init(log: y, value: x))
        }
    }


}
