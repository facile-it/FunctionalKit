import XCTest
import Operadics
@testable import FunctionalKit

class OptionalTests: XCTestCase {
    
    func testLift() {
        let sum: (Int,Int) -> Int = {$0 + $1}
        let op1 = Optional.pure(1)
        let op2 = Optional.pure(2)
        
        XCTAssert(Optional.lift(sum)(op1, op2) == (Optional.pure(fcurry(sum)) <*> op1 <*> op2))
        XCTAssert(Optional.lift(sum)(op1, op2) == Optional.pure(3))
    }
    
    static var allTests = [
        ("testLift", testLift)
        ]
}

