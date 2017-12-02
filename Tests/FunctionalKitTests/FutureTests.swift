import XCTest
import Operadics
@testable import FunctionalKit

class FutureTests: XCTestCase {
    
    
    func testLiftOneArg() {
        let id: (Int) -> Int = {$0}
        let ap1 = Future.pure(1)
        
        let expect = expectation(description: "testLiftOneArg")

        Future.lift(id)(ap1).run { value in
            XCTAssert(value == 1)
            expect.fulfill()
        }
        
        wait(for: [expect], timeout: 2)
    }
    
    func testLiftTwoArgs() {
        let sum: (Int,Int) -> Int = {$0 + $1}
        let ap1 = Future.pure(1)
        let ap2 = Future.pure(2)
        
        let expect = expectation(description: "testLiftTwoArgs")
        
        Future.lift(sum)(ap1, ap2).run { value in
            XCTAssert(value == 3)
            expect.fulfill()
        }

        wait(for: [expect], timeout: 2)
    }
    
    func testLiftThreeArgs(){
        let sum: (Int,Int, Int) -> Int = {$0 + $1 + $2}
        let ap1 = Future.pure(1)
        let ap2 = Future.pure(2)
        let ap3 = Future.pure(3)
        
        let expect = expectation(description: "testLiftThreeArgs")
        
        Future.lift(sum)(ap1, ap2, ap3).run { value in
            XCTAssert(value == 6)
            expect.fulfill()
        }
        
        wait(for: [expect], timeout: 2)
    }
    
    static var allTests = [
        ("testLiftOneArg", testLiftOneArg),
        ("testLiftTwoArgs", testLiftTwoArgs),
        ("testLiftThreeArgs", testLiftThreeArgs)
    ]
}



