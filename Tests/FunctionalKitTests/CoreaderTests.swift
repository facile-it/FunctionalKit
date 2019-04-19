import XCTest
@testable import FunctionalKit

class CoreaderTests: XCTestCase {
    func testMap() {
        let environment = true
        let coreader = Coreader<Bool, Int>(environment: environment, value: 100)
        let expectedCoreader = Coreader<Bool, String>(environment: environment, value: "100")
        
        coreader.map{ "\($0)" }.environment ==! expectedCoreader.environment
        coreader.map{ "\($0)" }.extract ==! expectedCoreader.extract
    }
    
    func testExtract() {
        let coreader = Coreader<Void, Int>(environment: (), value: 100)
        let expectedParameters = 100
        
        coreader.extract ==! expectedParameters
    }
    
    func testDuplicate() {
        let environment = true
        let coreader = Coreader<Bool, Int>(environment: environment, value: 100)
        let expectedCoreader = Coreader<Bool, Coreader<Bool, Int>>(environment: environment, value: Coreader<Bool, Int>(environment: environment, value: 100))
        
        coreader.duplicate().environment ==! expectedCoreader.environment
        coreader.duplicate().extract.environment ==! expectedCoreader.environment
        coreader.duplicate().extract.extract ==! expectedCoreader.extract.extract
    }
    
    func testExtend() {
        let environment = true
        let coreader = Coreader<Bool, Int>(environment: environment, value: 100)
        let expectedMappedCoreader = Coreader<Bool, String>(environment: environment, value: "100")
        let expectedCoreaderEnvEnv = Coreader<Bool, Bool>(environment: environment, value: true)
        
        coreader
            .extend { env, par -> String in
                return "\(par)"
            }.extract ==! expectedMappedCoreader.extract
        
        coreader
            .extend { env, par -> Bool in
                return env
            }.extract ==! expectedCoreaderEnvEnv.extract
    }
    
    func testEmbed() {
        let environment = true
        let parameter = 100
        let coreaderFromEmbed =  Coreader<Bool, Int>.embed(in: { return environment }())(parameter)
        
        let expectedCoreader = Coreader<Bool, Int>(environment: environment, value: parameter)
        
        coreaderFromEmbed.environment ==! expectedCoreader.environment
        coreaderFromEmbed.extract ==! expectedCoreader.extract
    }
    
    func testFlip() {
        let environment = true
        let parameter = 100
        let coreader =  Coreader<Bool, Int>(environment: environment, value: parameter)
        
        let expectedCoreader = Coreader<Int, Bool>(environment: parameter, value: environment)
        
        coreader.flip().environment ==! expectedCoreader.environment
        coreader.flip().extract ==! expectedCoreader.extract
    }
    
    func testReset() {
        let environment = true
        let parameter = 100
        let coreader =  Coreader<Bool, Int>(environment: environment, value: parameter)
        
        let expectedCoreader = Coreader<Bool, Bool>(environment: environment, value: environment)
        
        coreader.reset().environment ==! expectedCoreader.environment
        coreader.reset().extract ==! expectedCoreader.extract
    }
    
    static var allTests = [
        ("testMap", testMap),
        ("testExtract", testExtract),
        ("testDuplicate", testDuplicate),
        ("testExtend", testExtend),
        ("testEmbed", testEmbed),
        ("testFlip", testFlip),
        ("testReset", testReset)
    ]
}

