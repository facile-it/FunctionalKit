import XCTest
@testable import FunctionalKit

class ProductTests: XCTestCase {
	func testFold() {
		Product.init(42, "!").fold { "\($0)" + $1 } ==! "42!"
	}

	func testMap() {
		Product.init(42, "42").bimap({ $0 }, { Int($0)! }).unwrap ==! (42,42)
		Product.init(42, "42").mapFirst { $0 + 1 }.first ==! 43
		Product.init(42, "42").mapFirst { $0 + 1 }.second ==! "42"
		Product.init(42, "42").mapSecond { $0 + "!" }.first ==! 42
		Product.init(42, "42").mapSecond { $0 + "!" }.second ==! "42!"
	}

	static var allTests = [
		("testFold", testFold),
		("testMap", testMap),
		]
}
