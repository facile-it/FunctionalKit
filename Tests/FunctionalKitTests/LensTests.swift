import XCTest
import SwiftCheck
@testable import FunctionalKit

class LensTests: XCTestCase {
	static var allTests = [
		("testOver", testOver),
		("testComposedLensWellBehaved", testComposedLensWellBehaved),
		("testZipLensWellBehaved", testZipLensWellBehaved),
		("testDictLensWellBehaved", testDictLensWellBehaved),
		("testComposeLensOptional1", testComposeLensOptional1),
		("testComposeLensOptional2", testComposeLensOptional2)
	]

	func testOver() {
		property("'modify' works like injecting a value dependent on the previous tryGet") <- forAll { (p: TestProduct<Int,Int>, ar: ArrowOf<Int,Int>) in
			let a = ar.getArrow
			return TestProduct<Int,Int>.lens.first.modify(a)(p)
				== TestProduct<Int,Int>.lens.first.set(a(TestProduct<Int,Int>.lens.first.get(p)))(p)
		}
	}

	func testComposedLensWellBehaved() {
		property("SetGet") <- forAll { (p: TestProduct<Int,TestProduct<TestProduct<Int,Int>,Int>>, v: Int) in
			let l1 = type(of: p).lens.second
			let l2 = type(of: p.unwrap.second).lens.first
			let l3 = TestProduct<Int,Int>.lens.second

			let joined = l1..l2..l3

			return LensLaw.setGet(lens: joined, whole: p, part: v)
		}

		property("GetSet") <- forAll { (p: TestProduct<Int,TestProduct<TestProduct<Int,Int>,Int>>) in
			let l1 = type(of: p).lens.second
			let l2 = type(of: p.unwrap.second).lens.first
			let l3 = TestProduct<Int,Int>.lens.second

			let joined = l1..l2..l3

			return LensLaw.getSet(lens: joined, whole: p)
		}

		property("SetSet") <- forAll { (p: TestProduct<Int,TestProduct<TestProduct<Int,Int>,Int>>, v: Int) in
			let l1 = type(of: p).lens.second
			let l2 = type(of: p.unwrap.second).lens.first
			let l3 = TestProduct<Int,Int>.lens.second

			let joined = l1..l2..l3

			return LensLaw.setSet(lens: joined, whole: p, part: v)
		}
	}

	func testZipLensWellBehaved() {
		property("SetGet") <- forAll { (l1: Int, r1: Int, l2: Int, r2: Int) in

			let lens = Lens.zip(TestProduct<Int,Int>.lens.first, TestProduct<Int,Int>.lens.second)

			return LensLaw.setGet(lens: lens, whole: TestProduct(l1, r1), part: (l2,r2))
		}

		property("GetSet") <- forAll { (l1: Int, r1: Int, l2: Int, r2: Int) in

			let lens = Lens.zip(TestProduct<Int,Int>.lens.first, TestProduct<Int,Int>.lens.second)

			return LensLaw.getSet(lens: lens, whole: TestProduct(l1, r1))
		}

		property("SetSet") <- forAll { (l1: Int, r1: Int, l2: Int, r2: Int) in

			let lens = Lens.zip(TestProduct<Int,Int>.lens.first, TestProduct<Int,Int>.lens.second)

			return LensLaw.setSet(lens: lens, whole: TestProduct(l1, r1), part: (l2,r2))
		}
	}

