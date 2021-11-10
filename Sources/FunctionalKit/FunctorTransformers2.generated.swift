// Generated using Sourcery 1.4.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


public extension Array {
	func mapT <Input,Output> (_ transform: (Input) -> Output) -> Array<Array<Output>> where ParameterType == Array<Input> {
        return fmap { $0.fmap(transform) }
    }
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Effect<Output>> where ParameterType == Effect<Input> {
        return fmap { $0.map(transform) }
    }
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Future<Output>> where ParameterType == Future<Input> {
        return fmap { $0.map(transform) }
    }
	func mapT <Input,Output> (_ transform: (Input) -> Output) -> Array<Optional<Output>> where ParameterType == Optional<Input> {
        return fmap { $0.fmap(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Reader<Secondary,Output>> where ParameterType == Reader<Secondary,Input> {
        return fmap { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: (Input) -> Output) -> Array<Result<Output,Secondary>> where ParameterType == Result<Input,Secondary> {
        return fmap { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<State<Secondary,Output>> where ParameterType == State<Secondary,Input> {
        return fmap { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: (Input) -> Output) -> Array<Writer<Secondary,Output>> where ParameterType == Writer<Secondary,Input> {
        return fmap { $0.map(transform) }
    }
}
public extension Effect {
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Array<Output>> where ParameterType == Array<Input> {
        return map { $0.fmap(transform) }
    }
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Effect<Output>> where ParameterType == Effect<Input> {
        return map { $0.map(transform) }
    }
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Future<Output>> where ParameterType == Future<Input> {
        return map { $0.map(transform) }
    }
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Optional<Output>> where ParameterType == Optional<Input> {
        return map { $0.fmap(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Reader<Secondary,Output>> where ParameterType == Reader<Secondary,Input> {
        return map { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Result<Output,Secondary>> where ParameterType == Result<Input,Secondary> {
        return map { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<State<Secondary,Output>> where ParameterType == State<Secondary,Input> {
        return map { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Writer<Secondary,Output>> where ParameterType == Writer<Secondary,Input> {
        return map { $0.map(transform) }
    }
}
public extension Future {
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Array<Output>> where ParameterType == Array<Input> {
        return map { $0.fmap(transform) }
    }
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Effect<Output>> where ParameterType == Effect<Input> {
        return map { $0.map(transform) }
    }
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Future<Output>> where ParameterType == Future<Input> {
        return map { $0.map(transform) }
    }
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Optional<Output>> where ParameterType == Optional<Input> {
        return map { $0.fmap(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Reader<Secondary,Output>> where ParameterType == Reader<Secondary,Input> {
        return map { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Result<Output,Secondary>> where ParameterType == Result<Input,Secondary> {
        return map { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<State<Secondary,Output>> where ParameterType == State<Secondary,Input> {
        return map { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Writer<Secondary,Output>> where ParameterType == Writer<Secondary,Input> {
        return map { $0.map(transform) }
    }
}
public extension Optional {
	func mapT <Input,Output> (_ transform: (Input) -> Output) -> Optional<Array<Output>> where ParameterType == Array<Input> {
        return fmap { $0.fmap(transform) }
    }
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Effect<Output>> where ParameterType == Effect<Input> {
        return fmap { $0.map(transform) }
    }
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Future<Output>> where ParameterType == Future<Input> {
        return fmap { $0.map(transform) }
    }
	func mapT <Input,Output> (_ transform: (Input) -> Output) -> Optional<Optional<Output>> where ParameterType == Optional<Input> {
        return fmap { $0.fmap(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Reader<Secondary,Output>> where ParameterType == Reader<Secondary,Input> {
        return fmap { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: (Input) -> Output) -> Optional<Result<Output,Secondary>> where ParameterType == Result<Input,Secondary> {
        return fmap { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<State<Secondary,Output>> where ParameterType == State<Secondary,Input> {
        return fmap { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: (Input) -> Output) -> Optional<Writer<Secondary,Output>> where ParameterType == Writer<Secondary,Input> {
        return fmap { $0.map(transform) }
    }
}
public extension Reader {
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Array<Output>> where ParameterType == Array<Input> {
        return map { $0.fmap(transform) }
    }
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Effect<Output>> where ParameterType == Effect<Input> {
        return map { $0.map(transform) }
    }
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Future<Output>> where ParameterType == Future<Input> {
        return map { $0.map(transform) }
    }
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Optional<Output>> where ParameterType == Optional<Input> {
        return map { $0.fmap(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Reader<Secondary,Output>> where ParameterType == Reader<Secondary,Input> {
        return map { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Result<Output,Secondary>> where ParameterType == Result<Input,Secondary> {
        return map { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,State<Secondary,Output>> where ParameterType == State<Secondary,Input> {
        return map { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Writer<Secondary,Output>> where ParameterType == Writer<Secondary,Input> {
        return map { $0.map(transform) }
    }
}
public extension Result {
	func mapT <Input,Output> (_ transform: (Input) -> Output) -> Result<Array<Output>,Failure> where ParameterType == Array<Input> {
        return map { $0.fmap(transform) }
    }
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Effect<Output>,Failure> where ParameterType == Effect<Input> {
        return map { $0.map(transform) }
    }
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Future<Output>,Failure> where ParameterType == Future<Input> {
        return map { $0.map(transform) }
    }
	func mapT <Input,Output> (_ transform: (Input) -> Output) -> Result<Optional<Output>,Failure> where ParameterType == Optional<Input> {
        return map { $0.fmap(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Reader<Secondary,Output>,Failure> where ParameterType == Reader<Secondary,Input> {
        return map { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: (Input) -> Output) -> Result<Result<Output,Secondary>,Failure> where ParameterType == Result<Input,Secondary> {
        return map { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<State<Secondary,Output>,Failure> where ParameterType == State<Secondary,Input> {
        return map { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: (Input) -> Output) -> Result<Writer<Secondary,Output>,Failure> where ParameterType == Writer<Secondary,Input> {
        return map { $0.map(transform) }
    }
}
public extension State {
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Array<Output>> where ParameterType == Array<Input> {
        return map { $0.fmap(transform) }
    }
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Effect<Output>> where ParameterType == Effect<Input> {
        return map { $0.map(transform) }
    }
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Future<Output>> where ParameterType == Future<Input> {
        return map { $0.map(transform) }
    }
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Optional<Output>> where ParameterType == Optional<Input> {
        return map { $0.fmap(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Reader<Secondary,Output>> where ParameterType == Reader<Secondary,Input> {
        return map { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Result<Output,Secondary>> where ParameterType == Result<Input,Secondary> {
        return map { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,State<Secondary,Output>> where ParameterType == State<Secondary,Input> {
        return map { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Writer<Secondary,Output>> where ParameterType == Writer<Secondary,Input> {
        return map { $0.map(transform) }
    }
}
public extension Writer {
	func mapT <Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Array<Output>> where ParameterType == Array<Input> {
        return map { $0.fmap(transform) }
    }
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Effect<Output>> where ParameterType == Effect<Input> {
        return map { $0.map(transform) }
    }
	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Future<Output>> where ParameterType == Future<Input> {
        return map { $0.map(transform) }
    }
	func mapT <Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Optional<Output>> where ParameterType == Optional<Input> {
        return map { $0.fmap(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Reader<Secondary,Output>> where ParameterType == Reader<Secondary,Input> {
        return map { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Result<Output,Secondary>> where ParameterType == Result<Input,Secondary> {
        return map { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,State<Secondary,Output>> where ParameterType == State<Secondary,Input> {
        return map { $0.map(transform) }
    }
	func mapT <Secondary,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Writer<Secondary,Output>> where ParameterType == Writer<Secondary,Input> {
        return map { $0.map(transform) }
    }
}
