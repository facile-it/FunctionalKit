@testable import FunctionalKit
import SwiftCheck
import Abstract

extension String: Error {}

extension AnyError: Arbitrary {
    public static var arbitrary: Gen<AnyError> {
        return Gen<AnyError>.compose {
            AnyError.init($0.generate(using: String.arbitrary))
        }
    }
}

extension CheckerArguments {
	static func with(_ left: Int, _ right: Int, _ size: Int) -> CheckerArguments {
		return CheckerArguments(
			replay: .some((StdGen(left,right),size)))
	}
}

extension Product: Arbitrary where A: Arbitrary, B: Arbitrary {
	public static var arbitrary: Gen<Product<A, B>> {
		return Gen.compose {
			Product<A,B>.init($0.generate(), $0.generate())
		}
	}
}

extension Inclusive: Arbitrary where A: Arbitrary, B: Arbitrary {
	public static var arbitrary: Gen<Inclusive<A, B>> {
		return Gen.fromElements(of: [-1,0,1])
			.flatMap { (value) -> Gen<Inclusive<A,B>> in
				switch value {
				case -1:
					return A.arbitrary.map(Inclusive.left)
				case 0:
					return Gen.zip(A.arbitrary, B.arbitrary).map(Inclusive.center)
				case 1:
					return B.arbitrary.map(Inclusive.right)
				default:
					fatalError()
				}
		}
	}
}

extension Max: Arbitrary where A: Arbitrary {
	public static var arbitrary: Gen<Max<A>> {
		return A.arbitrary.map(Max.init)
	}
}

struct TestProduct<A,B>: Equatable, Arbitrary, CustomStringConvertible where A: Equatable & Arbitrary, B: Equatable & Arbitrary {
	let unwrap: Product<A,B>

	init(_ product: Product<A,B>) {
		self.unwrap = product
	}

	init(_ first: A, _ second: B) {
		self.init(Product.init(first, second))
	}

	static func == (lhs: TestProduct, rhs: TestProduct) -> Bool {
		return lhs.unwrap == rhs.unwrap
	}

	static var arbitrary: Gen<TestProduct<A, B>> {
		return Gen.compose {
			TestProduct.init($0.generate(), $0.generate())
		}
	}

	var description: String {
		return "(\(unwrap.first),\(unwrap.second))"
	}

	enum iso {
		static var product: Iso<TestProduct<A,B>,Product<A,B>> {
			return Iso<TestProduct<A,B>,Product<A,B>>.init(
				from: { $0.unwrap },
				to: { TestProduct.init($0.first, $0.second) })
		}
	}

	enum lens {
		static var first: Lens<TestProduct<A,B>,A> {
			return iso.product >>> Product.lens.first
		}

		static var second: Lens<TestProduct<A,B>,B> {
			return iso.product >>> Product.lens.second
		}
	}
}

struct TestProductMutable<A,B>: Equatable, Arbitrary, CustomStringConvertible where A: Equatable & Arbitrary, B: Equatable & Arbitrary {
	var first: A
	var second: B

	init(_ first: A, _ second: B) {
		self.first = first
		self.second = second
	}

	static func == (lhs: TestProductMutable, rhs: TestProductMutable) -> Bool {
		return lhs.first == rhs.first
			&& lhs.second == rhs.second
	}

	static var arbitrary: Gen<TestProductMutable<A, B>> {
		return Gen.compose {
			TestProductMutable.init($0.generate(), $0.generate())
		}
	}

	var description: String {
		return "(\(first),\(second))"
	}
}

struct TestCoproduct<A,B>: Equatable, Arbitrary, CustomStringConvertible where A: Equatable & Arbitrary, B: Equatable & Arbitrary {
	let unwrap: Coproduct<A,B>

	init(_ coproduct: Coproduct<A,B>) {
		self.unwrap = coproduct
	}

	static func left(_ value: A) -> TestCoproduct {
		return TestCoproduct.init(.left(value))
	}

	static func right(_ value: B) -> TestCoproduct {
		return TestCoproduct.init(.right(value))
	}

	static func == (lhs: TestCoproduct, rhs: TestCoproduct) -> Bool {
		return lhs.unwrap == rhs.unwrap
	}

	static var arbitrary: Gen<TestCoproduct<A, B>> {
		return Bool.arbitrary.flatMap { value in
			Gen.compose {
				value.fold(
					onTrue: .left($0.generate()),
					onFalse: .right($0.generate()))
			}
		}
	}

	var description: String {
		return unwrap.fold(
			onLeft: { "left(\($0))" },
			onRight: { "right(\($0))" })
	}

