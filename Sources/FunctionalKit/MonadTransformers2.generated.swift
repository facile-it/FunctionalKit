// Generated using Sourcery 0.10.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


extension ArrayType where ParameterType: ArrayType {
    public func flatMapT <Output> (_ transform: (ParameterType.ParameterType) -> Array<Array<Output>>) -> Array<Array<Output>> {
        return bind { (value) -> Array<Array<Output>> in
            value.traverse(transform).fmap { $0.joined() }
        }
    }
}

extension ArrayType where ParameterType: OptionalType {
    public func flatMapT <Output> (_ transform: (ParameterType.ParameterType) -> Array<Optional<Output>>) -> Array<Optional<Output>> {
        return bind { (value) -> Array<Optional<Output>> in
            value.traverse(transform).fmap { $0.joined() }
        }
    }
}

extension ArrayType where ParameterType: ResultType {
    public func flatMapT <Output> (_ transform: (ParameterType.ParameterType) -> Array<Result<ParameterType.ErrorType,Output>>) -> Array<Result<ParameterType.ErrorType,Output>> {
        return bind { (value) -> Array<Result<ParameterType.ErrorType,Output>> in
            value.traverse(transform).fmap { $0.joined() }
        }
    }
}

extension ArrayType where ParameterType: WriterType {
    public func flatMapT <Output> (_ transform: (ParameterType.ParameterType) -> Array<Writer<ParameterType.LogType,Output>>) -> Array<Writer<ParameterType.LogType,Output>> {
        return bind { (value) -> Array<Writer<ParameterType.LogType,Output>> in
            value.traverse(transform).fmap { $0.joined() }
        }
    }
}

extension EffectType where ParameterType: ArrayType {
    public func flatMapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Effect<Array<Output>>) -> Effect<Array<Output>> {
        return flatMap { (value) -> Effect<Array<Output>> in
            value.traverse(transform).map { $0.joined() }
        }
    }
}

extension EffectType where ParameterType: OptionalType {
    public func flatMapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Effect<Optional<Output>>) -> Effect<Optional<Output>> {
        return flatMap { (value) -> Effect<Optional<Output>> in
            value.traverse(transform).map { $0.joined() }
        }
    }
}

extension EffectType where ParameterType: ResultType {
    public func flatMapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Effect<Result<ParameterType.ErrorType,Output>>) -> Effect<Result<ParameterType.ErrorType,Output>> {
        return flatMap { (value) -> Effect<Result<ParameterType.ErrorType,Output>> in
            value.traverse(transform).map { $0.joined() }
        }
    }
}

extension EffectType where ParameterType: WriterType {
    public func flatMapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Effect<Writer<ParameterType.LogType,Output>>) -> Effect<Writer<ParameterType.LogType,Output>> {
        return flatMap { (value) -> Effect<Writer<ParameterType.LogType,Output>> in
            value.traverse(transform).map { $0.joined() }
        }
    }
}

extension FutureType where ParameterType: ArrayType {
    public func flatMapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Future<Array<Output>>) -> Future<Array<Output>> {
        return flatMap { (value) -> Future<Array<Output>> in
            value.traverse(transform).map { $0.joined() }
        }
    }
}

extension FutureType where ParameterType: OptionalType {
    public func flatMapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Future<Optional<Output>>) -> Future<Optional<Output>> {
        return flatMap { (value) -> Future<Optional<Output>> in
            value.traverse(transform).map { $0.joined() }
        }
    }
}

extension FutureType where ParameterType: ResultType {
    public func flatMapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Future<Result<ParameterType.ErrorType,Output>>) -> Future<Result<ParameterType.ErrorType,Output>> {
        return flatMap { (value) -> Future<Result<ParameterType.ErrorType,Output>> in
            value.traverse(transform).map { $0.joined() }
        }
    }
}

extension FutureType where ParameterType: WriterType {
    public func flatMapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Future<Writer<ParameterType.LogType,Output>>) -> Future<Writer<ParameterType.LogType,Output>> {
        return flatMap { (value) -> Future<Writer<ParameterType.LogType,Output>> in
            value.traverse(transform).map { $0.joined() }
        }
    }
}

extension OptionalType where ParameterType: ArrayType {
    public func flatMapT <Output> (_ transform: (ParameterType.ParameterType) -> Optional<Array<Output>>) -> Optional<Array<Output>> {
        return bind { (value) -> Optional<Array<Output>> in
            value.traverse(transform).fmap { $0.joined() }
        }
    }
}

extension OptionalType where ParameterType: OptionalType {
    public func flatMapT <Output> (_ transform: (ParameterType.ParameterType) -> Optional<Optional<Output>>) -> Optional<Optional<Output>> {
        return bind { (value) -> Optional<Optional<Output>> in
            value.traverse(transform).fmap { $0.joined() }
        }
    }
}

