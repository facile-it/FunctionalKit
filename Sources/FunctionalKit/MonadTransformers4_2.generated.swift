// Generated using Sourcery 0.10.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Array<Array<Array<Output>>>>) -> Effect<Array<Array<Array<Output>>>> {
        return flatMapTT { (value) -> Effect<Array<Array<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Array<Array<Optional<Output>>>>) -> Effect<Array<Array<Optional<Output>>>> {
        return flatMapTT { (value) -> Effect<Array<Array<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Effect<Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Effect<Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Effect<Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Effect<Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Array<Optional<Array<Output>>>>) -> Effect<Array<Optional<Array<Output>>>> {
        return flatMapTT { (value) -> Effect<Array<Optional<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Array<Optional<Optional<Output>>>>) -> Effect<Array<Optional<Optional<Output>>>> {
        return flatMapTT { (value) -> Effect<Array<Optional<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Effect<Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Effect<Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Effect<Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Effect<Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Effect<Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return flatMapTT { (value) -> Effect<Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Effect<Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return flatMapTT { (value) -> Effect<Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Effect<Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Effect<Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Effect<Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Effect<Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Effect<Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return flatMapTT { (value) -> Effect<Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Effect<Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return flatMapTT { (value) -> Effect<Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Effect<Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Effect<Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Effect<Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Effect<Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Optional<Array<Array<Output>>>>) -> Effect<Optional<Array<Array<Output>>>> {
        return flatMapTT { (value) -> Effect<Optional<Array<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Optional<Array<Optional<Output>>>>) -> Effect<Optional<Array<Optional<Output>>>> {
        return flatMapTT { (value) -> Effect<Optional<Array<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Effect<Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Effect<Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Effect<Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Effect<Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Optional<Optional<Array<Output>>>>) -> Effect<Optional<Optional<Array<Output>>>> {
        return flatMapTT { (value) -> Effect<Optional<Optional<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Optional<Optional<Optional<Output>>>>) -> Effect<Optional<Optional<Optional<Output>>>> {
        return flatMapTT { (value) -> Effect<Optional<Optional<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Effect<Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Effect<Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Effect<Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Effect<Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Effect<Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return flatMapTT { (value) -> Effect<Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Effect<Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return flatMapTT { (value) -> Effect<Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Effect<Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Effect<Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Effect<Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Effect<Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Effect<Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return flatMapTT { (value) -> Effect<Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Effect<Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return flatMapTT { (value) -> Effect<Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Effect<Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Effect<Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Effect<Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Effect<Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Result<ParameterType.ErrorType,Array<Array<Output>>>>) -> Effect<Result<ParameterType.ErrorType,Array<Array<Output>>>> {
        return flatMapTT { (value) -> Effect<Result<ParameterType.ErrorType,Array<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Result<ParameterType.ErrorType,Array<Optional<Output>>>>) -> Effect<Result<ParameterType.ErrorType,Array<Optional<Output>>>> {
        return flatMapTT { (value) -> Effect<Result<ParameterType.ErrorType,Array<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Effect<Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Effect<Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Effect<Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Effect<Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Result<ParameterType.ErrorType,Optional<Array<Output>>>>) -> Effect<Result<ParameterType.ErrorType,Optional<Array<Output>>>> {
        return flatMapTT { (value) -> Effect<Result<ParameterType.ErrorType,Optional<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Result<ParameterType.ErrorType,Optional<Optional<Output>>>>) -> Effect<Result<ParameterType.ErrorType,Optional<Optional<Output>>>> {
        return flatMapTT { (value) -> Effect<Result<ParameterType.ErrorType,Optional<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Effect<Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Effect<Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Effect<Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Effect<Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Effect<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return flatMapTT { (value) -> Effect<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Effect<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return flatMapTT { (value) -> Effect<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Effect<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Effect<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Effect<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Effect<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Effect<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return flatMapTT { (value) -> Effect<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Effect<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return flatMapTT { (value) -> Effect<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Effect<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Effect<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Effect<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Effect<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Writer<ParameterType.LogType,Array<Array<Output>>>>) -> Effect<Writer<ParameterType.LogType,Array<Array<Output>>>> {
        return flatMapTT { (value) -> Effect<Writer<ParameterType.LogType,Array<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Writer<ParameterType.LogType,Array<Optional<Output>>>>) -> Effect<Writer<ParameterType.LogType,Array<Optional<Output>>>> {
        return flatMapTT { (value) -> Effect<Writer<ParameterType.LogType,Array<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Effect<Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Effect<Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Effect<Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Effect<Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Writer<ParameterType.LogType,Optional<Array<Output>>>>) -> Effect<Writer<ParameterType.LogType,Optional<Array<Output>>>> {
        return flatMapTT { (value) -> Effect<Writer<ParameterType.LogType,Optional<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Writer<ParameterType.LogType,Optional<Optional<Output>>>>) -> Effect<Writer<ParameterType.LogType,Optional<Optional<Output>>>> {
        return flatMapTT { (value) -> Effect<Writer<ParameterType.LogType,Optional<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Effect<Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Effect<Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Effect<Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Effect<Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Effect<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return flatMapTT { (value) -> Effect<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Effect<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return flatMapTT { (value) -> Effect<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Effect<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Effect<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Effect<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Effect<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Effect<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return flatMapTT { (value) -> Effect<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Effect<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return flatMapTT { (value) -> Effect<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Effect<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Effect<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Effect<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Effect<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Effect<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

