import XCTest
import Operadics
@testable import FunctionalKit
import Foundation
#if SWIFT_PACKAGE
	import Operadics
#endif

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

	func testAsync() {
		expecting("Future completes") { fulfill in
			let f = Future<String>.unfold { done in
				DispatchQueue.main.async {
					done("test")
					fulfill()
				}
			}
			f.start()
		}
	}

	func testMemoryLeak() {
		expecting("Future completes","Future is dismissed") { fulfillComplete, fulfillDismiss in
			let expectedText = "expectedText"
			var f: Future<String>? = Future<String>.unfold { done in
				after(0.1) {
					done(expectedText)
				}
			}
			weak var fWeak = f
			f?.run { value in
				value ==! expectedText
				fulfillComplete()
			}
			f = nil
			after(0.3) {
				fWeak==?
				fulfillDismiss()
			}
		}
	}
    
    static var allTests = [
        ("testLiftOneArg", testLiftOneArg),
        ("testLiftTwoArgs", testLiftTwoArgs),
        ("testLiftThreeArgs", testLiftThreeArgs)
    ]
}



