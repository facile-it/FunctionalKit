//import XCTest
//import SwiftCheck
//@testable import FunctionalKit
//import Abstract
//#if SWIFT_PACKAGE
//    import Operadics
//#endif
//
//class AffineTests: XCTestCase {
//    static var allTests = [
//        ("testArrayAffineWellBehaved", testArrayAffineWellBehaved),
//        ("testComposedAffineWellBehaved", testComposedAffineWellBehaved),
//        ("testAffineFromLensWellBehaved", testAffineFromLensWellBehaved),
//        ("testAffineFromPrismWellBehaved", testAffineFromPrismWellBehaved)
//    ]
//
//    func testArrayAffineWellBehaved() {
//        property("TrySetTryGet") <- forAll { (aa: Array<Int>, v: Int, i: UInt) in
//            let array = aa
//            let affine = type(of: array).affine(at: Int(i))
//            return AffineLaw.trySetTryGet(affine: affine, whole: array, part: v)
//        }
//
//        property("TryGetTrySet") <- forAll { (aa: Array<Int>, i: UInt) in
//            let array = aa
//            let affine = type(of: array).affine(at: Int(i))
//            return AffineLaw.tryGetTrySet(affine: affine, whole: array)
//        }
//
//        property("TrySetTrySet") <- forAll { (aa: Array<Int>, v: Int, i: UInt) in
//            let array = aa
//            let affine = type(of: array).affine(at: Int(i))
//            return AffineLaw.trySetTrySet(affine: affine, whole: array, part: v)
//        }
//    }
//
//    func testComposedAffineWellBehaved() {
//        property("TrySetTryGet") <- forAll { (a: TestInclusive<Int,TestInclusive<Int,Int>>, v: Int) in
//            let affine1 = type(of: a).affine.right
//            let affine2 = TestInclusive<Int,Int>.affine.left
//            let composed = affine1 >>> affine2
//
//            return AffineLaw.trySetTryGet(affine: composed, whole: a, part: v)
//        }
//
//        property("TryGetTrySet") <- forAll { (a: TestInclusive<Int,TestInclusive<Int,Int>>) in
//            let affine1 = type(of: a).affine.right
//            let affine2 = TestInclusive<Int,Int>.affine.left
//            let composed = affine1 >>> affine2
//
//            return AffineLaw.tryGetTrySet(affine: composed, whole: a)
//        }
//
//        property("TrySetTrySet") <- forAll { (a: TestInclusive<Int,TestInclusive<Int,Int>>, v: Int) in
//            let affine1 = type(of: a).affine.right
//            let affine2 = TestInclusive<Int,Int>.affine.left
//            let composed = affine1 >>> affine2
//
//            return AffineLaw.trySetTrySet(affine: composed, whole: a, part: v)
//        }
//    }
//
//    func testAffineFromLensWellBehaved() {
//        property("TrySetTryGet") <- forAll { (a: TestProduct<Int,TestProduct<Int,Int>>, v: Int) in
//            let lens1 = type(of: a).lens.second
//            let lens2 = TestProduct<Int,Int>.lens.first
//            let composed = lens1 >>> lens2
//            let affine = composed.toAffine()
//
//            return AffineLaw.trySetTryGet(affine: affine, whole: a, part: v)
//        }
//
//        property("TryGetTrySet") <- forAll { (a: TestProduct<Int,TestProduct<Int,Int>>) in
//            let lens1 = type(of: a).lens.second
//            let lens2 = TestProduct<Int,Int>.lens.first
//            let composed = lens1 >>> lens2
//            let affine = composed.toAffine()
//
//            return AffineLaw.tryGetTrySet(affine: affine, whole: a)
//        }
//
//        property("TrySetTrySet") <- forAll { (a: TestProduct<Int,TestProduct<Int,Int>>, v: Int) in
//            let lens1 = type(of: a).lens.second
//            let lens2 = TestProduct<Int,Int>.lens.first
//            let composed = lens1 >>> lens2
//            let affine = composed.toAffine()
//
//            return AffineLaw.trySetTrySet(affine: affine, whole: a, part: v)
//        }
//    }
//
//    func testAffineFromPrismWellBehaved() {
//        property("TrySetTryGet") <- forAll { (a: TestCoproduct<Int,TestCoproduct<Int,Int>>, v: Int) in
//            let prism1 = type(of: a).prism.right
//            let prism2 = TestCoproduct<Int,Int>.prism.left
//            let composed = prism1 >>> prism2
//            let affine = composed.toAffine()
//
//            return AffineLaw.trySetTryGet(affine: affine, whole: a, part: v)
//        }
//
//        property("TryGetTrySet") <- forAll { (a: TestCoproduct<Int,TestCoproduct<Int,Int>>) in
//            let prism1 = type(of: a).prism.right
//            let prism2 = TestCoproduct<Int,Int>.prism.left
//            let composed = prism1 >>> prism2
//            let affine = composed.toAffine()
//
//            return AffineLaw.tryGetTrySet(affine: affine, whole: a)
//        }
//
//        property("TrySetTrySet") <- forAll { (a: TestCoproduct<Int,TestCoproduct<Int,Int>>, v: Int) in
//            let prism1 = type(of: a).prism.right
//            let prism2 = TestCoproduct<Int,Int>.prism.left
//            let composed = prism1 >>> prism2
//            let affine = composed.toAffine()
//
//            return AffineLaw.trySetTrySet(affine: affine, whole: a, part: v)
//        }
//    }
//
//    func testLensPrismCompositionWellBehaved() {
//        property("TrySetTryGet") <- forAll { (a: TestProduct<Int,TestCoproduct<Int,Int>>, v: Int) in
//            let lens = type(of: a).lens.second
//            let prism = TestCoproduct<Int,Int>.prism.left
//            let composed = lens >>> prism
//
//            return AffineLaw.trySetTryGet(affine: composed, whole: a, part: v)
//        }
//
//        property("TryGetTrySet") <- forAll { (a: TestProduct<Int,TestCoproduct<Int,Int>>) in
//            let lens = type(of: a).lens.second
//            let prism = TestCoproduct<Int,Int>.prism.left
//            let composed = lens >>> prism
//
//            return AffineLaw.tryGetTrySet(affine: composed, whole: a)
//        }
//
//        property("TrySetTrySet") <- forAll { (a: TestProduct<Int,TestCoproduct<Int,Int>>, v: Int) in
//            let lens = type(of: a).lens.second
//            let prism = TestCoproduct<Int,Int>.prism.left
//            let composed = lens >>> prism
//
//            return AffineLaw.trySetTrySet(affine: composed, whole: a, part: v)
//        }
//    }
//
//    func testPrismLensCompositionWellBehaved() {
//        property("TrySetTryGet") <- forAll { (a: TestCoproduct<Int,TestProduct<Int,Int>>, v: Int) in
//            let prism = type(of: a).prism.right
//            let lens = TestProduct<Int,Int>.lens.first
//            let composed = prism >>> lens
//
//            return AffineLaw.trySetTryGet(affine: composed, whole: a, part: v)
//        }
//
//        property("TryGetTrySet") <- forAll { (a: TestCoproduct<Int,TestProduct<Int,Int>>) in
//            let prism = type(of: a).prism.right
//            let lens = TestProduct<Int,Int>.lens.first
//            let composed = prism >>> lens
//
//            return AffineLaw.tryGetTrySet(affine: composed, whole: a)
//        }
//
//        property("TrySetTrySet") <- forAll { (a: TestCoproduct<Int,TestProduct<Int,Int>>, v: Int) in
//            let prism = type(of: a).prism.right
//            let lens = TestProduct<Int,Int>.lens.first
//            let composed = prism >>> lens
//
//            return AffineLaw.trySetTrySet(affine: composed, whole: a, part: v)
//        }
//    }
//}
