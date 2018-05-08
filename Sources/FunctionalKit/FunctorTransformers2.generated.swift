// Generated using Sourcery 0.10.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


/*public extension ArrayType where ParameterType: ArrayType {
    func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Array<Array<Output>> {
        return fmap { $0.fmap(transform) }
    }
}*/

/*public extension ArrayType where ParameterType: EffectType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Array<Effect<Output>> {
        return fmap { $0.map(transform) }
    }
}*/

/*public extension ArrayType where ParameterType: FutureType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Array<Future<Output>> {
        return fmap { $0.map(transform) }
    }
}*/

/*public extension ArrayType where ParameterType: OptionalType {
    func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Array<Optional<Output>> {
        return fmap { $0.fmap(transform) }
    }
}*/

/*public extension ArrayType where ParameterType: ReaderType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Array<Reader<ParameterType.EnvironmentType,Output>> {
        return fmap { $0.map(transform) }
    }
}*/

/*public extension ArrayType where ParameterType: ResultType {
    func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Array<Result<ParameterType.ErrorType,Output>> {
        return fmap { $0.map(transform) }
    }
}*/

/*public extension ArrayType where ParameterType: StateType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Array<State<ParameterType.StateParameterType,Output>> {
        return fmap { $0.map(transform) }
    }
}*/

/*public extension ArrayType where ParameterType: WriterType {
    func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Array<Writer<ParameterType.LogType,Output>> {
        return fmap { $0.map(transform) }
    }
}*/

/*public extension EffectType where ParameterType: ArrayType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Effect<Array<Output>> {
        return map { $0.fmap(transform) }
    }
}*/

/*public extension EffectType where ParameterType: EffectType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Effect<Effect<Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension EffectType where ParameterType: FutureType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Effect<Future<Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension EffectType where ParameterType: OptionalType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Effect<Optional<Output>> {
        return map { $0.fmap(transform) }
    }
}*/

/*public extension EffectType where ParameterType: ReaderType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Effect<Reader<ParameterType.EnvironmentType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension EffectType where ParameterType: ResultType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Effect<Result<ParameterType.ErrorType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension EffectType where ParameterType: StateType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Effect<State<ParameterType.StateParameterType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension EffectType where ParameterType: WriterType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Effect<Writer<ParameterType.LogType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension FutureType where ParameterType: ArrayType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Future<Array<Output>> {
        return map { $0.fmap(transform) }
    }
}*/

/*public extension FutureType where ParameterType: EffectType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Future<Effect<Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension FutureType where ParameterType: FutureType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Future<Future<Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension FutureType where ParameterType: OptionalType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Future<Optional<Output>> {
        return map { $0.fmap(transform) }
    }
}*/

/*public extension FutureType where ParameterType: ReaderType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Future<Reader<ParameterType.EnvironmentType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension FutureType where ParameterType: ResultType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Future<Result<ParameterType.ErrorType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension FutureType where ParameterType: StateType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Future<State<ParameterType.StateParameterType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension FutureType where ParameterType: WriterType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Future<Writer<ParameterType.LogType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension OptionalType where ParameterType: ArrayType {
    func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Optional<Array<Output>> {
        return fmap { $0.fmap(transform) }
    }
}*/

/*public extension OptionalType where ParameterType: EffectType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Optional<Effect<Output>> {
        return fmap { $0.map(transform) }
    }
}*/

/*public extension OptionalType where ParameterType: FutureType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Optional<Future<Output>> {
        return fmap { $0.map(transform) }
    }
}*/

/*public extension OptionalType where ParameterType: OptionalType {
    func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Optional<Optional<Output>> {
        return fmap { $0.fmap(transform) }
    }
}*/

/*public extension OptionalType where ParameterType: ReaderType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Optional<Reader<ParameterType.EnvironmentType,Output>> {
        return fmap { $0.map(transform) }
    }
}*/

/*public extension OptionalType where ParameterType: ResultType {
    func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Optional<Result<ParameterType.ErrorType,Output>> {
        return fmap { $0.map(transform) }
    }
}*/

