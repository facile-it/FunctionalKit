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
    
    func testMap() {
        
        enum ResultError: Error {
            case invalidResult
        }
        
        let result1:Result<ResultError, String> = Result.success("Result 1")
        let result12 = result1.map { value in
            return value + "2"
        }
        XCTAssert(result12.tryRight! == "Result 12")
    }
    
    
    func testApply() {
        
        let ricardo = User(name: "Ricardo")
        let userResult:Result<ResultError, User> = Result.success(ricardo)
        
        let printUserResult:Result<ResultError, (User) -> (String)> = Result.success(getUserName)
        let userNameResult = userResult.apply(printUserResult)
        
        XCTAssert(userNameResult.tryRight! == "Ricardo")
    }
    
    func testLiftA(){
        
        let ricardo = User(name: "Ricardo")
        let userResult:Result<ResultError, User> = Result.success(ricardo)
        
        let liftedGetUserName:(Result<ResultError, User>) -> Result<ResultError, String> = Result.liftA(getUserName)
        
        let userNameResult = liftedGetUserName(userResult)
        XCTAssert(userNameResult.tryRight! == "Ricardo")
    }

    
}
