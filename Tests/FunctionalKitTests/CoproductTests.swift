import XCTest
@testable import FunctionalKit

typealias TestType = Coproduct<Int,String>

class CoproductTests: XCTestCase {
	func testTry() {
		TestType.left(42).tryLeft==!
		TestType.left(42).tryRight==?

		TestType.right("42").tryLeft==?
		TestType.right("42").tryRight==!
	}

	func testFold() {
		TestType.left(42).fold(onLeft: constant(true), onRight: constant(false)) ==! true
		TestType.right("42").fold(onLeft: constant(false), onRight: constant(true)) ==! true

		TestType.left(42).foldToLeft { Int($0)! } ==! 42
		TestType.right("42").foldToRight { "\($0)" } ==! "42"
	}

	func testMap() {
		TestType.left(42).bimap(onLeft: identity, onRight: { Int($0)! }).tryLeft! ==! 42
		TestType.right("42").bimap(onLeft: { "\($0)" }, onRight: identity).tryRight! ==! "42"

		TestType.left(42).mapLeft { $0*2 }.tryLeft! ==! 84
		TestType.left(42).mapRight { $0 + "!" }.tryLeft! ==! 42

		TestType.right("42").mapLeft { $0*2 }.tryRight! ==! "42"
		TestType.right("42").mapRight { $0 + "!" }.tryRight! ==! "42!"
	}

	static var allTests = [
		("testTry", testTry),
		("testFold", testFold),
		("testMap", testMap),
		]
}
