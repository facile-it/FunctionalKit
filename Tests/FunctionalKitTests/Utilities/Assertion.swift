import XCTest
#if SWIFT_PACKAGE
    import Operadics
#endif
import Abstract
import SwiftCheck
import FunctionalKit

precedencegroup AssertionPrecedence {
	associativity: left
	lowerThan: LeftApplyPrecedence
}

infix operator ==! : AssertionPrecedence

func ==! <A> (lhs: A, rhs: A) where A: Equatable {
	XCTAssertEqual(lhs, rhs)
}

func ==! <A,B> (lhs: (A,B), rhs: (A,B)) where A: Equatable, B: Equatable {
	XCTAssertEqual(lhs.0, rhs.0)
	XCTAssertEqual(lhs.1, rhs.1)
}

func ==! <A,B,C> (lhs: (A,B,C), rhs: (A,B,C)) where A: Equatable, B: Equatable, C: Equatable {
	XCTAssertEqual(lhs.0, rhs.0)
	XCTAssertEqual(lhs.1, rhs.1)
	XCTAssertEqual(lhs.2, rhs.2)
}

func ==! <A> (lhs: [A], rhs: [A]) where A: Equatable {
	XCTAssertEqual(lhs, rhs)
}

func ==! <A> (lhs: A?, rhs: A?) where A: Equatable {
	XCTAssertEqual(lhs, rhs)
}

func ==! <K,A> (lhs: [K:A], rhs: [K:A]) where A: Equatable {
	XCTAssertEqual(lhs, rhs)
}

//func ==!<E,A> (lhs: Result<E,A>, rhs: Result<E,A>) where E:Equatable, A:Equatable {
//    XCTAssert(lhs == rhs)
//}
//
//func ==!<L,A> (lhs: Writer<L,A>, rhs: Writer<L,A>) where L:Equatable, A:Equatable {
//    XCTAssert(lhs == rhs)
//}

postfix operator ==!

postfix func ==! <A> (_ a: A?) {
	XCTAssertNotNil(a)
}

postfix operator ==?

postfix func ==? <A> (_ a: A?) {
	XCTAssertNil(a)
}

func notExpected(_ message: String? = nil) {
	XCTFail(message ?? "")
}

protocol ExpectationProvider {
	func getExpectation(_ description: String) -> XCTestExpectation
	func checkExpectations()
}

extension XCTestCase: ExpectationProvider {
	func getExpectation(_ description: String) -> XCTestExpectation {
		return expectation(description: description)
	}

	func checkExpectations() {
		waitForExpectations(timeout: 1, handler: nil)
	}
}

extension ExpectationProvider {
	func expecting(_ description: String, expectationFunction: (@escaping () -> ()) -> ()) {
		let a = getExpectation(description)
		expectationFunction({
			a.fulfill()
		})
		checkExpectations()
	}

	func expecting(_ description1: String, _ description2: String, expectationFunction: (@escaping () -> (), @escaping () -> ()) -> ()) {
		let a = getExpectation(description1)
		let b = getExpectation(description2)
		expectationFunction({
			a.fulfill()
		},{
			b.fulfill()
		})
		checkExpectations()
	}

	func expecting(_ description1: String, _ description2: String, _ description3: String, expectationFunction: (@escaping () -> (), @escaping () -> (), @escaping () -> ()) -> ()) {
		let a = getExpectation(description1)
		let b = getExpectation(description2)
		let c = getExpectation(description3)
		expectationFunction({
			a.fulfill()
		},{
			b.fulfill()
		},{
			c.fulfill()
		})
		checkExpectations()
	}
}

func after(_ delay: Double, _ execute: @escaping () -> ()) {
	let delayTime = DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
	DispatchQueue.main.asyncAfter(deadline: delayTime, execute: execute)
}
