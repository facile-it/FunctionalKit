// Generated using Sourcery 0.10.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Array<Array<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Array<Effect<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Array<Future<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Array<Optional<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Effect<Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Effect<Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Effect<Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Effect<Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Future<Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Future<Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Future<Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Future<Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Optional<Array<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Optional<Effect<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Optional<Future<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Optional<Optional<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Array<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Array<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Array<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Array<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Effect<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Effect<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Effect<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Effect<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Future<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Future<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Future<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Future<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Optional<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Optional<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Optional<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Optional<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Array<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Array<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Array<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Array<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Effect<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Effect<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Effect<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Effect<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Future<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Future<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Future<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Future<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Optional<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Optional<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Optional<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Optional<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Array<Array<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Array<Effect<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Array<Future<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Array<Optional<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Effect<Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Effect<Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Effect<Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Effect<Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Future<Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Future<Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Future<Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Future<Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Optional<Array<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Optional<Effect<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Optional<Future<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Optional<Optional<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Array<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Array<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Array<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Array<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Effect<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Effect<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Effect<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Effect<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Future<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Future<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Future<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Future<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Optional<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Optional<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Optional<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Optional<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Array<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Array<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Array<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Array<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Effect<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Effect<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Effect<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Effect<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Future<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Future<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Future<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Future<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Optional<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Optional<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Optional<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Optional<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Array<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Array<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Array<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Array<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Effect<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Effect<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Effect<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Effect<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Future<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Future<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Future<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Future<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Optional<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Optional<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Optional<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Optional<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Array<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Array<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Array<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Array<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Effect<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Effect<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Effect<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Effect<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Future<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Future<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Future<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Future<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Optional<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Optional<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Optional<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Optional<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

