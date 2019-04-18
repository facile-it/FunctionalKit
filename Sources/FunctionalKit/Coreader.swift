import Foundation
import Abstract

public struct Coreader<Environment, Parameter> {
    let environment: Environment
    private let value: Parameter
}

public extension Coreader {
    func map<A>(_ transform: (Parameter) -> A) -> Coreader<Environment, A> {
        return Coreader<Environment, A>(environment: environment, value: transform(value))
    }
    
    var extract: Parameter {
        return value
    }
    
    func duplicate() -> Coreader<Environment, Coreader<Environment, Parameter>> {
        return Coreader<Environment, Coreader<Environment, Parameter>>(environment: environment, value: self)
    }
    
    func extend<B>(_ transform: (Environment, Parameter) -> B) -> Coreader<Environment, B> {
        return self.duplicate().map{ transform($0.environment, $0.extract) }
    }
    
    static func embed(in environment: @escaping @autoclosure () -> Environment) -> (Parameter) -> Coreader<Environment, Parameter> {
        return { value in
            Coreader(environment: environment(), value: value)
        }
    }
    
    func flip() -> Coreader<Parameter, Environment> {
        return Coreader<Parameter, Environment>(environment: extract, value: environment)
    }
    
    func reset() -> Coreader<Environment, Environment> {
        return Coreader<Environment, Environment>(environment: environment, value: environment)
    }
}

public extension Coreader where Environment == Parameter {
    static func read(_ value: Parameter) -> Coreader<Parameter, Parameter> {
        return Coreader(environment: value, value: value)
    }
}

extension Coreader: ProductType {
    public typealias FirstType = Environment
    
    public typealias SecondType = Parameter
    
    public func fold<T>(_ transform: (Environment, Parameter) -> T) -> T {
        return transform(environment, value)
    }
    
    public static func from(product: Product<Environment, Parameter>) -> Coreader<Environment, Parameter> {
        return Coreader(
            environment: product.first,
            value: product.second)
    }
}
