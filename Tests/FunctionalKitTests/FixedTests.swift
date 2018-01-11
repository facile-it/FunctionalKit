import XCTest
@testable import FunctionalKit
#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

class FixedTests: XCTestCase {
	func testIdentity() {
		f.identity(42) ==! 42
		f.identity(42,43) ==! (42,43)
		f.identity(42,43,44) ==! (42,43,44)
	}

	func testConstant() {
		let function: (Int) -> Int = f.constant(42)
		function(0) ==! 42
		function(1) ==! 42
		function(42) ==! 42
		function(100) ==! 42
	}

	func testDestructure() {
		let tuple2 = (42,43)
		let tuple3 = (42,43,44)

		tuple2 |> f.destructure { $0 + $1 } ==! 85
		tuple3 |> f.destructure { $0 + $1 + $2 } ==! 129
	}

	func testFlatten() {
		f.flatten(((42,43))) ==! (42,43)
		f.flatten((42,43),44) ==! (42,43,44)
		f.flatten(42,(43,44)) ==! (42,43,44)
	}

	static var allTests = [
		("testIdentity", testIdentity),
		("testConstant", testConstant),
		("testDestructure", testDestructure),
		("testFlatten", testFlatten),
		]
}
