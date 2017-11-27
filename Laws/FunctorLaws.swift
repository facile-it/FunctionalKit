@testable import FunctionalKit
import Abstract

extension Law {
    enum Functor {
//MARK: Array
        enum OnArray {
            static func identity<A> (_ value: A) -> Bool where A: Equatable {
                return Array<A>.pure(value).map(fidentity) == fidentity(Array<A>.pure(value))
            }
        }
        
//MARK: Coproduct
        enum OnCoproduct {
            static func leftIdentity<A> (_ value: A, _ context: String) -> Bool where A: Equatable {
                return Coproduct<A,String>.left(value).mapLeft(fidentity) == fidentity(Coproduct<A,String>.left(value))
            }
            
            static func rightIdentity<B> (_ value: B, _ context: String) -> Bool where B: Equatable {
                return Coproduct<String,B>.right(value).mapRight(fidentity) == fidentity(Coproduct<String,B>.right(value))
            }
        }
        
//MARK: Exponential
        // Problems to create identity law for Exponential:
        //      1. We have 2 generic parameters
        //      2. How can we code == function for this type?
        
//MARK: Future
        enum OnFuture {
            static func identity<A> (_ value: A) -> Bool where A: Equatable {
                return Future<A>.pure(value).map(fidentity) == fidentity(Future<A>.pure(value))
            }
        }
        
//MARK: Inclusive
        enum OnInclusive {
            static func leftIndentity<A> (_ value: A, _ context: String) -> Bool where A: Equatable {
                return Inclusive<A,String>.left(value).mapLeft(fidentity) == fidentity(Inclusive<A,String>.left(value))
            }
            
            static func rightIdentity<B> (_ value: B, _ context: String) -> Bool where B: Equatable {
                return Inclusive<String,B>.right(value).mapRight(fidentity) == fidentity(Inclusive<String,B>.right(value))
            }
            
            static func centerIdentity<A,B> (_ left: A, _ right: B) -> Bool where A: Equatable, B: Equatable {
                return Inclusive<A,B>.center(left, right).bimap(onLeft: fidentity, onRight: fidentity) == fidentity(Inclusive<A,B>.center(left, right))
            }
        }
        
//MARK: Optional
        enum OnOptional {
            static func identity<A> (_ value: A) -> Bool where A: Equatable {
                return Optional.pure(value).map(fidentity) == fidentity(Optional.pure(value))
            }
        }
        
//MARK: Product
        enum OnProduct {
            static func firstIdentity<A> (_ value: A, _ context: String) -> Bool where A: Equatable {
                return Product<A,String>.init(value, context).mapFirst(fidentity) == fidentity(Product<A,String>.init(value, context))
            }
            
            static func secondIdentity<B> (_ value: B, _ context: String) -> Bool where B: Equatable {
                return Product<String,B>.init(context, value).mapSecond(fidentity) == fidentity(Product<String,B>.init(context, value))
            }
            
            static func bothIdentity<A,B> (_ first: A, _ second: B) -> Bool where A: Equatable, B: Equatable {
                return Product<A,B>.init(first, second).bimap(onFirst: fidentity, onSecond: fidentity) == fidentity(Product<A,B>.init(first, second))
            }
        }
        
//MARK: Reader
        
        
//MARK: Result
        
//MARK: State
        
//MARK: Writer
        
    }
}
