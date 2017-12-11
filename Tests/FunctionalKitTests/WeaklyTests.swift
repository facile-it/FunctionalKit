import XCTest
@testable import FunctionalKit
#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract

class WeaklyTests: XCTestCase {
	func testWeaklyNone() {
		var ref = Optional.some(Ref<Int>.init(42))
		ref = nil

		weakly(ref) { _ in
			notExpected()
		}()
	}

	func testWeaklyNoneIO() {
		var ref = Optional.some(Ref<Int>.init(42))
		ref = nil

		42 |> weakly(ref) { _, _ in
			notExpected()
		}
	}


	func testWeaklySomeIO() {
		let ref = Optional.some(Ref<Int>.init(42))

		42 |> weakly(ref) { this, value in
			value ==! this.value
		}
	}

	static var allTests = [
		("testWeaklyNone", testWeaklyNone),
		("testWeaklyNoneIO", testWeaklyNoneIO),
		("testWeaklySomeIO", testWeaklySomeIO),
		]
}
