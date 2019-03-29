import XCTest
@testable import FunctionalKit

class BooleanTests: XCTestCase {
    func testTruthTable() {
        true.and(true) ==! true
        true.and(false) ==! false
        false.and(true) ==! false
        false.and(false) ==! false

        true.or(true) ==! true
        true.or(false) ==! true
        false.or(true) ==! true
        false.or(false) ==! false

        true.not ==! false
        false.not ==! true

        true.implies(true) ==! true
        true.implies(false) ==! false
        false.implies(true) ==! true
        false.implies(false) ==! true
    }

    func testFold() {
        let t = 42
        let f = 24

        true.fold(onTrue: t, onFalse: f) ==! t
        false.fold(onTrue: t, onFalse: f) ==! f
    }

    func testIfTrue() {
        expecting("ifTrue works as expected") { fulfill in
            true.ifFalse {
                notExpected()
            }
            true.ifTrue {
                fulfill()
            }
        }
    }

    func testIfFalse() {
        expecting("ifFalse works as expected") { fulfill in
            false.ifTrue {
                notExpected()
            }
            false.ifFalse {
                fulfill()
            }
        }
    }

    static var allTests = [
        ("testTruthTable", testTruthTable),
        ("testFold", testFold),
        ("testIfTrue", testIfTrue),
        ("testIfFalse", testIfFalse),
    ]
}
