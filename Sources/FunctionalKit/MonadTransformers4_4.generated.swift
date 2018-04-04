// Generated using Sourcery 0.10.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Array<Array<Array<Output>>>>) -> Optional<Array<Array<Array<Output>>>> {
        return flatMapTT { (value) -> Optional<Array<Array<Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Array<Array<Optional<Output>>>>) -> Optional<Array<Array<Optional<Output>>>> {
        return flatMapTT { (value) -> Optional<Array<Array<Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Optional<Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Optional<Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Optional<Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Optional<Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Array<Optional<Array<Output>>>>) -> Optional<Array<Optional<Array<Output>>>> {
        return flatMapTT { (value) -> Optional<Array<Optional<Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Array<Optional<Optional<Output>>>>) -> Optional<Array<Optional<Optional<Output>>>> {
        return flatMapTT { (value) -> Optional<Array<Optional<Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Optional<Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Optional<Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Optional<Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Optional<Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return flatMapTT { (value) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return flatMapTT { (value) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return flatMapTT { (value) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return flatMapTT { (value) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Optional<Array<Array<Output>>>>) -> Optional<Optional<Array<Array<Output>>>> {
        return flatMapTT { (value) -> Optional<Optional<Array<Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Optional<Array<Optional<Output>>>>) -> Optional<Optional<Array<Optional<Output>>>> {
        return flatMapTT { (value) -> Optional<Optional<Array<Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Optional<Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Optional<Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Optional<Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Optional<Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Optional<Optional<Array<Output>>>>) -> Optional<Optional<Optional<Array<Output>>>> {
        return flatMapTT { (value) -> Optional<Optional<Optional<Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Optional<Optional<Optional<Output>>>>) -> Optional<Optional<Optional<Optional<Output>>>> {
        return flatMapTT { (value) -> Optional<Optional<Optional<Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Optional<Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Optional<Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Optional<Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Optional<Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return flatMapTT { (value) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return flatMapTT { (value) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return flatMapTT { (value) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return flatMapTT { (value) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Array<Array<Output>>>>) -> Optional<Result<ParameterType.ErrorType,Array<Array<Output>>>> {
        return flatMapTT { (value) -> Optional<Result<ParameterType.ErrorType,Array<Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Array<Optional<Output>>>>) -> Optional<Result<ParameterType.ErrorType,Array<Optional<Output>>>> {
        return flatMapTT { (value) -> Optional<Result<ParameterType.ErrorType,Array<Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Optional<Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Optional<Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Optional<Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Optional<Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Optional<Array<Output>>>>) -> Optional<Result<ParameterType.ErrorType,Optional<Array<Output>>>> {
        return flatMapTT { (value) -> Optional<Result<ParameterType.ErrorType,Optional<Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Optional<Optional<Output>>>>) -> Optional<Result<ParameterType.ErrorType,Optional<Optional<Output>>>> {
        return flatMapTT { (value) -> Optional<Result<ParameterType.ErrorType,Optional<Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Optional<Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Optional<Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Optional<Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Optional<Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return flatMapTT { (value) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return flatMapTT { (value) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return flatMapTT { (value) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return flatMapTT { (value) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Writer<ParameterType.LogType,Array<Array<Output>>>>) -> Optional<Writer<ParameterType.LogType,Array<Array<Output>>>> {
        return flatMapTT { (value) -> Optional<Writer<ParameterType.LogType,Array<Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Writer<ParameterType.LogType,Array<Optional<Output>>>>) -> Optional<Writer<ParameterType.LogType,Array<Optional<Output>>>> {
        return flatMapTT { (value) -> Optional<Writer<ParameterType.LogType,Array<Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Optional<Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Optional<Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Optional<Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Optional<Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Writer<ParameterType.LogType,Optional<Array<Output>>>>) -> Optional<Writer<ParameterType.LogType,Optional<Array<Output>>>> {
        return flatMapTT { (value) -> Optional<Writer<ParameterType.LogType,Optional<Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Writer<ParameterType.LogType,Optional<Optional<Output>>>>) -> Optional<Writer<ParameterType.LogType,Optional<Optional<Output>>>> {
        return flatMapTT { (value) -> Optional<Writer<ParameterType.LogType,Optional<Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Optional<Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Optional<Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Optional<Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Optional<Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return flatMapTT { (value) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return flatMapTT { (value) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return flatMapTT { (value) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return flatMapTT { (value) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

