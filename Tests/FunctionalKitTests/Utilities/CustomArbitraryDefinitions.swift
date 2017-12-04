@testable import FunctionalKit
import SwiftCheck

extension String: Error {}

extension AnyError: Arbitrary {
    public static var arbitrary: Gen<AnyError> {
        return Gen<AnyError>.compose {
            AnyError.init($0.generate(using: String.arbitrary))
        }
    }
}
