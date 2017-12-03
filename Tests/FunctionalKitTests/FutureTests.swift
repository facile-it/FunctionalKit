import XCTest
import Operadics
@testable import FunctionalKit

class FutureTests: XCTestCase {
    
    func testLiftOneArg() {
        let id: (Int) -> Int = {$0}
        let ap1 = Future.pure(1)
        
        expecting("testLiftOneArg") { (fulfill) in
            Future.lift(id)(ap1).run { value in
                XCTAssert(value == 1)
                fulfill()
            }
        }
    }
    
    func testLiftTwoArgs() {
        let sum: (Int,Int) -> Int = {$0 + $1}
        let ap1 = Future.pure(1)
        let ap2 = Future.pure(2)
        
        expecting("testLiftTwoArgs") { (fulfill) in
            Future.lift(sum)(ap1, ap2).run { value in
                XCTAssert(value == 3)
                fulfill()
            }
        }
    }
    
    func testLiftThreeArgs(){
        let sum: (Int,Int, Int) -> Int = {$0 + $1 + $2}
        let ap1 = Future.pure(1)
        let ap2 = Future.pure(2)
        let ap3 = Future.pure(3)
        
        expecting("testLiftThreeArgs") { (fulfill) in
            Future.lift(sum)(ap1, ap2, ap3).run { value in
                XCTAssert(value == 6)
                fulfill()
            }
        }
    }
    
    static var allTests = [
        ("testLiftOneArg", testLiftOneArg),
        ("testLiftTwoArgs", testLiftTwoArgs),
        ("testLiftThreeArgs", testLiftThreeArgs)
    ]
}



