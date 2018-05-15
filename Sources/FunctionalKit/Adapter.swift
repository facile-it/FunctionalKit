#if SWIFT_PACKAGE
	import Operadics
#endif
import Abstract

/// An Adapter establishes a one-to-one relationship from the Whole values to the Part values; the simplified case is an Iso, i.e. an isomorphism, and should behave as such.

public struct Adapter<S,T,A,B> {
	public let from: (S) -> A
	public let to: (B) -> T

	public init(from: @escaping (S) -> A, to: @escaping (B) -> T) {
		self.from = from
		self.to = to
	}
}

public typealias Iso<Whole,Part> = Adapter<Whole,Whole,Part,Part>

// MARK: - Utility

public extension Writer {
	enum iso {
		public static var product: Iso<Writer,Product<Log,Parameter>> {
			return Iso<Writer,Product<Log,Parameter>>.init(
				from: { Product.init($0.log, $0.value) },
				to: { $0.fold(Writer.init) })
		}
	}
}

public extension Result {
	enum iso {
		public static var coproduct: Iso<Result,Coproduct<Failure,Parameter>> {
			return Iso<Result,Coproduct<Failure,Parameter>>.init(
				from: {
					switch $0 {
					case let .success(value):
						return .right(value)
					case let .failure(error):
						return .left(error)
					}
				},
				to: {
					$0.fold(
						onLeft: Result.failure,
						onRight: Result.success)
			})
		}
	}
}

public extension Adapter {
	func compose <C,D> (_ other: Adapter<A,B,C,D>) -> Adapter<S,T,C,D> {
		return Adapter<S,T,C,D>.init(
			from: from >>> other.from,
			to: other.to >>> to)
	}

	static func >>> <C,D> (lhs: Adapter, rhs: Adapter<A,B,C,D>) -> Adapter<S,T,C,D> {
		return lhs.compose(rhs)
	}

	func inverted() -> Adapter<B,A,T,S> {
		return Adapter<B,A,T,S>.init(from: to, to: from)
	}

	func under(_ transform: @escaping (T) -> S) -> (B) -> A {
		return to >>> transform >>> from
	}

	func toLens() -> LensFull<S,T,A,B> {
		return LensFull.init(get: from, set: to >>> f.pure)
	}

	static func >>> <C,D> (lhs: Adapter, rhs: LensFull<A,B,C,D>) -> LensFull<S,T,C,D> {
		return lhs.toLens().compose(rhs)
	}

	static func >>> <Q,R> (lhs: LensFull<Q,R,S,T>, rhs: Adapter) -> LensFull<Q,R,A,B> {
		return lhs.compose(rhs.toLens())
	}

	func toPrism() -> PrismFull<S,T,A,B> {
		return PrismFull.init(tryGet: from, inject: to)
	}

	static func >>> <C,D> (lhs: Adapter, rhs: PrismFull<A,B,C,D>) -> PrismFull<S,T,C,D> {
		return lhs.toPrism().compose(rhs)
	}

	static func >>> <Q,R> (lhs: PrismFull<Q,R,S,T>, rhs: Adapter) -> PrismFull<Q,R,A,B> {
		return lhs.compose(rhs.toPrism())
	}

	func toAffine() -> AffineFull<S,T,A,B> {
		return AffineFull.init(tryGet: from, trySet: to >>> f.pure)
	}

	static func >>> <C,D> (lhs: Adapter, rhs: AffineFull<A,B,C,D>) -> AffineFull<S,T,C,D> {
		return lhs.toAffine().compose(rhs)
	}

	static func >>> <Q,R> (lhs: AffineFull<Q,R,S,T>, rhs: Adapter) -> AffineFull<Q,R,A,B> {
		return lhs.compose(rhs.toAffine())
	}
}

// MARK: - Adapter Laws

/*:
## Enforcing Iso laws

An `Iso` should actually represent an isomorphism: this means that there's a one-to-one correspondence between instances of `Whole` and `Part` and I can always obtain a `Part` from a `Whole` and viceversa without gain or loss of information.

In other words this means that calling `from >>> to` on a `Whole` returns the same `Whole`, and `to >>> from` on a `Part` returns the same `Part`.
:*/

public enum IsoLaw {
	public static func fromTo <S,A> (whole: S, iso: Iso<S,A>) -> Bool where S: Equatable {
		return (whole |> iso.from |> iso.to) == whole
	}

	public static func toFrom <S,A> (part: A, iso: Iso<S,A>) -> Bool where A: Equatable {
		return (part |> iso.to |> iso.from) == part
	}

	public static func toFrom <S,X,Y> (part: (X,Y), iso: Iso<S,(X,Y)>) -> Bool where X: Equatable, Y: Equatable {
		return (part |> iso.to |> iso.from) == part
	}
}