extension OptionalType where ParameterType: ResultType {
    public func flatMapT <Output> (_ transform: (ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Output>>) -> Optional<Result<ParameterType.ErrorType,Output>> {
        return bind { (value) -> Optional<Result<ParameterType.ErrorType,Output>> in
            value.traverse(transform).fmap { $0.joined() }
        }
    }
}

extension OptionalType where ParameterType: WriterType {
    public func flatMapT <Output> (_ transform: (ParameterType.ParameterType) -> Optional<Writer<ParameterType.LogType,Output>>) -> Optional<Writer<ParameterType.LogType,Output>> {
        return bind { (value) -> Optional<Writer<ParameterType.LogType,Output>> in
            value.traverse(transform).fmap { $0.joined() }
        }
    }
}

extension ResultType where ParameterType: ArrayType {
    public func flatMapT <Output> (_ transform: (ParameterType.ParameterType) -> Result<ErrorType,Array<Output>>) -> Result<ErrorType,Array<Output>> {
        return flatMap { (value) -> Result<ErrorType,Array<Output>> in
            value.traverse(transform).map { $0.joined() }
        }
    }
}

extension ResultType where ParameterType: OptionalType {
    public func flatMapT <Output> (_ transform: (ParameterType.ParameterType) -> Result<ErrorType,Optional<Output>>) -> Result<ErrorType,Optional<Output>> {
        return flatMap { (value) -> Result<ErrorType,Optional<Output>> in
            value.traverse(transform).map { $0.joined() }
        }
    }
}

extension ResultType where ParameterType: ResultType {
    public func flatMapT <Output> (_ transform: (ParameterType.ParameterType) -> Result<ErrorType,Result<ParameterType.ErrorType,Output>>) -> Result<ErrorType,Result<ParameterType.ErrorType,Output>> {
        return flatMap { (value) -> Result<ErrorType,Result<ParameterType.ErrorType,Output>> in
            value.traverse(transform).map { $0.joined() }
        }
    }
}

extension ResultType where ParameterType: WriterType {
    public func flatMapT <Output> (_ transform: (ParameterType.ParameterType) -> Result<ErrorType,Writer<ParameterType.LogType,Output>>) -> Result<ErrorType,Writer<ParameterType.LogType,Output>> {
        return flatMap { (value) -> Result<ErrorType,Writer<ParameterType.LogType,Output>> in
            value.traverse(transform).map { $0.joined() }
        }
    }
}

extension StateType where ParameterType: ArrayType {
    public func flatMapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> State<StateParameterType,Array<Output>>) -> State<StateParameterType,Array<Output>> {
        return flatMap { (value) -> State<StateParameterType,Array<Output>> in
            value.traverse(transform).map { $0.joined() }
        }
    }
}

extension StateType where ParameterType: OptionalType {
    public func flatMapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> State<StateParameterType,Optional<Output>>) -> State<StateParameterType,Optional<Output>> {
        return flatMap { (value) -> State<StateParameterType,Optional<Output>> in
            value.traverse(transform).map { $0.joined() }
        }
    }
}

extension StateType where ParameterType: ResultType {
    public func flatMapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> State<StateParameterType,Result<ParameterType.ErrorType,Output>>) -> State<StateParameterType,Result<ParameterType.ErrorType,Output>> {
        return flatMap { (value) -> State<StateParameterType,Result<ParameterType.ErrorType,Output>> in
            value.traverse(transform).map { $0.joined() }
        }
    }
}

extension StateType where ParameterType: WriterType {
    public func flatMapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> State<StateParameterType,Writer<ParameterType.LogType,Output>>) -> State<StateParameterType,Writer<ParameterType.LogType,Output>> {
        return flatMap { (value) -> State<StateParameterType,Writer<ParameterType.LogType,Output>> in
            value.traverse(transform).map { $0.joined() }
        }
    }
}

extension WriterType where ParameterType: ArrayType {
    public func flatMapT <Output> (_ transform: (ParameterType.ParameterType) -> Writer<LogType,Array<Output>>) -> Writer<LogType,Array<Output>> {
        return flatMap { (value) -> Writer<LogType,Array<Output>> in
            value.traverse(transform).map { $0.joined() }
        }
    }
}

extension WriterType where ParameterType: OptionalType {
    public func flatMapT <Output> (_ transform: (ParameterType.ParameterType) -> Writer<LogType,Optional<Output>>) -> Writer<LogType,Optional<Output>> {
        return flatMap { (value) -> Writer<LogType,Optional<Output>> in
            value.traverse(transform).map { $0.joined() }
        }
    }
}

extension WriterType where ParameterType: ResultType {
    public func flatMapT <Output> (_ transform: (ParameterType.ParameterType) -> Writer<LogType,Result<ParameterType.ErrorType,Output>>) -> Writer<LogType,Result<ParameterType.ErrorType,Output>> {
        return flatMap { (value) -> Writer<LogType,Result<ParameterType.ErrorType,Output>> in
            value.traverse(transform).map { $0.joined() }
        }
    }
}

extension WriterType where ParameterType: WriterType {
    public func flatMapT <Output> (_ transform: (ParameterType.ParameterType) -> Writer<LogType,Writer<ParameterType.LogType,Output>>) -> Writer<LogType,Writer<ParameterType.LogType,Output>> {
        return flatMap { (value) -> Writer<LogType,Writer<ParameterType.LogType,Output>> in
            value.traverse(transform).map { $0.joined() }
        }
    }
}

