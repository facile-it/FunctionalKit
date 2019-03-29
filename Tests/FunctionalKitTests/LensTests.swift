import XCTest
import SwiftCheck
@testable import FunctionalKit
import Abstract
#if SWIFT_PACKAGE
import Operadics
#endif

class LensTests: XCTestCase {
    static var allTests = [
        ("testOver", testOver),
        ("testComposedLensWellBehaved", testComposedLensWellBehaved),
        ("testLensFromKeyPathWellBehaved", testLensFromKeyPathWellBehaved),
        ("testZipLensWellBehaved", testZipLensWellBehaved),
        ("testDictLensWellBehaved", testDictLensWellBehaved)
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

            let joined = l1 >>> l2 >>> l3

            return LensLaw.setGet(lens: joined, whole: p, part: v)
        }

        property("GetSet") <- forAll { (p: TestProduct<Int,TestProduct<TestProduct<Int,Int>,Int>>) in
            let l1 = type(of: p).lens.second
            let l2 = type(of: p.unwrap.second).lens.first
            let l3 = TestProduct<Int,Int>.lens.second

            let joined = l1 >>> l2 >>> l3

            return LensLaw.getSet(lens: joined, whole: p)
        }

        property("SetSet") <- forAll { (p: TestProduct<Int,TestProduct<TestProduct<Int,Int>,Int>>, v: Int) in
            let l1 = type(of: p).lens.second
            let l2 = type(of: p.unwrap.second).lens.first
            let l3 = TestProduct<Int,Int>.lens.second

            let joined = l1 >>> l2 >>> l3

            return LensLaw.setSet(lens: joined, whole: p, part: v)
        }
    }

    func testLensFromKeyPathWellBehaved() {
        property("SetGet") <- forAll { (p: TestProductMutable<Int,TestProductMutable<TestProductMutable<Bool,Int>,String>>, v: Int) in
            let lens = °\TestProductMutable<Int,TestProductMutable<TestProductMutable<Bool,Int>,String>>.second.first.second

            return LensLaw.setGet(lens: lens, whole: p, part: v)
        }

        property("SetGet - Bool") <- forAll { (p: TestProductMutable<Int,TestProductMutable<TestProductMutable<Bool,Int>,String>>, v: Bool) in
            let lens = °\TestProductMutable<Int,TestProductMutable<TestProductMutable<Bool,Int>,String>>.second.first.first

            return LensLaw.setGet(lens: lens, whole: p, part: v)
        }

        property("GetSet") <- forAll { (p: TestProductMutable<Int,TestProductMutable<TestProductMutable<Bool,Int>,String>>) in
            let lens = °\TestProductMutable<Int,TestProductMutable<TestProductMutable<Bool,Int>,String>>.second.first.second

            return LensLaw.getSet(lens: lens, whole: p)
        }

        property("GetSet - Bool") <- forAll { (p: TestProductMutable<Int,TestProductMutable<TestProductMutable<Bool,Int>,String>>) in
            let lens = °\TestProductMutable<Int,TestProductMutable<TestProductMutable<Bool,Int>,String>>.second.first.first

            return LensLaw.getSet(lens: lens, whole: p)
        }

        property("SetSet") <- forAll { (p: TestProductMutable<Int,TestProductMutable<TestProductMutable<Bool,Int>,String>>, v: Int) in
            let lens = °\TestProductMutable<Int,TestProductMutable<TestProductMutable<Bool,Int>,String>>.second.first.second

            return LensLaw.setSet(lens: lens, whole: p, part: v)
        }

        property("SetSet - Bool") <- forAll { (p: TestProductMutable<Int,TestProductMutable<TestProductMutable<Bool,Int>,String>>, v: Bool) in
            let lens = °\TestProductMutable<Int,TestProductMutable<TestProductMutable<Bool,Int>,String>>.second.first.first

            return LensLaw.setSet(lens: lens, whole: p, part: v)
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
        property("SetGet") <- forAll { (ad: Dictionary<String,Int>, av: Optional<Int>) in
            let dict = ad
            guard let key = dict.keys.first else { return true }
            let value = av
            let lens = Dictionary<String,Int>.lens(at: key)
            return LensLaw.setGet(lens: lens, whole: dict, part: value)
        }

        property("GetSet") <- forAll { (ad: Dictionary<String,Int>, av: Optional<Int>) in
            let dict = ad
            guard let key = dict.keys.first else { return true }
            let lens = Dictionary<String,Int>.lens(at: key)
            return LensLaw.getSet(lens: lens, whole: dict)
        }

        property("SetSet") <- forAll { (ad: Dictionary<String,Int>, av: Optional<Int>) in
            let dict = ad
            guard let key = dict.keys.first else { return true }
            let value = av
            let lens = Dictionary<String,Int>.lens(at: key)
            return LensLaw.setSet(lens: lens, whole: dict, part: value)
        }
    }
}
