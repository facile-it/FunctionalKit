// Generated using Sourcery 0.10.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Array<Array<Array<Output>>>) -> Array<Array<Array<Output>>> {
        return flatMapT { (value) -> Array<Array<Array<Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Array<Array<Optional<Output>>>) -> Array<Array<Optional<Output>>> {
        return flatMapT { (value) -> Array<Array<Optional<Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Array<Array<Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Array<Array<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Array<Array<Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Array<Array<Writer<ParameterType.ParameterType.LogType,Output>>>) -> Array<Array<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Array<Array<Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Array<Optional<Array<Output>>>) -> Array<Optional<Array<Output>>> {
        return flatMapT { (value) -> Array<Optional<Array<Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Array<Optional<Optional<Output>>>) -> Array<Optional<Optional<Output>>> {
        return flatMapT { (value) -> Array<Optional<Optional<Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Array<Optional<Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Array<Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Array<Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Array<Optional<Writer<ParameterType.ParameterType.LogType,Output>>>) -> Array<Optional<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Array<Optional<Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Array<Result<ParameterType.ErrorType,Array<Output>>>) -> Array<Result<ParameterType.ErrorType,Array<Output>>> {
        return flatMapT { (value) -> Array<Result<ParameterType.ErrorType,Array<Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Array<Result<ParameterType.ErrorType,Optional<Output>>>) -> Array<Result<ParameterType.ErrorType,Optional<Output>>> {
        return flatMapT { (value) -> Array<Result<ParameterType.ErrorType,Optional<Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Array<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Array<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Array<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Array<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>>) -> Array<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Array<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Array<Writer<ParameterType.LogType,Array<Output>>>) -> Array<Writer<ParameterType.LogType,Array<Output>>> {
        return flatMapT { (value) -> Array<Writer<ParameterType.LogType,Array<Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Array<Writer<ParameterType.LogType,Optional<Output>>>) -> Array<Writer<ParameterType.LogType,Optional<Output>>> {
        return flatMapT { (value) -> Array<Writer<ParameterType.LogType,Optional<Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Array<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Array<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Array<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Array<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>>) -> Array<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Array<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Effect<Array<Array<Output>>>) -> Effect<Array<Array<Output>>> {
        return flatMapT { (value) -> Effect<Array<Array<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Effect<Array<Optional<Output>>>) -> Effect<Array<Optional<Output>>> {
        return flatMapT { (value) -> Effect<Array<Optional<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Effect<Array<Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Effect<Array<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Effect<Array<Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Effect<Array<Writer<ParameterType.ParameterType.LogType,Output>>>) -> Effect<Array<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Effect<Array<Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Effect<Optional<Array<Output>>>) -> Effect<Optional<Array<Output>>> {
        return flatMapT { (value) -> Effect<Optional<Array<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Effect<Optional<Optional<Output>>>) -> Effect<Optional<Optional<Output>>> {
        return flatMapT { (value) -> Effect<Optional<Optional<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Effect<Optional<Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Effect<Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Effect<Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Effect<Optional<Writer<ParameterType.ParameterType.LogType,Output>>>) -> Effect<Optional<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Effect<Optional<Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Effect<Result<ParameterType.ErrorType,Array<Output>>>) -> Effect<Result<ParameterType.ErrorType,Array<Output>>> {
        return flatMapT { (value) -> Effect<Result<ParameterType.ErrorType,Array<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Effect<Result<ParameterType.ErrorType,Optional<Output>>>) -> Effect<Result<ParameterType.ErrorType,Optional<Output>>> {
        return flatMapT { (value) -> Effect<Result<ParameterType.ErrorType,Optional<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Effect<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Effect<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Effect<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Effect<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>>) -> Effect<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Effect<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Effect<Writer<ParameterType.LogType,Array<Output>>>) -> Effect<Writer<ParameterType.LogType,Array<Output>>> {
        return flatMapT { (value) -> Effect<Writer<ParameterType.LogType,Array<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Effect<Writer<ParameterType.LogType,Optional<Output>>>) -> Effect<Writer<ParameterType.LogType,Optional<Output>>> {
        return flatMapT { (value) -> Effect<Writer<ParameterType.LogType,Optional<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Effect<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Effect<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Effect<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Effect<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>>) -> Effect<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Effect<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Future<Array<Array<Output>>>) -> Future<Array<Array<Output>>> {
        return flatMapT { (value) -> Future<Array<Array<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Future<Array<Optional<Output>>>) -> Future<Array<Optional<Output>>> {
        return flatMapT { (value) -> Future<Array<Optional<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Future<Array<Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Future<Array<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Future<Array<Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Future<Array<Writer<ParameterType.ParameterType.LogType,Output>>>) -> Future<Array<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Future<Array<Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Future<Optional<Array<Output>>>) -> Future<Optional<Array<Output>>> {
        return flatMapT { (value) -> Future<Optional<Array<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Future<Optional<Optional<Output>>>) -> Future<Optional<Optional<Output>>> {
        return flatMapT { (value) -> Future<Optional<Optional<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Future<Optional<Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Future<Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Future<Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Future<Optional<Writer<ParameterType.ParameterType.LogType,Output>>>) -> Future<Optional<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Future<Optional<Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Future<Result<ParameterType.ErrorType,Array<Output>>>) -> Future<Result<ParameterType.ErrorType,Array<Output>>> {
        return flatMapT { (value) -> Future<Result<ParameterType.ErrorType,Array<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Future<Result<ParameterType.ErrorType,Optional<Output>>>) -> Future<Result<ParameterType.ErrorType,Optional<Output>>> {
        return flatMapT { (value) -> Future<Result<ParameterType.ErrorType,Optional<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Future<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Future<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Future<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Future<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>>) -> Future<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Future<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Future<Writer<ParameterType.LogType,Array<Output>>>) -> Future<Writer<ParameterType.LogType,Array<Output>>> {
        return flatMapT { (value) -> Future<Writer<ParameterType.LogType,Array<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Future<Writer<ParameterType.LogType,Optional<Output>>>) -> Future<Writer<ParameterType.LogType,Optional<Output>>> {
        return flatMapT { (value) -> Future<Writer<ParameterType.LogType,Optional<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Future<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Future<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Future<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Future<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>>) -> Future<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Future<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Optional<Array<Array<Output>>>) -> Optional<Array<Array<Output>>> {
        return flatMapT { (value) -> Optional<Array<Array<Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Optional<Array<Optional<Output>>>) -> Optional<Array<Optional<Output>>> {
        return flatMapT { (value) -> Optional<Array<Optional<Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Output>>>) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Optional<Optional<Array<Output>>>) -> Optional<Optional<Array<Output>>> {
        return flatMapT { (value) -> Optional<Optional<Array<Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Optional<Optional<Optional<Output>>>) -> Optional<Optional<Optional<Output>>> {
        return flatMapT { (value) -> Optional<Optional<Optional<Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Output>>>) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Array<Output>>>) -> Optional<Result<ParameterType.ErrorType,Array<Output>>> {
        return flatMapT { (value) -> Optional<Result<ParameterType.ErrorType,Array<Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Optional<Output>>>) -> Optional<Result<ParameterType.ErrorType,Optional<Output>>> {
        return flatMapT { (value) -> Optional<Result<ParameterType.ErrorType,Optional<Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>>) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Optional<Writer<ParameterType.LogType,Array<Output>>>) -> Optional<Writer<ParameterType.LogType,Array<Output>>> {
        return flatMapT { (value) -> Optional<Writer<ParameterType.LogType,Array<Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Optional<Writer<ParameterType.LogType,Optional<Output>>>) -> Optional<Writer<ParameterType.LogType,Optional<Output>>> {
        return flatMapT { (value) -> Optional<Writer<ParameterType.LogType,Optional<Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>>) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Result<ErrorType,Array<Array<Output>>>) -> Result<ErrorType,Array<Array<Output>>> {
        return flatMapT { (value) -> Result<ErrorType,Array<Array<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Result<ErrorType,Array<Optional<Output>>>) -> Result<ErrorType,Array<Optional<Output>>> {
        return flatMapT { (value) -> Result<ErrorType,Array<Optional<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Result<ErrorType,Array<Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Result<ErrorType,Array<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Result<ErrorType,Array<Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Result<ErrorType,Array<Writer<ParameterType.ParameterType.LogType,Output>>>) -> Result<ErrorType,Array<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Result<ErrorType,Array<Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Result<ErrorType,Optional<Array<Output>>>) -> Result<ErrorType,Optional<Array<Output>>> {
        return flatMapT { (value) -> Result<ErrorType,Optional<Array<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Result<ErrorType,Optional<Optional<Output>>>) -> Result<ErrorType,Optional<Optional<Output>>> {
        return flatMapT { (value) -> Result<ErrorType,Optional<Optional<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Result<ErrorType,Optional<Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Result<ErrorType,Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Result<ErrorType,Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Result<ErrorType,Optional<Writer<ParameterType.ParameterType.LogType,Output>>>) -> Result<ErrorType,Optional<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Result<ErrorType,Optional<Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Result<ErrorType,Result<ParameterType.ErrorType,Array<Output>>>) -> Result<ErrorType,Result<ParameterType.ErrorType,Array<Output>>> {
        return flatMapT { (value) -> Result<ErrorType,Result<ParameterType.ErrorType,Array<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Result<ErrorType,Result<ParameterType.ErrorType,Optional<Output>>>) -> Result<ErrorType,Result<ParameterType.ErrorType,Optional<Output>>> {
        return flatMapT { (value) -> Result<ErrorType,Result<ParameterType.ErrorType,Optional<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Result<ErrorType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Result<ErrorType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Result<ErrorType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Result<ErrorType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>>) -> Result<ErrorType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Result<ErrorType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Result<ErrorType,Writer<ParameterType.LogType,Array<Output>>>) -> Result<ErrorType,Writer<ParameterType.LogType,Array<Output>>> {
        return flatMapT { (value) -> Result<ErrorType,Writer<ParameterType.LogType,Array<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Result<ErrorType,Writer<ParameterType.LogType,Optional<Output>>>) -> Result<ErrorType,Writer<ParameterType.LogType,Optional<Output>>> {
        return flatMapT { (value) -> Result<ErrorType,Writer<ParameterType.LogType,Optional<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Result<ErrorType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Result<ErrorType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Result<ErrorType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Result<ErrorType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>>) -> Result<ErrorType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Result<ErrorType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Array<Array<Output>>>) -> State<StateParameterType,Array<Array<Output>>> {
        return flatMapT { (value) -> State<StateParameterType,Array<Array<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Array<Optional<Output>>>) -> State<StateParameterType,Array<Optional<Output>>> {
        return flatMapT { (value) -> State<StateParameterType,Array<Optional<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Output>>>) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Output>>>) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Optional<Array<Output>>>) -> State<StateParameterType,Optional<Array<Output>>> {
        return flatMapT { (value) -> State<StateParameterType,Optional<Array<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Optional<Optional<Output>>>) -> State<StateParameterType,Optional<Optional<Output>>> {
        return flatMapT { (value) -> State<StateParameterType,Optional<Optional<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Output>>>) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Output>>>) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Output>>>) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Output>>> {
        return flatMapT { (value) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Output>>>) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Output>>> {
        return flatMapT { (value) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>>) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>>) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Output>>>) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Output>>> {
        return flatMapT { (value) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Output>>>) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Output>>> {
        return flatMapT { (value) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>>) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>>) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Writer<LogType,Array<Array<Output>>>) -> Writer<LogType,Array<Array<Output>>> {
        return flatMapT { (value) -> Writer<LogType,Array<Array<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Writer<LogType,Array<Optional<Output>>>) -> Writer<LogType,Array<Optional<Output>>> {
        return flatMapT { (value) -> Writer<LogType,Array<Optional<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Writer<LogType,Array<Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Writer<LogType,Array<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Writer<LogType,Array<Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Writer<LogType,Array<Writer<ParameterType.ParameterType.LogType,Output>>>) -> Writer<LogType,Array<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Writer<LogType,Array<Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Writer<LogType,Optional<Array<Output>>>) -> Writer<LogType,Optional<Array<Output>>> {
        return flatMapT { (value) -> Writer<LogType,Optional<Array<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Writer<LogType,Optional<Optional<Output>>>) -> Writer<LogType,Optional<Optional<Output>>> {
        return flatMapT { (value) -> Writer<LogType,Optional<Optional<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Writer<LogType,Optional<Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Writer<LogType,Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Writer<LogType,Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Writer<LogType,Optional<Writer<ParameterType.ParameterType.LogType,Output>>>) -> Writer<LogType,Optional<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Writer<LogType,Optional<Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Writer<LogType,Result<ParameterType.ErrorType,Array<Output>>>) -> Writer<LogType,Result<ParameterType.ErrorType,Array<Output>>> {
        return flatMapT { (value) -> Writer<LogType,Result<ParameterType.ErrorType,Array<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Writer<LogType,Result<ParameterType.ErrorType,Optional<Output>>>) -> Writer<LogType,Result<ParameterType.ErrorType,Optional<Output>>> {
        return flatMapT { (value) -> Writer<LogType,Result<ParameterType.ErrorType,Optional<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Writer<LogType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Writer<LogType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Writer<LogType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Writer<LogType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>>) -> Writer<LogType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Writer<LogType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Writer<LogType,Writer<ParameterType.LogType,Array<Output>>>) -> Writer<LogType,Writer<ParameterType.LogType,Array<Output>>> {
        return flatMapT { (value) -> Writer<LogType,Writer<ParameterType.LogType,Array<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Writer<LogType,Writer<ParameterType.LogType,Optional<Output>>>) -> Writer<LogType,Writer<ParameterType.LogType,Optional<Output>>> {
        return flatMapT { (value) -> Writer<LogType,Writer<ParameterType.LogType,Optional<Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Writer<LogType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Writer<LogType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return flatMapT { (value) -> Writer<LogType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Writer<LogType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>>) -> Writer<LogType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return flatMapT { (value) -> Writer<LogType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
        }
    }
}

