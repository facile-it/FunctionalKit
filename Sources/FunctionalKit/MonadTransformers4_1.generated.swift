// Generated using Sourcery 0.10.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Array<Array<Array<Output>>>>) -> Array<Array<Array<Array<Output>>>> {
        return flatMapTT { (value) -> Array<Array<Array<Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Array<Array<Optional<Output>>>>) -> Array<Array<Array<Optional<Output>>>> {
        return flatMapTT { (value) -> Array<Array<Array<Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Array<Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Array<Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Array<Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Array<Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Array<Optional<Array<Output>>>>) -> Array<Array<Optional<Array<Output>>>> {
        return flatMapTT { (value) -> Array<Array<Optional<Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Array<Optional<Optional<Output>>>>) -> Array<Array<Optional<Optional<Output>>>> {
        return flatMapTT { (value) -> Array<Array<Optional<Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Array<Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Array<Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Array<Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Array<Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Array<Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return flatMapTT { (value) -> Array<Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Array<Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return flatMapTT { (value) -> Array<Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Array<Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Array<Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Array<Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Array<Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Array<Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return flatMapTT { (value) -> Array<Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Array<Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return flatMapTT { (value) -> Array<Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Array<Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Array<Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Array<Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Array<Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Optional<Array<Array<Output>>>>) -> Array<Optional<Array<Array<Output>>>> {
        return flatMapTT { (value) -> Array<Optional<Array<Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Optional<Array<Optional<Output>>>>) -> Array<Optional<Array<Optional<Output>>>> {
        return flatMapTT { (value) -> Array<Optional<Array<Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Array<Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Array<Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Array<Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Array<Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Optional<Optional<Array<Output>>>>) -> Array<Optional<Optional<Array<Output>>>> {
        return flatMapTT { (value) -> Array<Optional<Optional<Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Optional<Optional<Optional<Output>>>>) -> Array<Optional<Optional<Optional<Output>>>> {
        return flatMapTT { (value) -> Array<Optional<Optional<Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Array<Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Array<Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Array<Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Array<Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Array<Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return flatMapTT { (value) -> Array<Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Array<Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return flatMapTT { (value) -> Array<Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Array<Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Array<Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Array<Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Array<Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Array<Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return flatMapTT { (value) -> Array<Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Array<Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return flatMapTT { (value) -> Array<Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Array<Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Array<Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Array<Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Array<Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Result<ParameterType.ErrorType,Array<Array<Output>>>>) -> Array<Result<ParameterType.ErrorType,Array<Array<Output>>>> {
        return flatMapTT { (value) -> Array<Result<ParameterType.ErrorType,Array<Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Result<ParameterType.ErrorType,Array<Optional<Output>>>>) -> Array<Result<ParameterType.ErrorType,Array<Optional<Output>>>> {
        return flatMapTT { (value) -> Array<Result<ParameterType.ErrorType,Array<Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Array<Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Array<Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Array<Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Array<Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Result<ParameterType.ErrorType,Optional<Array<Output>>>>) -> Array<Result<ParameterType.ErrorType,Optional<Array<Output>>>> {
        return flatMapTT { (value) -> Array<Result<ParameterType.ErrorType,Optional<Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Result<ParameterType.ErrorType,Optional<Optional<Output>>>>) -> Array<Result<ParameterType.ErrorType,Optional<Optional<Output>>>> {
        return flatMapTT { (value) -> Array<Result<ParameterType.ErrorType,Optional<Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Array<Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Array<Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Array<Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Array<Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Array<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return flatMapTT { (value) -> Array<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Array<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return flatMapTT { (value) -> Array<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Array<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Array<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Array<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Array<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Array<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return flatMapTT { (value) -> Array<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Array<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return flatMapTT { (value) -> Array<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Array<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Array<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Array<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Array<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Writer<ParameterType.LogType,Array<Array<Output>>>>) -> Array<Writer<ParameterType.LogType,Array<Array<Output>>>> {
        return flatMapTT { (value) -> Array<Writer<ParameterType.LogType,Array<Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Writer<ParameterType.LogType,Array<Optional<Output>>>>) -> Array<Writer<ParameterType.LogType,Array<Optional<Output>>>> {
        return flatMapTT { (value) -> Array<Writer<ParameterType.LogType,Array<Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Array<Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Array<Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Array<Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Array<Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Writer<ParameterType.LogType,Optional<Array<Output>>>>) -> Array<Writer<ParameterType.LogType,Optional<Array<Output>>>> {
        return flatMapTT { (value) -> Array<Writer<ParameterType.LogType,Optional<Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Writer<ParameterType.LogType,Optional<Optional<Output>>>>) -> Array<Writer<ParameterType.LogType,Optional<Optional<Output>>>> {
        return flatMapTT { (value) -> Array<Writer<ParameterType.LogType,Optional<Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Array<Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Array<Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Array<Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Array<Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Array<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return flatMapTT { (value) -> Array<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Array<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return flatMapTT { (value) -> Array<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Array<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Array<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Array<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Array<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Array<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return flatMapTT { (value) -> Array<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Array<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return flatMapTT { (value) -> Array<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Array<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> Array<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Array<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Array<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> Array<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