	enum iso {
		static var coproduct: Iso<TestCoproduct<A,B>,Coproduct<A,B>> {
			return Iso<TestCoproduct<A,B>,Coproduct<A,B>>.init(
				from: { $0.unwrap },
				to: { $0.fold(onLeft: TestCoproduct.left, onRight: TestCoproduct.right) })
		}
	}

	enum prism {
		static var left: Prism<TestCoproduct<A,B>,A> {
			return iso.coproduct >>> Coproduct.prism.left
		}

		static var right: Prism<TestCoproduct<A,B>,B> {
			return iso.coproduct >>> Coproduct.prism.right
		}
	}

}

struct Couple<A,B>: Equatable, Arbitrary, CustomStringConvertible where A: Equatable & Arbitrary, B: Equatable & Arbitrary {
	var a: A
	var b: B

	static func == (left: Couple, right: Couple) -> Bool {
		return left.a == right.a
			&& left.b == right.b
	}

	public static var arbitrary: Gen<Couple<A, B>> {
		return Gen.compose { Couple.init(a: $0.generate(), b: $0.generate()) }
	}

	var description: String {
		return "(\(a),\(b))"
	}

	enum iso {
		static var product: Iso<Couple<A,B>,Product<A,B>> {
			return Iso<Couple<A,B>,Product<A,B>>.init(
				from: { Product.init($0.a, $0.b) },
				to: { Couple.init(a: $0.first, b: $0.second) })
		}
	}

}

struct TestProductOptional<A,B>: Equatable, Arbitrary, CustomStringConvertible where A: Equatable & Arbitrary, B: Equatable & Arbitrary {
	let unwrap: Product<A?,B?>

	static func == (lhs: TestProductOptional, rhs: TestProductOptional) -> Bool {
		return lhs.unwrap.first == rhs.unwrap.first
			&& lhs.unwrap.second == rhs.unwrap.second
	}

	static var arbitrary: Gen<TestProductOptional<A, B>> {
		return Gen<TestProductOptional<A, B>>.compose {
			TestProductOptional.init(unwrap: Product.init(
				$0.generate(using: OptionalOf<A>.arbitrary.map { $0.getOptional }),
				$0.generate(using: OptionalOf<B>.arbitrary.map { $0.getOptional })))
		}
	}

	var description: String {
		return "(\(String(describing: unwrap.first)),\(String(describing: unwrap.second))"
	}

	enum iso {
		static var product: Iso<TestProductOptional<A,B>,Product<A?,B?>> {
			return Iso<TestProductOptional<A,B>,Product<A?,B?>>.init(
				from: { $0.unwrap },
				to: { TestProductOptional.init(unwrap: $0) })
		}
	}

	enum lens {
		static var first: Lens<TestProductOptional<A,B>,A?> {
			return iso.product >>> Product.lens.first
		}

		static var second: Lens<TestProductOptional<A,B>,B?> {
			return iso.product >>> Product.lens.second
		}
	}
}

struct TestInclusive<A,B>: Equatable, Arbitrary, CustomStringConvertible where A: Equatable & Arbitrary, B: Equatable & Arbitrary {
	let unwrap: Inclusive<A,B>

	init(_ inclusive: Inclusive<A,B>) {
		self.unwrap = inclusive
	}

	static func left(_ value: A) -> TestInclusive {
		return TestInclusive.init(.left(value))
	}

	static func right(_ value: B) -> TestInclusive {
		return TestInclusive.init(.right(value))
	}

	static func center(_ a: A, _ b: B) -> TestInclusive {
		return TestInclusive.init(.center(a,b))
	}

	static func == (lhs: TestInclusive, rhs: TestInclusive) -> Bool {
		return lhs.unwrap == rhs.unwrap
	}

	static var arbitrary: Gen<TestInclusive<A, B>> {
		return Gen.fromElements(of: [-1,0,1]).flatMap { value in
			Gen.compose {
				switch value {
				case ..<0:
					return .left($0.generate())
				case 1...:
					return .right($0.generate())
				default:
					return .center($0.generate(),$0.generate())
				}
			}
		}
	}

	var description: String {
		return unwrap.fold(
			onLeft: { "left(\($0))" },
			onCenter: { "center(\($0),\($1))" },
			onRight: { "right(\($0))" })
	}

	enum iso {
		static var inclusive: Iso<TestInclusive<A,B>,Inclusive<A,B>> {
			return Iso<TestInclusive<A,B>,Inclusive<A,B>>.init(
				from: { $0.unwrap },
				to: { $0.fold(onLeft: TestInclusive.left, onCenter: TestInclusive.center, onRight: TestInclusive.right) })
		}
	}

	enum affine {
		static var left: Affine<TestInclusive<A,B>,A> {
			return iso.inclusive >>> Inclusive.affine.left
		}

		static var right: Affine<TestInclusive<A,B>,B> {
			return iso.inclusive >>> Inclusive.affine.right
		}
	}
}
