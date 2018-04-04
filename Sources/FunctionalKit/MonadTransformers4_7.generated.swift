// Generated using Sourcery 0.10.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Array<Array<Array<Output>>>>) -> State<StateParameterType,Array<Array<Array<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Array<Array<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Array<Array<Optional<Output>>>>) -> State<StateParameterType,Array<Array<Optional<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Array<Array<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> State<StateParameterType,Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> State<StateParameterType,Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Array<Optional<Array<Output>>>>) -> State<StateParameterType,Array<Optional<Array<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Array<Optional<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Array<Optional<Optional<Output>>>>) -> State<StateParameterType,Array<Optional<Optional<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Array<Optional<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> State<StateParameterType,Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> State<StateParameterType,Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Optional<Array<Array<Output>>>>) -> State<StateParameterType,Optional<Array<Array<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Optional<Array<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Optional<Array<Optional<Output>>>>) -> State<StateParameterType,Optional<Array<Optional<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Optional<Array<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> State<StateParameterType,Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> State<StateParameterType,Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Optional<Optional<Array<Output>>>>) -> State<StateParameterType,Optional<Optional<Array<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Optional<Optional<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Optional<Optional<Optional<Output>>>>) -> State<StateParameterType,Optional<Optional<Optional<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Optional<Optional<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> State<StateParameterType,Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> State<StateParameterType,Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Array<Output>>>>) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Array<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Optional<Output>>>>) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Optional<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Array<Output>>>>) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Array<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Optional<Output>>>>) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Optional<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Array<Output>>>>) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Array<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Optional<Output>>>>) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Optional<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Array<Output>>>>) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Array<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Optional<Output>>>>) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Optional<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return flatMapTT { (value) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> in
            value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.traverse(f.identity) }.mapTT { $0.joined }
        }
    }
}

