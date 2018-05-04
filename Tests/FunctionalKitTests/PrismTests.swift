import XCTest
import SwiftCheck
@testable import FunctionalKit
import Abstract
#if SWIFT_PACKAGE
import Operadics
#endif

class PrismTests: XCTestCase {
	static var allTests = [
		("testModify", testModify),
		("testComposedPrismWellBehaved", testComposedPrismWellBehaved)
	]

	func testModify() {
		property("'tryModify' works like injecting a value dependent on the previous tryGet") <- forAll { (s: TestCoproduct<Int,Int>, ar: ArrowOf<Int,Int>) in
			let a = ar.getArrow
			return TestCoproduct<Int,Int>.prism.left.tryModify(a)(s)
				== TestCoproduct<Int,Int>.prism.left.tryGet(s).map(a).map(TestCoproduct<Int,Int>.prism.left.inject)
		}
	}

	func testComposedPrismWellBehaved() {
		property("InjectTryGet") <- forAll { (c: TestCoproduct<Int,TestCoproduct<TestCoproduct<Int,Int>,Int>>, v: Int) in
			let p1 = type(of: c).prism.right
			let p2 = TestCoproduct<TestCoproduct<Int,Int>,Int>.prism.left
			let p3 = TestCoproduct<Int,Int>.prism.right

			let joined = p1 >>> p2 >>> p3

			return PrismLaw.injectTryGet(prism: joined, part: v)
		}

		property("TryGetInject") <- forAll { (c: TestCoproduct<Int,TestCoproduct<TestCoproduct<Int,Int>,Int>>) in
			let p1 = type(of: c).prism.right
			let p2 = TestCoproduct<TestCoproduct<Int,Int>,Int>.prism.left
			let p3 = TestCoproduct<Int,Int>.prism.right

			let joined = p1 >>> p2 >>> p3

			return PrismLaw.tryGetInject(prism: joined, whole: c)
		}
	}
}
