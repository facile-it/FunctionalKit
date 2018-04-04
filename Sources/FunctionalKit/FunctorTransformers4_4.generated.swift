// Generated using Sourcery 0.10.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Array<Array<Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Array<Effect<Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Array<Future<Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Array<Optional<Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Effect<Array<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Effect<Effect<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Effect<Future<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Effect<Optional<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Future<Array<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Future<Effect<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Future<Future<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Future<Optional<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Optional<Array<Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Optional<Effect<Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Optional<Future<Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Optional<Optional<Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Array<Array<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Array<Effect<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Array<Future<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Array<Optional<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Effect<Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Effect<Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Effect<Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Effect<Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Future<Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Future<Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Future<Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Future<Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Optional<Array<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Optional<Effect<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Optional<Future<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Optional<Optional<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Array<Array<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Array<Effect<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Array<Future<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Array<Optional<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Effect<Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Effect<Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Effect<Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Effect<Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Future<Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Future<Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Future<Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Future<Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Optional<Array<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Optional<Effect<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Optional<Future<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Optional<Optional<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Array<Array<Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Array<Effect<Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Array<Future<Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Array<Optional<Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Effect<Array<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Effect<Effect<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Effect<Future<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Effect<Optional<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Future<Array<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Future<Effect<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Future<Future<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Future<Optional<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Optional<Array<Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Optional<Effect<Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Optional<Future<Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Optional<Optional<Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.fmap { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return fmap { $0.fmap { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.fmap { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Array<Array<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Array<Effect<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Array<Future<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Array<Optional<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Effect<Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Effect<Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Effect<Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Effect<Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Future<Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Future<Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Future<Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Future<Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Optional<Array<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Optional<Effect<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Optional<Future<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Optional<Optional<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Array<Array<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Array<Effect<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Array<Future<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Array<Optional<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Effect<Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Effect<Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Effect<Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Effect<Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Future<Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Future<Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Future<Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Future<Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Optional<Array<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Optional<Effect<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Optional<Future<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Optional<Optional<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Array<Array<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Array<Effect<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Array<Future<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Array<Optional<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Effect<Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Effect<Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Effect<Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Effect<Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Future<Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Future<Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Future<Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Future<Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Optional<Array<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Optional<Effect<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Optional<Future<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Optional<Optional<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Array<Array<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Array<Effect<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Array<Future<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Array<Optional<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Array<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Array<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Effect<Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Effect<Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Effect<Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Effect<Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Effect<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Effect<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Effect<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: EffectType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Effect<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Future<Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Future<Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Future<Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Future<Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Future<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Future<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Future<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: FutureType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Future<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Optional<Array<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Optional<Effect<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Optional<Future<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Optional<Optional<Output>>>> {
        return fmap { $0.map { $0.fmap { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Optional<Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Optional<State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.fmap { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: StateType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: EffectType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Effect<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: FutureType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Future<Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return fmap { $0.map { $0.map { $0.fmap(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ReaderType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Reader<ParameterType.ParameterType.ParameterType.EnvironmentType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: StateType {
    public func mapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,State<ParameterType.ParameterType.ParameterType.StateParameterType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func mapTTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return fmap { $0.map { $0.map { $0.map(transform) } } }
    }
}

