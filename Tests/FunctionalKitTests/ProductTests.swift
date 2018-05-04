import XCTest
@testable import FunctionalKit
import Abstract
import SwiftCheck

class ProductTests: XCTestCase {
	func testFold() {
		Product.init(42, "!").fold { "\($0)" + $1 } ==! "42!"
	}

	func testAlgebra() {
		property("Product<A: Semigroup,B: Semigroup> is a Semigroup") <- forAll { (a: Product<String,String>, b: Product<String,String>, c: Product<String,String>) in
			Law.isAssociative(a, b, c)
		}

		property("Product<A: Monoid,B: Monoid> is a Monoid") <- forAll { (a: Product<String,String>) in
			Law.isNeutralToEmpty(a)
		}

		property("Product<A: CommutativeMonoid,B: CommutativeMonoid> is a CommutativeMonoid") <- forAll { (a: Product<Max<Int>,Max<Int>>, b: Product<Max<Int>,Max<Int>>) in
			Law.isCommutative(a, b)
		}

		property("Product<A: BoundedSemilattice,B: BoundedSemilattice> is a BoundedSemilattice") <- forAll { (a: Product<Max<Int>,Max<Int>>, b: Product<Max<Int>,Max<Int>>) in
			Law.isIdempotent(a, b)
		}

		property("Product<A: Semiring,B: Semiring> is a Semiring") <- forAll { (a: Product<Bool,Bool>, b: Product<Bool,Bool>, c: Product<Bool,Bool>) in
			Law.multiplicationIsDistributiveOverAddition(a, b, c) && Law.zeroAnnihiliatesTheMultiplicative(a)
		}
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
		("testAlgebra", testAlgebra),
		("testMap", testMap),
		]
}
