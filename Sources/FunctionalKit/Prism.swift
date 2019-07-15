#if SWIFT_PACKAGE
	import Operadics
#endif
import Abstract

/// A Prism is a reference to a component of a coproduct
public struct PrismFull<S,T,A,B> {
	public let tryGet: (S) -> A? /// get the part, if possible
	public let inject: (B) -> T /// changes the value to reflect the part that's injected in

	public init(tryGet: @escaping (S) -> A?, inject: @escaping (B) -> T) {
		self.tryGet = tryGet
		self.inject = inject
	}
}

public typealias Prism<Whole,Part> = PrismFull<Whole,Whole,Part,Part>

public extension PrismFull where S == T, A == B {
	typealias Whole = S
	typealias Part = A
}

public extension PrismFull {
	func tryModify(_ transform: @escaping (A) -> B) -> (S) -> T? {
        return { s in
            guard let a = self.tryGet(s) else { return nil }
            return self.inject(transform(a))
        }
	}
    
    func isCase(_ whole: S) -> Bool {
        return tryGet(whole) != nil
    }

	func then <C,D> (_ other: PrismFull<A,B,C,D>) -> PrismFull<S,T,C,D> {
		return PrismFull<S,T,C,D>.init (
			tryGet: { self.tryGet($0).flatMap(other.tryGet) },
			inject: { self.inject(other.inject($0)) })
	}

	static func >>> <C,D> (left: PrismFull, right: PrismFull<A,B,C,D>) -> PrismFull<S,T,C,D> {
		return left.then(right)
	}
}

public extension Prism where S == T, A == B {
	func modifyOrUnchanged(_ transform: @escaping (A) -> B) -> (S) -> T {
		return { s in
			guard let a = self.tryGet(s) else { return s }
			return self.inject(transform(a))
		}
	}

	/// zipped prisms will hold the laws only if the involved prisms are focusing on different parts
	static func zip <X,Y> (_ a: Prism<S,X>, _ b: Prism<S,Y>) -> Prism<S,Coproduct<X,Y>> where A == Coproduct<X,Y> {
		return Prism<S,Coproduct<X,Y>>.init(
			tryGet: { a.tryGet($0).map(Coproduct.left) ?? b.tryGet($0).map(Coproduct.right) },
			inject: { $0.fold(onLeft: a.inject, onRight: b.inject) })
	}
}

public extension Prism where S == T, A == B, S == Any {
	static func typecast (to: A.Type) -> Prism<Any,A> {
		return Prism<Any,A>.init(
			tryGet: { $0 as? A },
			inject: { $0 as Any })
	}
}

public extension Prism where S == T, A == B, S == Error, A: Error {
	static func typecast (to: A.Type) -> Prism<Error,A> {
		return Prism<Error,A>.init(
			tryGet: { $0 as? A },
			inject: { $0 as Error })
	}
}

// MARK: - Utilities

public extension Optional {
	static var prism: Prism<Optional,Wrapped> {
		return Prism<Optional,Wrapped>.init(
			tryGet: f.identity,
			inject: Optional.some)
	}
}

extension Result {
	public enum prism {
		public static var failure: Prism<Result,Failure> {
			return iso.coproduct >>> Coproduct.prism.left
		}

		public static var success: Prism<Result,Success> {
			return iso.coproduct >>> Coproduct.prism.right
		}
	}
}

/*:
## Enforcing prism laws

Much like lenses, prisms have their laws that have to be enforced to describe a "well-behaved" prism.

For a prism to be "well-behaved" it has to follow two invariants:

- InjectTryGet: if a value is `inject` through a prism, when you `tryGet` it you obtain the same value;
- TryGetInject: if a value is `tryGet` through a prism, and the value exists, `inject`ting it back recreates the same `whole` structure.

When defining a Prism, it's important to test it after these laws with a property-based testing framework.
:*/

public enum PrismLaw {

	public static func injectTryGet <S,A> (prism: Prism<S,A>, part: A) -> Bool where A: Equatable {
		guard let got = prism.tryGet(prism.inject(part)) else { return false }
		return  got == part
	}

	public static func tryGetInject <S, A> (prism: Prism<S,A>, whole: S) -> Bool where S: Equatable {
		guard let value = prism.tryGet(whole) else { return true }
		return prism.inject(value) == whole
	}
}
