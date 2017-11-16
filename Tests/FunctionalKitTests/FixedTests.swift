import XCTest
@testable import FunctionalKit
import Operadics

class FixedTests: XCTestCase {
	func testIdentity() {
		identity(42) ==! 42
		identity(42,43) ==! (42,43)
		identity(42,43,44) ==! (42,43,44)
	}

	func testConstant() {
		let f: (Int) -> Int = constant(42)
		f(0) ==! 42
		f(1) ==! 42
		f(42) ==! 42
		f(100) ==! 42
	}

	func testDestructure() {
		let tuple2 = (42,43)
		let tuple3 = (42,43,44)

		tuple2 |> destructure { $0 + $1 } ==! 85
		tuple3 |> destructure { $0 + $1 + $2 } ==! 129
	}

	func testFlatten() {
		flatten(((42,43))) ==! (42,43)
		flatten((42,43),44) ==! (42,43,44)
		flatten(42,(43,44)) ==! (42,43,44)
	}
}
