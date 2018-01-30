// Generated using Sourcery 0.10.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


extension ArrayType where ParameterType: ArrayType {
    public func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Array<Array<Output>> {
        return fmap { $0.fmap(transform) }
    }
}

extension ArrayType where ParameterType: FutureType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Array<Future<Output>> {
        return fmap { $0.map(transform) }
    }
}

extension ArrayType where ParameterType: OptionalType {
    public func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Array<Optional<Output>> {
        return fmap { $0.fmap(transform) }
    }
}

extension ArrayType where ParameterType: ReaderType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Array<Reader<ParameterType.EnvironmentType,Output>> {
        return fmap { $0.map(transform) }
    }
}

extension ArrayType where ParameterType: ResultType {
    public func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Array<Result<ParameterType.ErrorType,Output>> {
        return fmap { $0.map(transform) }
    }
}

extension ArrayType where ParameterType: StateType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Array<State<ParameterType.StateParameterType,Output>> {
        return fmap { $0.map(transform) }
    }
}

extension ArrayType where ParameterType: WriterType {
    public func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Array<Writer<ParameterType.LogType,Output>> {
        return fmap { $0.map(transform) }
    }
}

extension FutureType where ParameterType: ArrayType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Future<Array<Output>> {
        return map { $0.fmap(transform) }
    }
}

extension FutureType where ParameterType: FutureType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Future<Future<Output>> {
        return map { $0.map(transform) }
    }
}

extension FutureType where ParameterType: OptionalType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Future<Optional<Output>> {
        return map { $0.fmap(transform) }
    }
}

extension FutureType where ParameterType: ReaderType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Output>> {
        return map { $0.map(transform) }
    }
}

extension FutureType where ParameterType: ResultType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Output>> {
        return map { $0.map(transform) }
    }
}

extension FutureType where ParameterType: StateType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Output>> {
        return map { $0.map(transform) }
    }
}

extension FutureType where ParameterType: WriterType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Output>> {
        return map { $0.map(transform) }
    }
}

extension OptionalType where ParameterType: ArrayType {
    public func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Optional<Array<Output>> {
        return fmap { $0.fmap(transform) }
    }
}

extension OptionalType where ParameterType: FutureType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Optional<Future<Output>> {
        return fmap { $0.map(transform) }
    }
}

extension OptionalType where ParameterType: OptionalType {
    public func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Optional<Optional<Output>> {
        return fmap { $0.fmap(transform) }
    }
}

extension OptionalType where ParameterType: ReaderType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Output>> {
        return fmap { $0.map(transform) }
    }
}

extension OptionalType where ParameterType: ResultType {
    public func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Output>> {
        return fmap { $0.map(transform) }
    }
}

extension OptionalType where ParameterType: StateType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Output>> {
        return fmap { $0.map(transform) }
    }
}

extension OptionalType where ParameterType: WriterType {
    public func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Output>> {
        return fmap { $0.map(transform) }
    }
}

extension ReaderType where ParameterType: ArrayType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Array<Output>> {
        return map { $0.fmap(transform) }
    }
}

extension ReaderType where ParameterType: FutureType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Future<Output>> {
        return map { $0.map(transform) }
    }
}

extension ReaderType where ParameterType: OptionalType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Optional<Output>> {
        return map { $0.fmap(transform) }
    }
}

extension ReaderType where ParameterType: ReaderType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Output>> {
        return map { $0.map(transform) }
    }
}

extension ReaderType where ParameterType: ResultType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Output>> {
        return map { $0.map(transform) }
    }
}

extension ReaderType where ParameterType: StateType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Output>> {
        return map { $0.map(transform) }
    }
}

extension ReaderType where ParameterType: WriterType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Output>> {
        return map { $0.map(transform) }
    }
}

extension ResultType where ParameterType: ArrayType {
    public func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Output>> {
        return map { $0.fmap(transform) }
    }
}

extension ResultType where ParameterType: FutureType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Output>> {
        return map { $0.map(transform) }
    }
}

extension ResultType where ParameterType: OptionalType {
    public func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Output>> {
        return map { $0.fmap(transform) }
    }
}

extension ResultType where ParameterType: ReaderType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Output>> {
        return map { $0.map(transform) }
    }
}

extension ResultType where ParameterType: ResultType {
    public func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Output>> {
        return map { $0.map(transform) }
    }
}

extension ResultType where ParameterType: StateType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Output>> {
        return map { $0.map(transform) }
    }
}

extension ResultType where ParameterType: WriterType {
    public func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Output>> {
        return map { $0.map(transform) }
    }
}

extension StateType where ParameterType: ArrayType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Output>> {
        return map { $0.fmap(transform) }
    }
}

extension StateType where ParameterType: FutureType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Output>> {
        return map { $0.map(transform) }
    }
}

extension StateType where ParameterType: OptionalType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Output>> {
        return map { $0.fmap(transform) }
    }
}

extension StateType where ParameterType: ReaderType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Output>> {
        return map { $0.map(transform) }
    }
}

extension StateType where ParameterType: ResultType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Output>> {
        return map { $0.map(transform) }
    }
}

extension StateType where ParameterType: StateType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Output>> {
        return map { $0.map(transform) }
    }
}

extension StateType where ParameterType: WriterType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Output>> {
        return map { $0.map(transform) }
    }
}

extension WriterType where ParameterType: ArrayType {
    public func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Writer<LogType,Array<Output>> {
        return map { $0.fmap(transform) }
    }
}

extension WriterType where ParameterType: FutureType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Writer<LogType,Future<Output>> {
        return map { $0.map(transform) }
    }
}

extension WriterType where ParameterType: OptionalType {
    public func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Writer<LogType,Optional<Output>> {
        return map { $0.fmap(transform) }
    }
}

extension WriterType where ParameterType: ReaderType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Writer<LogType,Reader<ParameterType.EnvironmentType,Output>> {
        return map { $0.map(transform) }
    }
}

extension WriterType where ParameterType: ResultType {
    public func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Writer<LogType,Result<ParameterType.ErrorType,Output>> {
        return map { $0.map(transform) }
    }
}

extension WriterType where ParameterType: StateType {
    public func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Writer<LogType,State<ParameterType.StateParameterType,Output>> {
        return map { $0.map(transform) }
    }
}

extension WriterType where ParameterType: WriterType {
    public func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Writer<LogType,Writer<ParameterType.LogType,Output>> {
        return map { $0.map(transform) }
    }
}

