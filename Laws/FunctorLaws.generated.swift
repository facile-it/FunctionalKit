// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import XCTest
@testable import FunctionalKit
import SwiftCheck

//MARK: Future
// Identity Law
    func testIdentity() {
        property("Future - Functor Laws - Identity") <- forAll { (x: Int) in
            return Future.unfold({ $0(x) }).map(fidentity) == fidentity(Future.unfold({ $0(x) }))
        }
    }
