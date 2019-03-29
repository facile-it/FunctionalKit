import XCTest
@testable import FunctionalKit
#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

class ReaderTests: XCTestCase {
    
    struct Environment: Equatable {
        var environment = "Production"
        
        static func == (lhs: ReaderTests.Environment, rhs: ReaderTests.Environment) -> Bool {
            return lhs.environment == rhs.environment
        }
    }
    
    typealias TestReaderType<T> = Reader<Environment,T>
    let environment = Environment()
    
    func testLiftOneArg() {
        let id: (Int) -> Int = {$0}
        let ap1 = TestReaderType.pure(1)

        XCTAssertTrue((TestReaderType.lift(id)(ap1) == (TestReaderType.pure(id) <*> ap1))(environment))
        XCTAssertTrue((TestReaderType.lift(id)(ap1) == TestReaderType.pure(1))(environment))
    }

    func testLiftTwoArgs() {
        let sum: (Int,Int) -> Int = {$0 + $1}
        let ap1 = TestReaderType.pure(1)
        let ap2 = TestReaderType.pure(2)

        XCTAssertTrue((TestReaderType.lift(sum)(ap1, ap2) == TestReaderType.pure(3))(environment))
    }

    func testLiftThreeArgs(){
        let sum: (Int,Int,Int) -> Int = {$0 + $1 + $2}
        let ap1 = TestReaderType.pure(1)
        let ap2 = TestReaderType.pure(2)
        let ap3 = TestReaderType.pure(3)

        XCTAssertTrue((TestReaderType.lift(sum)(ap1, ap2, ap3) == TestReaderType.pure(6))(environment))
    }

    func testAsk() {
        expecting("testAsk") { (fulfill) in
            let r = TestReaderType<Int>.ask.map { environment -> (ReaderTests.Environment) in
                environment.environment ==! "Test"
                fulfill()
                return environment
            }
            r.run(Environment(environment: "Test")) ==! Environment(environment: "Test")
        }
    }

    func testReaderTransformerAsync() {
        var currentValue = 0

        let environment = Accessor<Int>.init(
            get: Effect.init { currentValue },
            set: Coeffect.init { currentValue = $0 })

        typealias Tested = Reader<Accessor<Int>,Future<Int>>

        func envCall(makeCall: @escaping (Int) -> Future<Int>) -> Tested {
            return Tested.init { env in
                makeCall(env.get.run())
                    .run { value in
                        env.set.run(value)
                }
            }
        }

        let future1 = envCall { value in
            Future<Int>.init { done in
                after(0.2, {
                    done(value + 5)
                })
            }
        }

        let getFuture2: (Int) -> Tested = { value1 in
            envCall { value2 in
                Future<Int>.init { done in
                    after(0.2, {
                        done(value1 + value2)
                    })
                }
            }
        }

        let newExpectation = expectation(description: "newExpectation")

        _ = future1.flatMapT(getFuture2).run(environment).run { value in
            value ==! 10
            newExpectation.fulfill()
        }

        waitForExpectations(timeout: 1, handler: nil)
    }
    
    static var allTests = [
        ("testLiftOneArg", testLiftOneArg),
        ("testLiftTwoArgs", testLiftTwoArgs),
        ("testLiftThreeArgs", testLiftThreeArgs),
        ("testAsk", testAsk)
    ]
}



