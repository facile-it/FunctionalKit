//
//  FutureTests.swift
//  FunctionalKitTests
//
//  Created by Pallas, Ricardo on 11/23/17.
//

import XCTest
@testable import FunctionalKit

class ResultTests: XCTestCase {
    
    struct User {
        var name: String
    }
    enum ResultError: Error {
        case invalidResult
    }
    func getUserName(user: User) -> String{
        return user.name
    }
    
    typealias MyResult<T> = Result<ResultError, T>

    override func setUp() {
        enum ResultError: Error {
            case invalidResult
        }
    }

    func testMap() {
        let result1:Result<ResultError, String> = Result.success("Result 1")
        let result12 = result1.map { value in
            return value + "2"
        }
        XCTAssert(result12.tryRight! == "Result 12")
    }
    
    func testApply() {
        let ricardo = User(name: "Ricardo")
        let userResult = MyResult.success(ricardo)
        
        let printUserResult = MyResult.success(getUserName)
        let userNameResult = userResult.apply(printUserResult)
        
        XCTAssert(userNameResult.tryRight! == "Ricardo")
    }
    
    func testLiftA(){
        let ricardo = User(name: "Ricardo")
        
        let userResult = MyResult.success(ricardo)
        let liftedGetUserName = MyResult.lift(getUserName)
        
        let userNameResult = liftedGetUserName(userResult)
        XCTAssert(userNameResult.tryRight! == "Ricardo")
    }

    
}
