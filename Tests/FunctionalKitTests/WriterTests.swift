import XCTest
import Abstract
@testable import FunctionalKit
#if SWIFT_PACKAGE
	import Operadics
#endif

class WriterTests: XCTestCase {
    
    struct Log: Monoid, Equatable {
        var log:[String] = []
        static var empty = Log(log: [])
        
        static func <>(left: WriterTests.Log, right: WriterTests.Log) -> WriterTests.Log {
            return Log(log: left.log + right.log)
        }
        
        static func ==(lhs: WriterTests.Log, rhs: WriterTests.Log) -> Bool {
            return lhs.log == rhs.log
        }
    }
    
    typealias TestWriterType<T> = Writer<Log,T>
    
    func testLiftOneArg() {
        let id: (Int) -> Int = {$0}
        let ap1 = TestWriterType.pure(1)
        
        TestWriterType.lift(id)(ap1) ==! TestWriterType.pure(id) <*> ap1
        TestWriterType.lift(id)(ap1) ==! TestWriterType.pure(1)
    }
    
    func testLiftTwoArgs() {
        let sum: (Int,Int) -> Int = {$0 + $1}
        let ap1 = TestWriterType.pure(1)
        let ap2 = TestWriterType.pure(2)

        TestWriterType.lift(sum)(ap1, ap2) ==! TestWriterType.pure(f.curry(sum)) <*> ap1 <*> ap2
        TestWriterType.lift(sum)(ap1, ap2) ==! TestWriterType.pure(3)
    }
    
    func testLiftThreeArgs(){
        let sum: (Int,Int,Int) -> Int = {$0 + $1 + $2}
        let ap1 = TestWriterType.pure(1)
        let ap2 = TestWriterType.pure(2)
        let ap3 = TestWriterType.pure(3)
        
        TestWriterType.lift(sum)(ap1, ap2, ap3) ==! TestWriterType.pure(f.curry(sum)) <*> ap1 <*> ap2 <*> ap3
        TestWriterType.lift(sum)(ap1, ap2, ap3) ==! TestWriterType.pure(6)
    }
    
    static var allTests = [
        ("testLiftOneArg", testLiftOneArg),
        ("testLiftTwoArgs", testLiftTwoArgs),
        ("testLiftThreeArgs", testLiftThreeArgs)
    ]
}


