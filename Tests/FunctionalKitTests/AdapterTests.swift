import XCTest
import SwiftCheck
@testable import FunctionalKit
import Abstract
#if SWIFT_PACKAGE
	import Operadics
#endif


class AdapterTests: XCTestCase {
	static var allTests = [
		("testComposedIsoWellBehaved", testComposedIsoWellBehaved),
		("testLensFromAdapterWellBehaved", testLensFromAdapterWellBehaved),
		("testPrismFromAdapterWellBehaved", testPrismFromAdapterWellBehaved),
		("testAffineFromAdapterWellBehaved", testAffineFromAdapterWellBehaved),
		("testAffineGraphCommutes", testAffineGraphCommutes)
	]

	func testComposedIsoWellBehaved() {
		property("FromTo") <- forAll { (p: TestProduct<Int,Int>) in
			let a1 = TestProduct<Int,Int>.iso.product
			let a2 = Couple<Int,Int>.iso.product.inverted
			let composed = a1 >>> a2

			return IsoLaw.fromTo(whole: p, iso: composed)
		}

		property("ToFrom") <- forAll { (p: TestProduct<Int,Int>) in
            let a1 = TestProduct<Int,Int>.iso.product.inverted
            let a2 = Couple<Int,Int>.iso.product
			let composed = a2 >>> a1
            
            return IsoLaw.toFrom(part: p, iso: composed)
		}
	}

	func testLensFromAdapterWellBehaved() {
		property("SetGet") <- forAll { (p: TestProduct<Int,Int>, v: Couple<Int,Int>) in
			let a1 = TestProduct<Int,Int>.iso.product
			let a2 = Couple<Int,Int>.iso.product.inverted
			let composed = a1 >>> a2
			let lens = composed.toLens

			return LensLaw.setGet(lens: lens, whole: p, part: v)
		}

		property("GetSet") <- forAll { (p: TestProduct<Int,Int>) in
			let a1 = TestProduct<Int,Int>.iso.product
			let a2 = Couple<Int,Int>.iso.product.inverted
			let composed = a1 >>> a2
			let lens = composed.toLens

			return LensLaw.getSet(lens: lens, whole: p)
		}

		property("SetSet") <- forAll { (p: TestProduct<Int,Int>, v: Couple<Int,Int>) in
			let a1 = TestProduct<Int,Int>.iso.product
			let a2 = Couple<Int,Int>.iso.product.inverted
			let composed = a1 >>> a2
			let lens = composed.toLens

			return LensLaw.setSet(lens: lens, whole: p, part: v)
		}
	}

	func testPrismFromAdapterWellBehaved() {
		property("InjectTryGet") <- forAll { (p: TestProduct<Int,Int>, v: Couple<Int,Int>) in
			let a1 = TestProduct<Int,Int>.iso.product
			let a2 = Couple<Int,Int>.iso.product.inverted
			let composed = a1 >>> a2
			let prism = composed.toPrism

			return PrismLaw.injectTryGet(prism: prism, part: v)
		}

		property("TryGetInject") <- forAll { (p: TestProduct<Int,Int>) in
			let a1 = TestProduct<Int,Int>.iso.product
			let a2 = Couple<Int,Int>.iso.product.inverted
			let composed = a1 >>> a2
			let prism = composed.toPrism

			return PrismLaw.tryGetInject(prism: prism, whole: p)
		}
	}

	func testAffineFromAdapterWellBehaved() {
		property("TrySetTryGet") <- forAll { (p: TestProduct<Int,Int>, v: Couple<Int,Int>) in
			let a1 = TestProduct<Int,Int>.iso.product
			let a2 = Couple<Int,Int>.iso.product.inverted
			let composed = a1 >>> a2
			let affine = composed.toAffine

			return AffineLaw.trySetTryGet(affine: affine, whole: p, part: v)
		}

		property("TryGetTrSet") <- forAll { (p: TestProduct<Int,Int>) in
			let a1 = TestProduct<Int,Int>.iso.product
			let a2 = Couple<Int,Int>.iso.product.inverted
			let composed = a1 >>> a2
			let affine = composed.toAffine

			return AffineLaw.tryGetTrySet(affine: affine, whole: p)
		}

		property("SetSet") <- forAll { (p: TestProduct<Int,Int>, v: Couple<Int,Int>) in
			let a1 = TestProduct<Int,Int>.iso.product
			let a2 = Couple<Int,Int>.iso.product.inverted
			let composed = a1 >>> a2
			let affine = composed.toAffine

			return AffineLaw.trySetTrySet(affine: affine, whole: p, part: v)
		}
	}

	func testAffineGraphCommutes() {
		property("tryGet") <- forAll { (p: TestProduct<Int,Int>) in
			let a1 = TestProduct<Int,Int>.iso.product
			let a2 = Couple<Int,Int>.iso.product.inverted
			let composed = a1 >>> a2
			let affineDirect = composed.toAffine
			let affineLens = composed.toLens.toAffine
			let affinePrism = composed.toPrism.toAffine

			return affineDirect.tryGet(p) == affineLens.tryGet(p)
				&& affineDirect.tryGet(p) == affinePrism.tryGet(p)
		}

		property("trySet") <- forAll { (p: TestProduct<Int,Int>, v: Couple<Int,Int>) in
			let a1 = TestProduct<Int,Int>.iso.product
			let a2 = Couple<Int,Int>.iso.product.inverted
			let composed = a1 >>> a2
			let affineDirect = composed.toAffine
			let affineLens = composed.toLens.toAffine
			let affinePrism = composed.toPrism.toAffine

			return affineDirect.trySet(v)(p) == affineLens.trySet(v)(p)
				&& affineDirect.trySet(v)(p) == affinePrism.trySet(v)(p)
		}
	}
}
