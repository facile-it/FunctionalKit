import XCTest
@testable import FunctionalKit
#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

class StateTests: XCTestCase {
    
    enum AppState {
        case running
    }
    
    typealias TestStateType<T> = State<AppState, T>
    let initialState = AppState.running
    
    func testLiftOneArg() {
        let id: (Int) -> Int = {$0}
        let ap1 = TestStateType.pure(1)
        
        XCTAssertTrue((TestStateType.lift(id)(ap1) == (TestStateType.pure(id) <*> ap1))(initialState))
        XCTAssertTrue((TestStateType.lift(id)(ap1) == TestStateType.pure(1))(initialState))
    }
    
    func testLiftTwoArgs() {
        let sum: (Int,Int) -> Int = {$0 + $1}
        let ap1 = TestStateType.pure(1)
        let ap2 = TestStateType.pure(2)
        
        XCTAssertTrue((TestStateType.lift(sum)(ap1, ap2) == TestStateType.pure(3))(initialState))
    }
    
    func testLiftThreeArgs(){
        let sum: (Int,Int,Int) -> Int = {$0 + $1 + $2}
        let ap1 = TestStateType.pure(1)
        let ap2 = TestStateType.pure(2)
        let ap3 = TestStateType.pure(3)
        
        XCTAssertTrue((TestStateType.lift(sum)(ap1, ap2, ap3) == TestStateType.pure(6))(initialState))
    }
    
    static var allTests = [
        ("testLiftOneArg", testLiftOneArg),
        ("testLiftTwoArgs", testLiftTwoArgs),
        ("testLiftThreeArgs", testLiftThreeArgs)
    ]
}