	func testDictLensWellBehaved() {
		property("SetGet") <- forAll { (ad: DictionaryOf<String,Int>, av: OptionalOf<Int>) in
			let dict = ad.getDictionary
			guard let key = dict.keys.first else { return true }
			let value = av.getOptional
			let lens = Dictionary<String,Int>.lens(at: key)
			return LensLaw.setGet(lens: lens, whole: dict, part: value)
		}

		property("GetSet") <- forAll { (ad: DictionaryOf<String,Int>, av: OptionalOf<Int>) in
			let dict = ad.getDictionary
			guard let key = dict.keys.first else { return true }
			let lens = Dictionary<String,Int>.lens(at: key)
			return LensLaw.getSet(lens: lens, whole: dict)
		}

		property("SetSet") <- forAll { (ad: DictionaryOf<String,Int>, av: OptionalOf<Int>) in
			let dict = ad.getDictionary
			guard let key = dict.keys.first else { return true }
			let value = av.getOptional
			let lens = Dictionary<String,Int>.lens(at: key)
			return LensLaw.setSet(lens: lens, whole: dict, part: value)
		}
	}

    func testComposeLensOptional1() {
        property("Lens.compose for Lens<_,Optional>..Lens<_,_> respects GetSet") <- forAll { (whole: TestProductOptional<Int,TestProduct<Int,Int>>, defaultPart: TestProduct<Int,Int>) in
            let lens = TestProductOptional<Int,TestProduct<Int,Int>>.lens.second.compose(TestProduct<Int,Int>.lens.first, defaulting: defaultPart)
            
			return LensLaw.getSet(lens: lens, whole: whole)
        }

        property("Lens.compose for Lens<_,Optional>..Lens<_,_> respects SetGet") <- forAll { (whole: TestProductOptional<Int,TestProduct<Int,Int>>, part: OptionalOf<Int>, defaultPart: TestProduct<Int,Int>) in
			let lens = TestProductOptional<Int,TestProduct<Int,Int>>.lens.second.compose(TestProduct<Int,Int>.lens.first, defaulting: defaultPart)

			return LensLaw.setGet(lens: lens, whole: whole, part: part.getOptional)
        }

        property("Lens.compose for Lens<_,Optional>..Lens<_,_> respects SetSet") <- forAll { (whole: TestProductOptional<Int,TestProduct<Int,Int>>, part: OptionalOf<Int>, defaultPart: TestProduct<Int,Int>) in
			let lens = TestProductOptional<Int,TestProduct<Int,Int>>.lens.second.compose(TestProduct<Int,Int>.lens.first, defaulting: defaultPart)

			return LensLaw.setSet(lens: lens, whole: whole, part: part.getOptional)
        }
    }

    func testComposeLensOptional2() {
        property("Lens.compose for Lens<_,Optional>..Lens<Optional,_> respects GetSet") <- forAll { (whole: TestProductOptional<Int,TestProductOptional<Int,Int>>, defaultPart: TestProductOptional<Int,Int>) in
			let lens = TestProductOptional<Int,TestProductOptional<Int,Int>>.lens.second.compose(TestProductOptional<Int,Int>.lens.first, defaulting: defaultPart)

			return LensLaw.getSet(lens: lens, whole: whole)
        }

        property("Lens.compose for Lens<_,Optional>..Lens<Optional,_> respects GetSet") <- forAll { (whole: TestProductOptional<Int,TestProductOptional<Int,Int>>, part: OptionalOf<Int>, defaultPart: TestProductOptional<Int,Int>) in
			let lens = TestProductOptional<Int,TestProductOptional<Int,Int>>.lens.second.compose(TestProductOptional<Int,Int>.lens.first, defaulting: defaultPart)

			return LensLaw.setGet(lens: lens, whole: whole, part: part.getOptional)
        }

        property("Lens.compose for Lens<_,Optional>..Lens<Optional,_> respects SetSet") <- forAll { (whole: TestProductOptional<Int,TestProductOptional<Int,Int>>, part: OptionalOf<Int>, defaultPart: TestProductOptional<Int,Int>) in
			let lens = TestProductOptional<Int,TestProductOptional<Int,Int>>.lens.second.compose(TestProductOptional<Int,Int>.lens.first, defaulting: defaultPart)

			return LensLaw.setSet(lens: lens, whole: whole, part: part.getOptional)
        }
    }
}
