import XCTest
import Abstract
@testable import FunctionalKit

class ReaderTests: XCTestCase {
    
    struct Environment: Equatable {
        var environment = "Production"
        
        static func ==(lhs: ReaderTests.Environment, rhs: ReaderTests.Environment) -> Bool {
            return lhs.environment == rhs.environment
        }
    }
    
    typealias TestReaderType<T> = Reader<Environment,T>
    let environment = Environment()
    
    func testLiftOneArg() {
        let id: (Int) -> Int = {$0}
        let ap1 = TestReaderType.pure(1)
        
        
        XCTAssertTrue((TestReaderType.lift(id)(ap1) == (TestReaderType.pure(id) <*> ap1)).run(environment))
        XCTAssertTrue((TestReaderType.lift(id)(ap1) == TestReaderType.pure(1)).run(environment))
    }
    
    func testLiftTwoArgs() {
        let sum: (Int,Int) -> Int = {$0 + $1}
        let ap1 = TestReaderType.pure(1)
        let ap2 = TestReaderType.pure(2)
        
        XCTAssertTrue((TestReaderType.lift(sum)(ap1, ap2) == TestReaderType.pure(3)).run(environment))
    }
    
    func testLiftThreeArgs(){
        let sum: (Int,Int,Int) -> Int = {$0 + $1 + $2}
        let ap1 = TestReaderType.pure(1)
        let ap2 = TestReaderType.pure(2)
        let ap3 = TestReaderType.pure(3)

        XCTAssertTrue((TestReaderType.lift(sum)(ap1, ap2, ap3) == TestReaderType.pure(6)).run(environment))
    }
    
    static var allTests = [
        ("testLiftOneArg", testLiftOneArg),
        ("testLiftTwoArgs", testLiftTwoArgs),
        ("testLiftThreeArgs", testLiftThreeArgs)
    ]
}



