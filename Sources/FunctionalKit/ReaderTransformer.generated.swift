// Generated using Sourcery 0.10.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


extension ReaderType where ParameterType: ArrayType {
    public func flatMapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Reader<EnvironmentType,Array<Output>>) -> Reader<EnvironmentType,Array<Output>> {
        return Reader<EnvironmentType,Array<Output>>.unfold { environment in
            self.run(environment).bind { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Array<Array<Output>>>) -> Reader<EnvironmentType,Array<Array<Output>>> {
        return Reader<EnvironmentType,Array<Array<Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Array<Array<Array<Output>>>>) -> Reader<EnvironmentType,Array<Array<Array<Output>>>> {
        return Reader<EnvironmentType,Array<Array<Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Array<Array<Optional<Output>>>>) -> Reader<EnvironmentType,Array<Array<Optional<Output>>>> {
        return Reader<EnvironmentType,Array<Array<Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Array<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Array<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Array<Optional<Output>>>) -> Reader<EnvironmentType,Array<Optional<Output>>> {
        return Reader<EnvironmentType,Array<Optional<Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Array<Optional<Array<Output>>>>) -> Reader<EnvironmentType,Array<Optional<Array<Output>>>> {
        return Reader<EnvironmentType,Array<Optional<Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Array<Optional<Optional<Output>>>>) -> Reader<EnvironmentType,Array<Optional<Optional<Output>>>> {
        return Reader<EnvironmentType,Array<Optional<Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Array<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Array<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Array<Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Reader<EnvironmentType,Array<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return Reader<EnvironmentType,Array<Result<ParameterType.ParameterType.ErrorType,Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Reader<EnvironmentType,Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return Reader<EnvironmentType,Array<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Reader<EnvironmentType,Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return Reader<EnvironmentType,Array<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Array<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Array<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Array<Writer<ParameterType.ParameterType.LogType,Output>>>) -> Reader<EnvironmentType,Array<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return Reader<EnvironmentType,Array<Writer<ParameterType.ParameterType.LogType,Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Reader<EnvironmentType,Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return Reader<EnvironmentType,Array<Writer<ParameterType.ParameterType.LogType,Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Reader<EnvironmentType,Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return Reader<EnvironmentType,Array<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Array<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ArrayType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Array<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: EffectType {
    public func flatMapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Reader<EnvironmentType,Effect<Output>>) -> Reader<EnvironmentType,Effect<Output>> {
        return Reader<EnvironmentType,Effect<Output>>.unfold { environment in
            self.run(environment).flatMap { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Effect<Array<Output>>>) -> Reader<EnvironmentType,Effect<Array<Output>>> {
        return Reader<EnvironmentType,Effect<Array<Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Effect<Array<Array<Output>>>>) -> Reader<EnvironmentType,Effect<Array<Array<Output>>>> {
        return Reader<EnvironmentType,Effect<Array<Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Effect<Array<Optional<Output>>>>) -> Reader<EnvironmentType,Effect<Array<Optional<Output>>>> {
        return Reader<EnvironmentType,Effect<Array<Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Effect<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Effect<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Effect<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Effect<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Effect<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Effect<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Effect<Optional<Output>>>) -> Reader<EnvironmentType,Effect<Optional<Output>>> {
        return Reader<EnvironmentType,Effect<Optional<Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Effect<Optional<Array<Output>>>>) -> Reader<EnvironmentType,Effect<Optional<Array<Output>>>> {
        return Reader<EnvironmentType,Effect<Optional<Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Effect<Optional<Optional<Output>>>>) -> Reader<EnvironmentType,Effect<Optional<Optional<Output>>>> {
        return Reader<EnvironmentType,Effect<Optional<Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Effect<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Effect<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Effect<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Effect<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Effect<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Effect<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Effect<Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Reader<EnvironmentType,Effect<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return Reader<EnvironmentType,Effect<Result<ParameterType.ParameterType.ErrorType,Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Effect<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Reader<EnvironmentType,Effect<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return Reader<EnvironmentType,Effect<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Effect<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Reader<EnvironmentType,Effect<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return Reader<EnvironmentType,Effect<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Effect<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Effect<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Effect<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Effect<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Effect<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Effect<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Effect<Writer<ParameterType.ParameterType.LogType,Output>>>) -> Reader<EnvironmentType,Effect<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return Reader<EnvironmentType,Effect<Writer<ParameterType.ParameterType.LogType,Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Effect<Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Reader<EnvironmentType,Effect<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return Reader<EnvironmentType,Effect<Writer<ParameterType.ParameterType.LogType,Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Effect<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Reader<EnvironmentType,Effect<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return Reader<EnvironmentType,Effect<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Effect<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Effect<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Effect<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: EffectType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Effect<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Effect<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Effect<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: FutureType {
    public func flatMapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Reader<EnvironmentType,Future<Output>>) -> Reader<EnvironmentType,Future<Output>> {
        return Reader<EnvironmentType,Future<Output>>.unfold { environment in
            self.run(environment).flatMap { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Future<Array<Output>>>) -> Reader<EnvironmentType,Future<Array<Output>>> {
        return Reader<EnvironmentType,Future<Array<Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Future<Array<Array<Output>>>>) -> Reader<EnvironmentType,Future<Array<Array<Output>>>> {
        return Reader<EnvironmentType,Future<Array<Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Future<Array<Optional<Output>>>>) -> Reader<EnvironmentType,Future<Array<Optional<Output>>>> {
        return Reader<EnvironmentType,Future<Array<Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Future<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Future<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Future<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Future<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Future<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Future<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Future<Optional<Output>>>) -> Reader<EnvironmentType,Future<Optional<Output>>> {
        return Reader<EnvironmentType,Future<Optional<Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Future<Optional<Array<Output>>>>) -> Reader<EnvironmentType,Future<Optional<Array<Output>>>> {
        return Reader<EnvironmentType,Future<Optional<Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Future<Optional<Optional<Output>>>>) -> Reader<EnvironmentType,Future<Optional<Optional<Output>>>> {
        return Reader<EnvironmentType,Future<Optional<Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Future<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Future<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Future<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Future<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Future<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Future<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Future<Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Reader<EnvironmentType,Future<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return Reader<EnvironmentType,Future<Result<ParameterType.ParameterType.ErrorType,Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Future<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Reader<EnvironmentType,Future<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return Reader<EnvironmentType,Future<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Future<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Reader<EnvironmentType,Future<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return Reader<EnvironmentType,Future<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Future<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Future<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Future<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Future<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Future<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Future<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Future<Writer<ParameterType.ParameterType.LogType,Output>>>) -> Reader<EnvironmentType,Future<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return Reader<EnvironmentType,Future<Writer<ParameterType.ParameterType.LogType,Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Future<Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Reader<EnvironmentType,Future<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return Reader<EnvironmentType,Future<Writer<ParameterType.ParameterType.LogType,Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Future<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Reader<EnvironmentType,Future<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return Reader<EnvironmentType,Future<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Future<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Future<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Future<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: FutureType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Future<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Future<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Future<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: OptionalType {
    public func flatMapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Reader<EnvironmentType,Optional<Output>>) -> Reader<EnvironmentType,Optional<Output>> {
        return Reader<EnvironmentType,Optional<Output>>.unfold { environment in
            self.run(environment).bind { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Optional<Array<Output>>>) -> Reader<EnvironmentType,Optional<Array<Output>>> {
        return Reader<EnvironmentType,Optional<Array<Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Optional<Array<Array<Output>>>>) -> Reader<EnvironmentType,Optional<Array<Array<Output>>>> {
        return Reader<EnvironmentType,Optional<Array<Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Optional<Array<Optional<Output>>>>) -> Reader<EnvironmentType,Optional<Array<Optional<Output>>>> {
        return Reader<EnvironmentType,Optional<Array<Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Optional<Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Optional<Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Optional<Optional<Output>>>) -> Reader<EnvironmentType,Optional<Optional<Output>>> {
        return Reader<EnvironmentType,Optional<Optional<Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Optional<Optional<Array<Output>>>>) -> Reader<EnvironmentType,Optional<Optional<Array<Output>>>> {
        return Reader<EnvironmentType,Optional<Optional<Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Optional<Optional<Optional<Output>>>>) -> Reader<EnvironmentType,Optional<Optional<Optional<Output>>>> {
        return Reader<EnvironmentType,Optional<Optional<Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Optional<Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Optional<Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Optional<Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Reader<EnvironmentType,Optional<Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return Reader<EnvironmentType,Optional<Result<ParameterType.ParameterType.ErrorType,Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Reader<EnvironmentType,Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return Reader<EnvironmentType,Optional<Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Reader<EnvironmentType,Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return Reader<EnvironmentType,Optional<Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Optional<Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Optional<Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Optional<Writer<ParameterType.ParameterType.LogType,Output>>>) -> Reader<EnvironmentType,Optional<Writer<ParameterType.ParameterType.LogType,Output>>> {
        return Reader<EnvironmentType,Optional<Writer<ParameterType.ParameterType.LogType,Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Reader<EnvironmentType,Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return Reader<EnvironmentType,Optional<Writer<ParameterType.ParameterType.LogType,Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Reader<EnvironmentType,Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return Reader<EnvironmentType,Optional<Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Optional<Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: OptionalType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Optional<Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ReaderType {
    public func flatMapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Output>>) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Output>> {
        return Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Output>>.unfold { environment in
            self.run(environment).flatMap { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Array<Output>>>) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Array<Output>>> {
        return Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Array<Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Array<Array<Output>>>>) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Array<Array<Output>>>> {
        return Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Array<Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Array<Optional<Output>>>>) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Array<Optional<Output>>>> {
        return Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Array<Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Optional<Output>>>) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Optional<Output>>> {
        return Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Optional<Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Optional<Array<Output>>>>) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Optional<Array<Output>>>> {
        return Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Optional<Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Optional<Optional<Output>>>>) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Optional<Optional<Output>>>> {
        return Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Optional<Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Output>>>) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ReaderType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Reader<ParameterType.EnvironmentType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ResultType {
    public func flatMapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Output>>) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Output>> {
        return Reader<EnvironmentType,Result<ParameterType.ErrorType,Output>>.unfold { environment in
            self.run(environment).flatMap { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Array<Output>>>) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Array<Output>>> {
        return Reader<EnvironmentType,Result<ParameterType.ErrorType,Array<Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Array<Array<Output>>>>) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Array<Array<Output>>>> {
        return Reader<EnvironmentType,Result<ParameterType.ErrorType,Array<Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Array<Optional<Output>>>>) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Array<Optional<Output>>>> {
        return Reader<EnvironmentType,Result<ParameterType.ErrorType,Array<Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Result<ParameterType.ErrorType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Result<ParameterType.ErrorType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Optional<Output>>>) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Optional<Output>>> {
        return Reader<EnvironmentType,Result<ParameterType.ErrorType,Optional<Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Optional<Array<Output>>>>) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Optional<Array<Output>>>> {
        return Reader<EnvironmentType,Result<ParameterType.ErrorType,Optional<Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Optional<Optional<Output>>>>) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Optional<Optional<Output>>>> {
        return Reader<EnvironmentType,Result<ParameterType.ErrorType,Optional<Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Result<ParameterType.ErrorType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Result<ParameterType.ErrorType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return Reader<EnvironmentType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return Reader<EnvironmentType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return Reader<EnvironmentType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Result<ParameterType.ErrorType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>>) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return Reader<EnvironmentType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return Reader<EnvironmentType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return Reader<EnvironmentType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: ResultType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Result<ParameterType.ErrorType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: StateType {
    public func flatMapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Output>>) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Output>> {
        return Reader<EnvironmentType,State<ParameterType.StateParameterType,Output>>.unfold { environment in
            self.run(environment).flatMap { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Array<Output>>>) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Array<Output>>> {
        return Reader<EnvironmentType,State<ParameterType.StateParameterType,Array<Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Array<Array<Output>>>>) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Array<Array<Output>>>> {
        return Reader<EnvironmentType,State<ParameterType.StateParameterType,Array<Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Array<Optional<Output>>>>) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Array<Optional<Output>>>> {
        return Reader<EnvironmentType,State<ParameterType.StateParameterType,Array<Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,State<ParameterType.StateParameterType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,State<ParameterType.StateParameterType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Optional<Output>>>) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Optional<Output>>> {
        return Reader<EnvironmentType,State<ParameterType.StateParameterType,Optional<Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Optional<Array<Output>>>>) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Optional<Array<Output>>>> {
        return Reader<EnvironmentType,State<ParameterType.StateParameterType,Optional<Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Optional<Optional<Output>>>>) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Optional<Optional<Output>>>> {
        return Reader<EnvironmentType,State<ParameterType.StateParameterType,Optional<Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,State<ParameterType.StateParameterType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,State<ParameterType.StateParameterType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return Reader<EnvironmentType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return Reader<EnvironmentType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return Reader<EnvironmentType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,State<ParameterType.StateParameterType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Output>>>) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return Reader<EnvironmentType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return Reader<EnvironmentType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return Reader<EnvironmentType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: StateType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,State<ParameterType.StateParameterType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: WriterType {
    public func flatMapT <Output> (_ transform: @escaping (ParameterType.ParameterType) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Output>>) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Output>> {
        return Reader<EnvironmentType,Writer<ParameterType.LogType,Output>>.unfold { environment in
            self.run(environment).flatMap { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Array<Output>>>) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Array<Output>>> {
        return Reader<EnvironmentType,Writer<ParameterType.LogType,Array<Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Array<Array<Output>>>>) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Array<Array<Output>>>> {
        return Reader<EnvironmentType,Writer<ParameterType.LogType,Array<Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Array<Optional<Output>>>>) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Array<Optional<Output>>>> {
        return Reader<EnvironmentType,Writer<ParameterType.LogType,Array<Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Writer<ParameterType.LogType,Array<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: ArrayType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Writer<ParameterType.LogType,Array<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Optional<Output>>>) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Optional<Output>>> {
        return Reader<EnvironmentType,Writer<ParameterType.LogType,Optional<Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Optional<Array<Output>>>>) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Optional<Array<Output>>>> {
        return Reader<EnvironmentType,Writer<ParameterType.LogType,Optional<Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Optional<Optional<Output>>>>) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Optional<Optional<Output>>>> {
        return Reader<EnvironmentType,Writer<ParameterType.LogType,Optional<Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Writer<ParameterType.LogType,Optional<Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: OptionalType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Writer<ParameterType.LogType,Optional<Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: ResultType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>>) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>> {
        return Reader<EnvironmentType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>> {
        return Reader<EnvironmentType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>> {
        return Reader<EnvironmentType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: ResultType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Writer<ParameterType.LogType,Result<ParameterType.ParameterType.ErrorType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: WriterType {
    public func flatMapTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>>) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>> {
        return Reader<EnvironmentType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Output>>>.unfold { environment in
            self.run(environment).flatMapT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ArrayType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>>) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>> {
        return Reader<EnvironmentType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Array<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: OptionalType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>> {
        return Reader<EnvironmentType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Optional<Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: ResultType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>> {
        return Reader<EnvironmentType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Result<ParameterType.ParameterType.ParameterType.ErrorType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

extension ReaderType where ParameterType: WriterType, ParameterType.ParameterType: WriterType, ParameterType.ParameterType.ParameterType: WriterType {
    public func flatMapTTT <Output> (_ transform: @escaping (ParameterType.ParameterType.ParameterType.ParameterType) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>) -> Reader<EnvironmentType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>> {
        return Reader<EnvironmentType,Writer<ParameterType.LogType,Writer<ParameterType.ParameterType.LogType,Writer<ParameterType.ParameterType.ParameterType.LogType,Output>>>>.unfold { environment in
            self.run(environment).flatMapTT { transform($0).run(environment) }
        }
    }
}