/*public extension OptionalType where ParameterType: StateType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Optional<State<ParameterType.StateParameterType,Output>> {
        return fmap { $0.map(transform) }
    }
}*/

/*public extension OptionalType where ParameterType: WriterType {
    func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Optional<Writer<ParameterType.LogType,Output>> {
        return fmap { $0.map(transform) }
    }
}*/

/*public extension ReaderType where ParameterType: ArrayType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Array<Output>> {
        return map { $0.fmap(transform) }
    }
}*/

/*public extension ReaderType where ParameterType: EffectType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Effect<Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension ReaderType where ParameterType: FutureType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Future<Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension ReaderType where ParameterType: OptionalType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Optional<Output>> {
        return map { $0.fmap(transform) }
    }
}*/

/*public extension ReaderType where ParameterType: ReaderType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension ReaderType where ParameterType: ResultType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension ReaderType where ParameterType: StateType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension ReaderType where ParameterType: WriterType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension ResultType where ParameterType: ArrayType {
    func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Result<ErrorType,Array<Output>> {
        return map { $0.fmap(transform) }
    }
}*/

/*public extension ResultType where ParameterType: EffectType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Result<ErrorType,Effect<Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension ResultType where ParameterType: FutureType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Result<ErrorType,Future<Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension ResultType where ParameterType: OptionalType {
    func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Result<ErrorType,Optional<Output>> {
        return map { $0.fmap(transform) }
    }
}*/

/*public extension ResultType where ParameterType: ReaderType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Result<ErrorType,Reader<ParameterType.EnvironmentType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension ResultType where ParameterType: ResultType {
    func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Result<ErrorType,Result<ParameterType.ErrorType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension ResultType where ParameterType: StateType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Result<ErrorType,State<ParameterType.StateParameterType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension ResultType where ParameterType: WriterType {
    func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Result<ErrorType,Writer<ParameterType.LogType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension StateType where ParameterType: ArrayType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> State<StateParameterType,Array<Output>> {
        return map { $0.fmap(transform) }
    }
}*/

/*public extension StateType where ParameterType: EffectType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> State<StateParameterType,Effect<Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension StateType where ParameterType: FutureType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> State<StateParameterType,Future<Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension StateType where ParameterType: OptionalType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> State<StateParameterType,Optional<Output>> {
        return map { $0.fmap(transform) }
    }
}*/

/*public extension StateType where ParameterType: ReaderType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> State<StateParameterType,Reader<ParameterType.EnvironmentType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension StateType where ParameterType: ResultType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> State<StateParameterType,Result<ParameterType.ErrorType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension StateType where ParameterType: StateType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> State<StateParameterType,State<ParameterType.StateParameterType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension StateType where ParameterType: WriterType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> State<StateParameterType,Writer<ParameterType.LogType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension WriterType where ParameterType: ArrayType {
    func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Writer<LogType,Array<Output>> {
        return map { $0.fmap(transform) }
    }
}*/

/*public extension WriterType where ParameterType: EffectType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Writer<LogType,Effect<Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension WriterType where ParameterType: FutureType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Writer<LogType,Future<Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension WriterType where ParameterType: OptionalType {
    func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Writer<LogType,Optional<Output>> {
        return map { $0.fmap(transform) }
    }
}*/

/*public extension WriterType where ParameterType: ReaderType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Writer<LogType,Reader<ParameterType.EnvironmentType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension WriterType where ParameterType: ResultType {
    func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Writer<LogType,Result<ParameterType.ErrorType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension WriterType where ParameterType: StateType {
    func mapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Output) -> Writer<LogType,State<ParameterType.StateParameterType,Output>> {
        return map { $0.map(transform) }
    }
}*/

/*public extension WriterType where ParameterType: WriterType {
    func mapT <Output> (_ transform: (ParameterType.ParameterType) -> Output) -> Writer<LogType,Writer<ParameterType.LogType,Output>> {
        return map { $0.map(transform) }
    }
}*/

