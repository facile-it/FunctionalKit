import XCTest
import Operadics
@testable import FunctionalKit
#if SWIFT_PACKAGE
	import Operadics
#endif

class ResultTests: XCTestCase {
    
    enum TestErrorType: Error {
        case error
    }
    
    typealias TestResultType<T> = Result<TestErrorType, T>
    
    func testLiftOneArg() {
        let id: (Int) -> Int = {$0}
        let ap1 = TestResultType.pure(1)
        
        TestResultType.lift(id)(ap1) ==! TestResultType.pure(id) <*> ap1
        TestResultType.lift(id)(ap1) ==! TestResultType.pure(1)
    }
    
    func testLiftTwoArgs() {
        let sum: (Int,Int) -> Int = {$0 + $1}
        let ap1 = TestResultType.pure(1)
        let ap2 = TestResultType.pure(2)
        
        TestResultType.lift(sum)(ap1, ap2) ==! TestResultType.pure(fcurry(sum)) <*> ap1 <*> ap2
        TestResultType.lift(sum)(ap1, ap2) ==! TestResultType.pure(3)
    }
    
    func testLiftThreeArgs(){
        let sum: (Int,Int, Int) -> Int = {$0 + $1 + $2}
        let ap1 = TestResultType.pure(1)
        let ap2 = TestResultType.pure(2)
        let ap3 = TestResultType.pure(3)
        
        TestResultType.lift(sum)(ap1, ap2, ap3) ==! TestResultType.pure(fcurry(sum)) <*> ap1 <*> ap2 <*> ap3
        TestResultType.lift(sum)(ap1, ap2, ap3) ==! TestResultType.pure(6)
    }
    
    static var allTests = [
        ("testLiftOneArg", testLiftOneArg),
        ("testLiftTwoArgs", testLiftTwoArgs),
        ("testLiftThreeArgs", testLiftThreeArgs)
    ]
}


