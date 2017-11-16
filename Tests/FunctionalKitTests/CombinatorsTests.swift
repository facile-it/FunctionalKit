import XCTest
import Operadics
@testable import FunctionalKit

class CombinatorsTests: XCTestCase {

	func testCompose() {
		let times2 = { (x: Int) -> Int in x*2 }
		let plus2 = { (x: Int) -> Int in x+2 }

		42 |> times2..plus2 ==! 86
		42 |> plus2..times2 ==! 88
	}

	func testComposePostfix() {
		let times2 = { (x: Int) -> Int in x*2 }
		let plus2 = { (x: Int) -> Int in x+2 }

		let composeWithTimes2 = times2..
		let composeWithPlus2 = plus2..

		42 |> composeWithTimes2(plus2) ==! 86
		42 |> composeWithPlus2(times2) ==! 88
	}

	func testComposePrefix() {
		let times2 = { (x: Int) -> Int in x*2 }
		let plus2 = { (x: Int) -> Int in x+2 }

		let plus2ComposedWith = ..plus2
		let times2ComposedWith = ..times2

		42 |> plus2ComposedWith(times2) ==! 86
		42 |> times2ComposedWith(plus2) ==! 88
	}

	static var allTests = [
		("testCompose", testCompose),
		("testComposePostfix", testComposePostfix),
		("testComposePrefix", testComposePrefix),
	]
}
