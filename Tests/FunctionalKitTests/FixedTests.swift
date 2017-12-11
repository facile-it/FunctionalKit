import XCTest
@testable import FunctionalKit
#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

class FixedTests: XCTestCase {
	func testIdentity() {
		fidentity(42) ==! 42
		fidentity(42,43) ==! (42,43)
		fidentity(42,43,44) ==! (42,43,44)
	}

	func testConstant() {
		let f: (Int) -> Int = fconstant(42)
		f(0) ==! 42
		f(1) ==! 42
		f(42) ==! 42
		f(100) ==! 42
	}

	func testDestructure() {
		let tuple2 = (42,43)
		let tuple3 = (42,43,44)

		tuple2 |> fdestructure { $0 + $1 } ==! 85
		tuple3 |> fdestructure { $0 + $1 + $2 } ==! 129
	}

	func testFlatten() {
		fflatten(((42,43))) ==! (42,43)
		fflatten((42,43),44) ==! (42,43,44)
		fflatten(42,(43,44)) ==! (42,43,44)
	}

	static var allTests = [
		("testIdentity", testIdentity),
		("testConstant", testConstant),
		("testDestructure", testDestructure),
		("testFlatten", testFlatten),
		]
}
