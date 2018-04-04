// Generated using Sourcery 0.10.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Array<Array<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Array<Effect<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Array<Future<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Array<Optional<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Effect<Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Effect<Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Effect<Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Effect<Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Future<Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Future<Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Future<Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Future<Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Optional<Array<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Optional<Effect<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Optional<Future<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Optional<Optional<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Array<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Array<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Array<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Array<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Effect<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Effect<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Effect<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Effect<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Future<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Future<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Future<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Future<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Optional<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Optional<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Optional<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Optional<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Array<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Array<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Array<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Array<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Effect<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Effect<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Effect<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Effect<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Future<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Future<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Future<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Future<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Optional<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Optional<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Optional<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Optional<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Array<Array<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Array<Effect<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Array<Future<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Array<Optional<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Effect<Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Effect<Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Effect<Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Effect<Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Future<Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Future<Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Future<Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Future<Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Optional<Array<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Optional<Effect<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Optional<Future<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Optional<Optional<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Array<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Array<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Array<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Array<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Effect<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Effect<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Effect<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Effect<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Future<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Future<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Future<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Future<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Optional<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Optional<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Optional<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Optional<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Effect<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Effect<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Effect<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Effect<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Future<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Future<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Future<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Future<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Array<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Array<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Array<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Array<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Effect<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Effect<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Effect<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Effect<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Future<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Future<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Future<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Future<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Optional<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Optional<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Optional<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Optional<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Effect<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Effect<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Effect<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Effect<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Future<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Future<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Future<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Future<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension StateType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

