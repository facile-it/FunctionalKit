// Generated using Sourcery 0.10.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


public extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Array<Array<Output>>> {
        return fmap { $0.fmap { $0.fmap(transform) } }
    }
}

public extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Array<Effect<Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Array<Future<Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Array<Optional<Output>>> {
        return fmap { $0.fmap { $0.fmap(transform) } }
    }
}

public extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Array<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Array<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Array<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Array<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Effect<Array<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension ArrayType where ParameterType: EffectType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Effect<Effect<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: EffectType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Effect<Future<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Effect<Optional<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension ArrayType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Effect<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: EffectType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Effect<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: EffectType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Effect<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: EffectType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Effect<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Future<Array<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension ArrayType where ParameterType: FutureType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Future<Effect<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: FutureType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Future<Future<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Future<Optional<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension ArrayType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Future<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: FutureType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Future<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: FutureType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Future<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: FutureType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Future<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Optional<Array<Output>>> {
        return fmap { $0.fmap { $0.fmap(transform) } }
    }
}

public extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Optional<Effect<Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Optional<Future<Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Optional<Optional<Output>>> {
        return fmap { $0.fmap { $0.fmap(transform) } }
    }
}

public extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Optional<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Optional<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Optional<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Reader<ParameterType.EnvironmentType,Array<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension ArrayType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Reader<ParameterType.EnvironmentType,Effect<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Reader<ParameterType.EnvironmentType,Future<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Reader<ParameterType.EnvironmentType,Optional<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension ArrayType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: ReaderType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Result<ParameterType.ErrorType,Array<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Result<ParameterType.ErrorType,Effect<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Result<ParameterType.ErrorType,Future<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Result<ParameterType.ErrorType,Optional<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: ResultType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: StateType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<State<ParameterType.StateParameterType,Array<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension ArrayType where ParameterType: StateType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<State<ParameterType.StateParameterType,Effect<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: StateType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<State<ParameterType.StateParameterType,Future<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: StateType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<State<ParameterType.StateParameterType,Optional<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension ArrayType where ParameterType: StateType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: StateType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: StateType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: StateType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Writer<ParameterType.LogType,Array<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Writer<ParameterType.LogType,Effect<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Writer<ParameterType.LogType,Future<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Writer<ParameterType.LogType,Optional<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ArrayType where ParameterType: WriterType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Array<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Array<Array<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Array<Effect<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Array<Future<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Array<Optional<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Array<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Array<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Array<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Array<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Effect<Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension EffectType where ParameterType: EffectType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Effect<Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: EffectType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Effect<Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Effect<Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension EffectType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Effect<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: EffectType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Effect<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: EffectType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Effect<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: EffectType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Effect<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Future<Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension EffectType where ParameterType: FutureType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Future<Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: FutureType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Future<Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Future<Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension EffectType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Future<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: FutureType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Future<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: FutureType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Future<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: FutureType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Future<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Optional<Array<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Optional<Effect<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Optional<Future<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Optional<Optional<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Optional<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Optional<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Optional<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Reader<ParameterType.EnvironmentType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension EffectType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Reader<ParameterType.EnvironmentType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Reader<ParameterType.EnvironmentType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Reader<ParameterType.EnvironmentType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension EffectType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: ReaderType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Result<ParameterType.ErrorType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Result<ParameterType.ErrorType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Result<ParameterType.ErrorType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Result<ParameterType.ErrorType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: ResultType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: StateType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<State<ParameterType.StateParameterType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension EffectType where ParameterType: StateType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<State<ParameterType.StateParameterType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: StateType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<State<ParameterType.StateParameterType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: StateType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<State<ParameterType.StateParameterType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension EffectType where ParameterType: StateType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: StateType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: StateType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: StateType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Writer<ParameterType.LogType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Writer<ParameterType.LogType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Writer<ParameterType.LogType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Writer<ParameterType.LogType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension EffectType where ParameterType: WriterType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Effect<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Array<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Effect<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Future<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Optional<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Array<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: EffectType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Effect<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: FutureType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Future<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Array<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Effect<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Future<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Optional<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Optional<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: ResultType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension FutureType where ParameterType: StateType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: StateType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: StateType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: StateType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: StateType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: StateType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension FutureType where ParameterType: WriterType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Array<Output>>> {
        return fmap { $0.fmap { $0.fmap(transform) } }
    }
}

public extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Effect<Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Future<Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Optional<Output>>> {
        return fmap { $0.fmap { $0.fmap(transform) } }
    }
}

public extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Array<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Array<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Effect<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Future<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Optional<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: EffectType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Effect<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Array<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Effect<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Future<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Optional<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: FutureType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Future<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Array<Output>>> {
        return fmap { $0.fmap { $0.fmap(transform) } }
    }
}

public extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Effect<Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Future<Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Optional<Output>>> {
        return fmap { $0.fmap { $0.fmap(transform) } }
    }
}

public extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Optional<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return fmap { $0.fmap { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Array<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Effect<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Future<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Optional<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Array<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Effect<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Future<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Optional<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Array<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Effect<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Future<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Optional<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: StateType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Array<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Effect<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Future<Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Optional<Output>>> {
        return fmap { $0.map { $0.fmap(transform) } }
    }
}

public extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension OptionalType where ParameterType: WriterType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return fmap { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Array<Array<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Array<Effect<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Array<Future<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Array<Optional<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Array<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Array<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Array<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Array<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Effect<Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Effect<Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Effect<Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Effect<Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Effect<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Effect<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Effect<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Effect<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Future<Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Future<Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Future<Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Future<Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Future<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Future<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Future<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Future<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Optional<Array<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Optional<Effect<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Optional<Future<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Optional<Optional<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Optional<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Optional<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Optional<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Array<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Effect<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Future<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Optional<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: EffectType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: FutureType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Array<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Effect<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Future<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Optional<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: ResultType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ResultType where ParameterType: StateType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: StateType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: StateType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: StateType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: StateType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: StateType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension ResultType where ParameterType: WriterType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Array<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Effect<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Future<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Optional<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension StateType where ParameterType: EffectType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: EffectType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: EffectType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: EffectType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: EffectType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension StateType where ParameterType: FutureType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: FutureType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: FutureType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: FutureType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: FutureType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Array<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Effect<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Future<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Optional<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension StateType where ParameterType: ResultType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: ResultType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: ResultType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: ResultType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: ResultType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: StateType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension StateType where ParameterType: StateType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: StateType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: StateType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension StateType where ParameterType: StateType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: StateType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: StateType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: StateType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension StateType where ParameterType: WriterType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: WriterType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: WriterType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: WriterType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension StateType where ParameterType: WriterType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Array<Array<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Array<Effect<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Array<Future<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Array<Optional<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Array<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Array<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Array<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Array<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Effect<Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension WriterType where ParameterType: EffectType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Effect<Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: EffectType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Effect<Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Effect<Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension WriterType where ParameterType: EffectType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Effect<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: EffectType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Effect<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: EffectType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Effect<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: EffectType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Effect<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Future<Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension WriterType where ParameterType: FutureType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Future<Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: FutureType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Future<Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Future<Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension WriterType where ParameterType: FutureType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Future<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: FutureType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Future<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: FutureType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Future<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: FutureType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Future<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Optional<Array<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Optional<Effect<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Optional<Future<Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Optional<Optional<Output>>> {
        return map { $0.fmap { $0.fmap(transform) } }
    }
}

public extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Optional<Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Optional<State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Optional<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.fmap { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Reader<ParameterType.EnvironmentType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension WriterType where ParameterType: ReaderType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Reader<ParameterType.EnvironmentType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: ReaderType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Reader<ParameterType.EnvironmentType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Reader<ParameterType.EnvironmentType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension WriterType where ParameterType: ReaderType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Reader<ParameterType.EnvironmentType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: ReaderType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Reader<ParameterType.EnvironmentType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Result<ParameterType.ErrorType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Result<ParameterType.ErrorType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Result<ParameterType.ErrorType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Result<ParameterType.ErrorType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Result<ParameterType.ErrorType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Result<ParameterType.ErrorType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: ResultType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: StateType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,State<ParameterType.StateParameterType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension WriterType where ParameterType: StateType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,State<ParameterType.StateParameterType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: StateType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,State<ParameterType.StateParameterType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: StateType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,State<ParameterType.StateParameterType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension WriterType where ParameterType: StateType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,State<ParameterType.StateParameterType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: StateType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: StateType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,State<ParameterType.StateParameterType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: StateType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Writer<ParameterType.LogType,Array<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: EffectType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Writer<ParameterType.LogType,Effect<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: FutureType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Writer<ParameterType.LogType,Future<Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Writer<ParameterType.LogType,Optional<Output>>> {
        return map { $0.map { $0.fmap(transform) } }
    }
}

public extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: ReaderType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Writer<ParameterType.LogType,Reader<ParameterType.ParameterType.EnvironmentType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: ResultType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: StateType {
    func mapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Writer<ParameterType.LogType,State<ParameterType.ParameterType.StateParameterType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

public extension WriterType where ParameterType: WriterType, ParameterType.ParameterType: WriterType {
    func mapTT <Output> (_ transform: (ParameterType.ParameterType.ParameterType) -> Output) -> Writer<LogType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return map { $0.map { $0.map(transform) } }
    }
}

