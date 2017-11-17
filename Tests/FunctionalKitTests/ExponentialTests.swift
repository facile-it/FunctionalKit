import XCTest
@testable import FunctionalKit

class ExponentialTests: XCTestCase {
	func testMap() {
		let times2 = { (x: Int) -> Int in x*2 }
		let exp = Exponential<Int,Int>.init(times2)

		let minus3 = { (x: Int) -> Int in x-3 }

		let mapped = exp.map(minus3)
		mapped.call(42) ==! 81
	}

	func testContramap() {
		let times2 = { (x: Int) -> Int in x*2 }
		let exp = Exponential<Int,Int>.init(times2)

		let plus3 = { (x: Int) -> Int in x+3 }

		let mapped = exp.contramap(plus3)
		mapped.call(42) ==! 90
	}

	func testDimap() {
		let times2 = { (x: Int) -> Int in x*2 }
		let exp = Exponential<Int,Int>.init(times2)

		let plus3 = { (x: Int) -> Int in x+3 }
		let minus3 = { (x: Int) -> Int in x-3 }

		let mapped = exp.dimap(source: plus3, target: minus3)
		mapped.call(42) ==! 87
	}
}
