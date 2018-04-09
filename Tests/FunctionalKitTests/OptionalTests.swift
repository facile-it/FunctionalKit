import XCTest
@testable import FunctionalKit
#if SWIFT_PACKAGE
	import Operadics
#endif
import Abstract

class OptionalTests: XCTestCase {
    
    func testLiftOneArg() {
        let id: (Int) -> Int = {$0}
        let ap1 = Optional.pure(1)
        
        Optional.lift(id)(ap1) ==! Optional.pure(id) <*> ap1
        Optional.lift(id)(ap1) ==! Optional.pure(1)
        XCTAssertEqual(Optional.lift(id)(ap1), Optional.pure(1))
    }
    
    func testLiftTwoArgs() {
        let sum: (Int,Int) -> Int = {$0 + $1}
        let ap1 = Optional.pure(1)
        let ap2 = Optional.pure(2)

        Optional.lift(sum)(ap1, ap2) ==! Optional.pure(f.curry(sum)) <*> ap1 <*> ap2
        Optional.lift(sum)(ap1, ap2) ==! Optional.pure(3)
    }
    
    func testLiftThreeArgs(){
        let sum: (Int,Int, Int) -> Int = {$0 + $1 + $2}
        let ap1 = Optional.pure(1)
        let ap2 = Optional.pure(2)
        let ap3 = Optional.pure(3)
        
        Optional.lift(sum)(ap1, ap2, ap3) ==! Optional.pure(f.curry(sum)) <*> ap1 <*> ap2 <*> ap3
        Optional.lift(sum)(ap1, ap2, ap3) ==! Optional.pure(6)
    }
    
    static var allTests = [
        ("testLiftOneArg", testLiftOneArg),
        ("testLiftTwoArgs", testLiftTwoArgs),
        ("testLiftThreeArgs", testLiftThreeArgs)
        ]
}

