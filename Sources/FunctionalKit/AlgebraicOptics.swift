import Abstract

extension Product {
	public enum lens {
		public static func firstFull<T>(to: T.Type) -> LensFull<Product<A,B>,Product<T,B>,A,T> {
			return LensFull<Product<A,B>,Product<T,B>,A,T>.init(
				get: { product in product.first },
				set: { t in { product in product.mapFirst(f.pure(t)) } })
		}

		public static func secondFull<T>(to: T.Type) -> LensFull<Product<A,B>,Product<A,T>,B,T> {
			return LensFull<Product<A,B>,Product<A,T>,B,T>.init(
				get: { product in product.second },
				set: { t in { product in product.mapSecond(f.pure(t)) } })
		}

		public static var first: Lens<Product<A,B>,A> {
			return firstFull(to: A.self)
		}

		public static var second: Lens<Product<A,B>,B> {
			return secondFull(to: B.self)
		}
	}
}

extension Coproduct {
	public enum prism {
		public static func leftFull<T>(to: T.Type) -> PrismFull<Coproduct<A,B>,Coproduct<T,B>,A,T> {
			return PrismFull<Coproduct<A,B>,Coproduct<T,B>,A,T>.init(
				tryGet: { coproduct in  coproduct.tryLeft() },
				inject: { t in .left(t) })
		}

		public static func rightFull<T>(to: T.Type) -> PrismFull<Coproduct<A,B>,Coproduct<A,T>,B,T> {
			return PrismFull<Coproduct<A,B>,Coproduct<A,T>,B,T>.init(
				tryGet: { coproduct in  coproduct.tryRight() },
				inject: { t in .right(t) })
		}

		public static var left: Prism<Coproduct<A,B>,A> {
			return leftFull(to: A.self)
		}

		public static var right: Prism<Coproduct<A,B>,B> {
			return rightFull(to: B.self)
		}
	}
}

extension Inclusive {
	public enum affine {
		public static func leftFull<T>(to: T.Type) -> AffineFull<Inclusive<A,B>,Inclusive<T,B>,A,T> {
			return AffineFull<Inclusive<A,B>,Inclusive<T,B>,A,T>.init(
				tryGet: { inclusive in inclusive.tryLeft() },
				trySet: { t in
					{ inclusive in
						inclusive.fold(
							onLeft: f.pure(.left(t)),
							onCenter: { _, b in .center(t,b) },
							onRight: f.pure(nil))
					}
			})
		}

		public static func centerFull<T,U>(to: (T.Type,U.Type)) -> AffineFull<Inclusive<A,B>,Inclusive<T,U>,(A,B),(T,U)> {
			return AffineFull<Inclusive<A,B>,Inclusive<T,U>,(A,B),(T,U)>.init(
				tryGet: { inclusive in inclusive.tryBoth() },
				trySet: { tu in
					{ inclusive in
						inclusive.fold(
							onLeft: f.pure(nil),
							onCenter: f.pure(.center(tu.0,tu.1)),
							onRight: f.pure(nil))
					}
			})
		}

		public static func rightFull<T>(to: T.Type) -> AffineFull<Inclusive<A,B>,Inclusive<A,T>,B,T> {
			return AffineFull<Inclusive<A,B>,Inclusive<A,T>,B,T>.init(
				tryGet: { inclusive in inclusive.tryRight() },
				trySet: { t in
					{ inclusive in
						inclusive.fold(
							onLeft: f.pure(nil),
							onCenter: { a, _ in .center(a,t) },
							onRight: f.pure(.right(t)))
					}
			})
		}

		public static var left: Affine<Inclusive<A,B>,A> {
			return leftFull(to: A.self)
		}

		public static var center: Affine<Inclusive<A,B>,(A,B)> {
			return centerFull(to: (A.self,B.self))
		}

		public static var right: Affine<Inclusive<A,B>,B> {
			return rightFull(to: B.self)
		}
	}
}

