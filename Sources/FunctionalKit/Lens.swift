#if SWIFT_PACKAGE
	import Operadics
#endif
import Abstract

/// A Lens is a reference to a subpart of some data structure
public struct LensFull<S,T,A,B> {
    public let get: (S) -> A
    public let set: (B) -> (S) -> T
    
    public init(get: @escaping (S) -> A, set: @escaping (B) -> (S) -> T) {
        self.get = get
        self.set = set
    }
}

public typealias Lens<Whole,Part> = LensFull<Whole,Whole,Part,Part>

public extension LensFull {
    func modify(_ transform: @escaping (A) -> B) -> (S) -> T {
        return { s in self.set(transform(self.get(s)))(s) }
    }
    
    func compose <C,D> (_ other: LensFull<A,B,C,D>) -> LensFull<S,T,C,D> {
        return LensFull<S,T,C,D>.init(
            get: { other.get(self.get($0)) },
            set: { bp in
                return { s in
                    return self.set(other.set(bp)(self.get(s)))(s)
                }
        })
    }

	static func >>> <C,D> (left: LensFull, right: LensFull<A,B,C,D>) -> LensFull<S,T,C,D> {
		return left.compose(right)
	}
}

/// zipped lenses will hold the laws only if the involved lenses are focusing on different parts
public extension Lens where S == T, A == B {
    static func zip <X,Y> (_ a: Lens<S,X>, _ b: Lens<S,Y>) -> Lens<S,(X,Y)> where A == (X,Y)  {
        return Lens<S,(X,Y)>.init(
            get: { s in (a.get(s),b.get(s)) },
            set: { (tuple) in
                { s in b.set(tuple.1)(a.set(tuple.0)(s)) }
        })
    }
    
	static func zip <X,Y,Z> (_ a: Lens<S,X>, _ b: Lens<S,Y>, _ c: Lens<S,Z>) -> Lens<S,(X,Y,Z)> where A == (X,Y,Z)  {
		return Lens<S,(X,Y,Z)>.init(
			get: { s in (a.get(s),b.get(s),c.get(s)) },
			set: { (tuple) in
				{ s in c.set(tuple.2)(b.set(tuple.1)(a.set(tuple.0)(s))) }
		})
	}
}

// MARK: - Utilities

public extension Dictionary {
	static func lens(at key: Key) -> Lens<Dictionary,Value?> {
		return Lens<Dictionary,Value?>(
			get: { $0[key] },
			set: { part in
				{ whole in
					var m_dict = whole
					m_dict[key] = part
					return m_dict
				}
		})
	}
}

extension Writer {
	public enum lens {
		public static var log: Lens<Writer,Log> {
			return iso.product >>> Product.lens.first
		}

		public static var value: Lens<Writer,Parameter> {
			return iso.product >>> Product.lens.second
		}
	}
}

public extension WritableKeyPath {
	func lens() -> Lens<Root,Value> {
		return Lens<Root,Value>.init(
			get: { $0[keyPath: self] },
			set: { part in
				{ whole in
					var m = whole
					m[keyPath: self] = part
					return m
				}
		})
	}
}

prefix operator °
public prefix func ° <Root,Value> (_ keyPath: WritableKeyPath<Root,Value>) -> Lens<Root,Value> {
	return keyPath.lens()
}

// MARK: - Lens Laws

/*:
## Enforcing lens laws

Lenses are not just bags of syntax: for a lens to make sense it's important that some invariants are respected.

A Lens is defined as just a couple of functions, but what matters are the "semantics" attached to those lenses.

For a lens to be "well-behaved" it has to follow two invariants:

- SetGet: if a value is `set` through a lens, when you `get` it you obtain the same value;
- GetSet: if a value is `get` through a lens, `set`ting it back doesn't change the `whole` structure.

There's also and additional law (for a "very well-behaved lens) that, if enforced, guarantees that the `set` operation is idempotent:

- SetSet: if a value is `set` and then is `set` again, the `whole` is the same as the one after the first `set`.

When defining a Lens, it's important to test it after these laws with a property-based testing framework.
:*/

public enum LensLaw {
	public static func setGet <S,A> (lens: Lens<S,A>, whole: S, part: A) -> Bool where A: Equatable {
		return lens.get(lens.set(part)(whole)) == part
	}

	public static func setGet <S,X,Y> (lens: Lens<S,(X,Y)>, whole: S, part: (X,Y)) -> Bool where X: Equatable, Y: Equatable {
		return lens.get(lens.set(part)(whole)) == part
	}

	public static func getSet <S,A> (lens: Lens<S,A>, whole: S) -> Bool where S: Equatable {
		return lens.set(lens.get(whole))(whole) == whole
	}

	public static func setSet <S,A> (lens: Lens<S,A>, whole: S, part: A) -> Bool where S: Equatable {
		return lens.set(part)(whole) == lens.set(part)(lens.set(part)(whole))
	}
}
