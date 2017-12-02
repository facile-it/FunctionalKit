import XCTest
import Operadics
@testable import FunctionalKit

class OptionalTests: XCTestCase {
    
    
    func testLiftOneArg() {
        let id: (Int) -> Int = {$0}
        let op1 = Optional.pure(1)
        
        XCTAssert(Optional.lift(id)(op1) == (Optional.pure(id) <*> op1))
        XCTAssert(Optional.lift(id)(op1) == Optional.pure(1))
    }
    
    func testLiftTwoArgs() {
        let sum: (Int,Int) -> Int = {$0 + $1}
        let op1 = Optional.pure(1)
        let op2 = Optional.pure(2)
        
        XCTAssert(Optional.lift(sum)(op1, op2) == (Optional.pure(fcurry(sum)) <*> op1 <*> op2))
        XCTAssert(Optional.lift(sum)(op1, op2) == Optional.pure(3))
    }
    
    func testLiftThreeArgs(){
        let sum: (Int,Int, Int) -> Int = {$0 + $1 + $2}
        let op1 = Optional.pure(1)
        let op2 = Optional.pure(2)
        let op3 = Optional.pure(3)
        
        XCTAssert(Optional.lift(sum)(op1, op2, op3) == (Optional.pure(fcurry(sum)) <*> op1 <*> op2 <*> op3))
        XCTAssert(Optional.lift(sum)(op1, op2, op3) == Optional.pure(6))
    }
    
    static var allTests = [
        ("testLiftOneArg", testLiftOneArg),
        ("testLiftTwoArgs", testLiftTwoArgs),
        ("testLiftThreeArgs", testLiftThreeArgs)
        ]
}

