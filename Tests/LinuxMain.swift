import XCTest
@testable import FunctionalKitTests

XCTMain([
    testCase(BooleanTests.allTests),
	testCase(CombinatorsTests.allTests),
	testCase(CoproductTests.allTests),
	testCase(FunctionTests.allTests),
	testCase(FixedTests.allTests),
	testCase(InclusiveTests.allTests),
	testCase(ProductTests.allTests),
	testCase(ReferenceTests.allTests),
	testCase(WeaklyTests.allTests),
])
