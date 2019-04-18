import XCTest
import Abstract
@testable import FunctionalKit
import SwiftCheck
#if SWIFT_PACKAGE
	import Operadics
#endif

typealias TestTypeIntString = Coproduct<Int,String>

typealias False = Bool
typealias True = Bool
typealias TestTypeBool = Coproduct<False,True>

class CoproductTests: XCTestCase {
	func testTry() {
		TestTypeIntString.left(42).tryLeft()==!
		TestTypeIntString.left(42).tryRight()==?

		TestTypeIntString.right("42").tryLeft()==?
		TestTypeIntString.right("42").tryRight()==!
	}

	func testFold() {
		TestTypeIntString.left(42).fold(onLeft: f.pure(true), onRight: f.pure(false)) ==! true
		TestTypeIntString.right("42").fold(onLeft: f.pure(false), onRight: f.pure(true)) ==! true

		TestTypeIntString.left(42).foldToLeft { Int($0)! } ==! 42
		TestTypeIntString.right("42").foldToRight { "\($0)" } ==! "42"
	}

	func testMap() {
		TestTypeIntString.left(42).bimap(f.identity, { Int($0)! }).tryLeft()! ==! 42
		TestTypeIntString.right("42").bimap({ "\($0)" }, f.identity).tryRight()! ==! "42"

		TestTypeIntString.left(42).mapLeft { $0*2 }.tryLeft()! ==! 84
		TestTypeIntString.left(42).mapRight { $0 + "!" }.tryLeft()! ==! 42

		TestTypeIntString.right("42").mapLeft { $0*2 }.tryRight()! ==! "42"
		TestTypeIntString.right("42").mapRight { $0 + "!" }.tryRight()! ==! "42!"
	}

    func testToBool() {
        TestTypeBool.left(false).tryLeft()==!
        TestTypeBool.left(false).tryRight()==?
        
        TestTypeBool.right(true).tryLeft()==?
        TestTypeBool.right(true).tryRight()==!
    }
    
	static var allTests = [
		("testTry", testTry),
		("testFold", testFold),
		("testMap", testMap),
        ("testToBool", testToBool)
		]
}
