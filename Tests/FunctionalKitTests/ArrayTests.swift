import XCTest
import Operadics
@testable import FunctionalKit
#if SWIFT_PACKAGE
	import Operadics
#endif

class ArrayTests: XCTestCase {
    
    func testLiftOneArg() {
        let id: (Int) -> Int = {$0}
        let ap1 = Array.pure(1)
        
        Array.lift(id)(ap1) ==! Array.pure(id) <*> ap1
        Array.lift(id)(ap1) ==! Array.pure(1)
    }
    
    func testLiftTwoArgs() {
        let sum: (Int,Int) -> Int = {$0 + $1}
        let ap1 = Array.pure(1)
        let ap2 = Array.pure(2)
        
        Array.lift(sum)(ap1, ap2) ==! Array.pure(fcurry(sum)) <*> ap1 <*> ap2
        Array.lift(sum)(ap1, ap2) ==! Array.pure(3)
    }
    
    func testLiftThreeArgs(){
        let sum: (Int,Int, Int) -> Int = {$0 + $1 + $2}
        let ap1 = Array.pure(1)
        let ap2 = Array.pure(2)
        let ap3 = Array.pure(3)
        
        Array.lift(sum)(ap1, ap2, ap3) ==! Array.pure(fcurry(sum)) <*> ap1 <*> ap2 <*> ap3
        Array.lift(sum)(ap1, ap2, ap3) ==! Array.pure(6)
    }
    
    static var allTests = [
        ("testLiftOneArg", testLiftOneArg),
        ("testLiftTwoArgs", testLiftTwoArgs),
        ("testLiftThreeArgs", testLiftThreeArgs)
    ]
}


