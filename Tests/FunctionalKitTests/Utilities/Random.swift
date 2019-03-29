//@testable import FunctionalKit
//import SwiftCheck
//import Abstract
//
//extension CoproductType where LeftType == RightType {
//    static func random(_ left: LeftType, _ right: RightType) -> Coproduct<LeftType,RightType> {
//        return Bool.arbitrary.generate.fold(onTrue: Coproduct.left(left), onFalse: Coproduct.right(right))
//    }
//}
//
//extension InclusiveType where LeftType == RightType {
//    static func random(_ left: LeftType, _ right: RightType) -> Inclusive<LeftType,RightType> {
//        let r = Gen.fromElements(of: [-1,0,1]).generate
//        switch r {
//        case ..<0:
//            return Inclusive.left(left)
//        case 1...:
//            return Inclusive.right(right)
//        default:
//            return Inclusive.center(left, right)
//        }
//    }
//}
