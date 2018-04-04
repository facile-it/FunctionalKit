// Generated using Sourcery 0.10.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Array<Array<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Array<Effect<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Array<Future<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Array<Optional<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Effect<Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Effect<Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Effect<Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Effect<Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Future<Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Future<Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Future<Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Future<Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Optional<Array<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Optional<Effect<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Optional<Future<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Optional<Optional<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Array<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Array<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Array<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Array<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Effect<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Effect<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Effect<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Effect<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Future<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Future<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Future<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Future<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Optional<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Optional<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Optional<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Optional<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Array<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Array<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Array<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Array<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Effect<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Effect<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Effect<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Effect<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Future<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Future<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Future<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Future<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Optional<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Optional<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Optional<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Optional<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Array<Array<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Array<Effect<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Array<Future<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Array<Optional<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Effect<Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Effect<Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Effect<Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Effect<Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Future<Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Future<Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Future<Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Future<Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Optional<Array<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Optional<Effect<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Optional<Future<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Optional<Optional<Output>>>> {
        return map { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Array<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Array<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Array<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Array<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Effect<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Effect<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Effect<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Effect<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Future<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Future<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Future<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Future<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Optional<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Optional<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Optional<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Optional<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Array<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Array<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Array<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Array<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Effect<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Effect<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Effect<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Effect<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Future<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Future<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Future<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Future<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Optional<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Optional<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Optional<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Optional<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Array<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Array<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Array<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Array<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Effect<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Effect<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Effect<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Effect<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Future<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Future<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Future<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Future<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Optional<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Optional<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Optional<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Optional<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Array<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Array<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Array<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Array<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Effect<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Effect<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Effect<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Effect<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Future<Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Future<Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Future<Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Future<Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Optional<Array<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Optional<Effect<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Optional<Future<Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Optional<Optional<Output>>>> {
        return map { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return map { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return map { $0.map { $0.map { $0.map(transform) } } }
    }
}

