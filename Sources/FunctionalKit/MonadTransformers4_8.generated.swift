// Generated using Sourcery 0.10.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Array<Array<Array<Output>>>>) -> Writer<LogType,Array<Array<Array<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Array<Array<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Array<Array<Optional<Output>>>>) -> Writer<LogType,Array<Array<Optional<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Array<Array<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Writer<LogType,Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Writer<LogType,Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Array<Optional<Array<Output>>>>) -> Writer<LogType,Array<Optional<Array<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Array<Optional<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Array<Optional<Optional<Output>>>>) -> Writer<LogType,Array<Optional<Optional<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Array<Optional<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Writer<LogType,Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Writer<LogType,Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Writer<LogType,Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Writer<LogType,Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Writer<LogType,Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Writer<LogType,Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Writer<LogType,Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Writer<LogType,Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Writer<LogType,Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Writer<LogType,Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Optional<Array<Array<Output>>>>) -> Writer<LogType,Optional<Array<Array<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Optional<Array<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Optional<Array<Optional<Output>>>>) -> Writer<LogType,Optional<Array<Optional<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Optional<Array<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Writer<LogType,Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Writer<LogType,Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Optional<Optional<Array<Output>>>>) -> Writer<LogType,Optional<Optional<Array<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Optional<Optional<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Optional<Optional<Optional<Output>>>>) -> Writer<LogType,Optional<Optional<Optional<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Optional<Optional<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Writer<LogType,Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Writer<LogType,Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Writer<LogType,Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Writer<LogType,Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Writer<LogType,Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Writer<LogType,Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Writer<LogType,Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Writer<LogType,Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Writer<LogType,Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Writer<LogType,Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Result<ParameterType.ErrorType,Array<Array<Output>>>>) -> Writer<LogType,Result<ParameterType.ErrorType,Array<Array<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Result<ParameterType.ErrorType,Array<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Result<ParameterType.ErrorType,Array<Optional<Output>>>>) -> Writer<LogType,Result<ParameterType.ErrorType,Array<Optional<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Result<ParameterType.ErrorType,Array<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Writer<LogType,Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Writer<LogType,Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Result<ParameterType.ErrorType,Optional<Array<Output>>>>) -> Writer<LogType,Result<ParameterType.ErrorType,Optional<Array<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Result<ParameterType.ErrorType,Optional<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Result<ParameterType.ErrorType,Optional<Optional<Output>>>>) -> Writer<LogType,Result<ParameterType.ErrorType,Optional<Optional<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Result<ParameterType.ErrorType,Optional<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Writer<LogType,Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Writer<LogType,Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Writer<LogType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Writer<LogType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Writer<LogType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Writer<LogType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Writer<LogType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Writer<LogType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Writer<LogType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Writer<LogType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Writer<ParameterType.LogType,Array<Array<Output>>>>) -> Writer<LogType,Writer<ParameterType.LogType,Array<Array<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Writer<ParameterType.LogType,Array<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Writer<ParameterType.LogType,Array<Optional<Output>>>>) -> Writer<LogType,Writer<ParameterType.LogType,Array<Optional<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Writer<ParameterType.LogType,Array<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Writer<LogType,Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Writer<LogType,Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Writer<ParameterType.LogType,Optional<Array<Output>>>>) -> Writer<LogType,Writer<ParameterType.LogType,Optional<Array<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Writer<ParameterType.LogType,Optional<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Writer<ParameterType.LogType,Optional<Optional<Output>>>>) -> Writer<LogType,Writer<ParameterType.LogType,Optional<Optional<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Writer<ParameterType.LogType,Optional<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Writer<LogType,Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Writer<LogType,Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Writer<LogType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Writer<LogType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Writer<LogType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Writer<LogType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Writer<LogType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Writer<LogType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Writer<LogType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Writer<LogType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Writer<LogType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Writer<LogType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

