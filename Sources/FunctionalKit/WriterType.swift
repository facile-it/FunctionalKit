#if !XCODE_BUILD
	import Operadics
#endif
import Abstract

// MARK: - Definiton

public protocol WriterType: TypeConstructor, ProductType {
	associatedtype LogType: Monoid

	static func from(concrete: Concrete) -> Self
	var run: (LogType,ParameterType) { get }
	func fold <T> (_ transform: @escaping (LogType,ParameterType) -> T) -> T
}

// MARK: - Data

public struct Writer<L,A>: WriterType where L: Monoid {
	public typealias ParameterType = A

	fileprivate let log: L
	fileprivate let value: A

	public init(log: L, value: A) {
		self.log = log
		self.value = value
	}

	public static func from(concrete: Writer<L, A>) -> Writer<L, A> {
		return concrete
	}
	
	public var run: (L,A) {
		return (log,value)
	}

	public func fold<T>(_ transform: @escaping (L, A) -> T) -> T {
		return fdestructure(transform) § run
	}
}

// MARK: - Concrete

extension WriterType {
	public typealias Concrete = Writer<LogType,ParameterType>
}

// MARK: - Equatable

extension WriterType where LogType: Equatable, ParameterType: Equatable {
	public static func == (lhs: Self, rhs: Self) -> Bool {
		return lhs.fold { l1, v1 in rhs.fold { l2, v2 in l1 == l2 && v1 == v2 } }
	}
}

// MARK: - Functor

extension WriterType {
	public func map <T> (_ transform: @escaping (ParameterType) -> T) -> Writer<LogType,T> {
		return fold { log, value in Writer<LogType,T>.init(log: log, value: transform(value)) }
	}
}

// MARK: - Cartesian

extension WriterType {
	public static func zip <W1,W2> (_ first: W1, _ second: W2) -> Writer<ProductM<W1.LogType,W2.LogType>,(W1.ParameterType,W2.ParameterType)> where W1: WriterType, W2: WriterType, LogType == ProductM<W1.LogType,W2.LogType>, ParameterType == (W1.ParameterType, W2.ParameterType) {
		return first.fold { l1, v1 in second.fold { l2, v2 in Writer.init(log: ProductM.init(l1, l2), value: (v1, v2)) } }
	}

	public static func zipMerge <W1,W2> (_ first: W1, _ second: W2) -> Writer<W1.LogType,(W1.ParameterType,W2.ParameterType)> where W1: WriterType, W2: WriterType, W1.LogType == W2.LogType, LogType == W1.LogType, ParameterType == (W1.ParameterType, W2.ParameterType) {
		return first.fold { l1, v1 in second.fold { l2, v2 in Writer.init(log: l1 <> l2, value: (v1, v2)) } }
	}
}

// MARK: - Applicative

extension WriterType {
	public static func pure(_ value: ParameterType) -> Writer<LogType,ParameterType> {
		return Writer.init(log: .empty, value: value)
	}

	public func apply <W,T> (_ transform: W) -> Writer<LogType,T> where W: WriterType, W.ParameterType == (ParameterType) -> T, W.LogType == LogType {
		return Writer.zipMerge(self, transform).map { value, function in function(value) }
	}

	public static func <*> <W,T> (lhs: W, rhs: Self) -> Writer<LogType,T> where W: WriterType, W.ParameterType == (ParameterType) -> T, W.LogType == LogType {
		return Writer.zipMerge(lhs, rhs).map { function, value in function(value) }
	}
}

// MARK: - Traversable

extension WriterType {
	public typealias Traversed<Applicative> = Writer<LogType,Applicative.ParameterType> where Applicative: TypeConstructor

	public func traverse<Applicative>(_ transform: @escaping (ParameterType) -> Applicative) -> [Traversed<Applicative>] where Applicative: ArrayType {
		typealias Returned = [Traversed<Applicative>]

		return fold { log, value in
			transform(value).map { Traversed<Applicative>.init(log: log, value: $0) }
		}
	}

	public func traverse<Applicative>(_ transform: @escaping (ParameterType) -> Applicative) -> Future<Traversed<Applicative>> where Applicative: FutureType {
		typealias Returned = Future<Traversed<Applicative>>

		return fold { log, value in
			transform(value).map { Traversed<Applicative>.init(log: log, value: $0) }
		}
	}

	public func traverse<Applicative>(_ transform: @escaping (ParameterType) -> Applicative) -> Optional<Traversed<Applicative>> where Applicative: OptionalType {
		typealias Returned = Optional<Traversed<Applicative>>

		return fold { log, value in
			transform(value).map { Traversed<Applicative>.init(log: log, value: $0) }
		}
	}

	public func traverse<Applicative>(_ transform: @escaping (ParameterType) -> Applicative) -> Reader<Applicative.EnvironmentType,Traversed<Applicative>> where Applicative: ReaderType {
		typealias Returned = Reader<Applicative.EnvironmentType,Traversed<Applicative>>

		return fold { log, value in
			transform(value).map { Traversed<Applicative>.init(log: log, value: $0) }
		}
	}

	public func traverse<Applicative>(_ transform: @escaping (ParameterType) -> Applicative) -> Result<Applicative.ErrorType,Traversed<Applicative>> where Applicative: ResultType {
		typealias Returned = Result<Applicative.ErrorType,Traversed<Applicative>>

		return fold { log, value in
			transform(value).map { Traversed<Applicative>.init(log: log, value: $0) }
		}
	}

	public func traverse<Applicative>(_ transform: @escaping (ParameterType) -> Applicative) -> Writer<Applicative.LogType,Traversed<Applicative>> where Applicative: WriterType {
		typealias Returned = Writer<Applicative.LogType,Traversed<Applicative>>

		return fold { log, value in
			transform(value).map { Traversed<Applicative>.init(log: log, value: $0) }
		}
	}
}

// MARK: - Monad

extension WriterType where ParameterType: WriterType, ParameterType.LogType == LogType {
	public var joined: Writer<LogType,ParameterType.ParameterType> {
		return fold { externalLog, externalValue in
			externalValue.fold { internalLog, internalValue in
				Writer.init(log: externalLog <> internalLog, value: internalValue)
			}
		}
	}
}

extension WriterType {
	public func flatMap <W> (_ transform: @escaping (ParameterType) -> W) -> Writer<LogType,W.ParameterType> where W: WriterType, W.LogType == LogType {
		return map(transform).joined
	}
}

// MARK: - Utility

/// check other implementations

