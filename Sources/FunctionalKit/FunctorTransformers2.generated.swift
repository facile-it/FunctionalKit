// Generated using Sourcery 0.11.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT









public extension Array {




	func mapT <Input,Output> (_ transform: (Input) -> Output) -> Array<Array<Output>> where ParameterType == Array<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Effect<Output>> where ParameterType == Effect<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Future<Output>> where ParameterType == Future<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: (Input) -> Output) -> Array<Optional<Output>> where ParameterType == Optional<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Reader<Secondary2,Output>> where ParameterType == Reader<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Array<Result<Secondary2,Output>> where ParameterType == Result<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<State<Secondary2,Output>> where ParameterType == State<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Array<Writer<Secondary2,Output>> where ParameterType == Writer<Secondary2,Input>  {
        return map { $0.map(transform) }
    }
}




public extension Effect {




	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Array<Output>> where ParameterType == Array<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Effect<Output>> where ParameterType == Effect<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Future<Output>> where ParameterType == Future<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Optional<Output>> where ParameterType == Optional<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Reader<Secondary2,Output>> where ParameterType == Reader<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Result<Secondary2,Output>> where ParameterType == Result<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<State<Secondary2,Output>> where ParameterType == State<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Writer<Secondary2,Output>> where ParameterType == Writer<Secondary2,Input>  {
        return map { $0.map(transform) }
    }
}




public extension Future {




	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Array<Output>> where ParameterType == Array<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Effect<Output>> where ParameterType == Effect<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Future<Output>> where ParameterType == Future<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Optional<Output>> where ParameterType == Optional<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Reader<Secondary2,Output>> where ParameterType == Reader<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Result<Secondary2,Output>> where ParameterType == Result<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<State<Secondary2,Output>> where ParameterType == State<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Writer<Secondary2,Output>> where ParameterType == Writer<Secondary2,Input>  {
        return map { $0.map(transform) }
    }
}




public extension Optional {




	func mapT <Input,Output> (_ transform: (Input) -> Output) -> Optional<Array<Output>> where ParameterType == Array<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Effect<Output>> where ParameterType == Effect<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Future<Output>> where ParameterType == Future<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: (Input) -> Output) -> Optional<Optional<Output>> where ParameterType == Optional<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Reader<Secondary2,Output>> where ParameterType == Reader<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Optional<Result<Secondary2,Output>> where ParameterType == Result<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<State<Secondary2,Output>> where ParameterType == State<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Optional<Writer<Secondary2,Output>> where ParameterType == Writer<Secondary2,Input>  {
        return map { $0.map(transform) }
    }
}




public extension Reader {




	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Array<Output>> where ParameterType == Array<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Effect<Output>> where ParameterType == Effect<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Future<Output>> where ParameterType == Future<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Optional<Output>> where ParameterType == Optional<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Reader<Secondary2,Output>> where ParameterType == Reader<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Result<Secondary2,Output>> where ParameterType == Result<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,State<Secondary2,Output>> where ParameterType == State<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Writer<Secondary2,Output>> where ParameterType == Writer<Secondary2,Input>  {
        return map { $0.map(transform) }
    }
}




public extension Result {




	func mapT <Input,Output> (_ transform: (Input) -> Output) -> Result<Failure,Array<Output>> where ParameterType == Array<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Effect<Output>> where ParameterType == Effect<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Future<Output>> where ParameterType == Future<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: (Input) -> Output) -> Result<Failure,Optional<Output>> where ParameterType == Optional<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Reader<Secondary2,Output>> where ParameterType == Reader<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Result<Failure,Result<Secondary2,Output>> where ParameterType == Result<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,State<Secondary2,Output>> where ParameterType == State<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Result<Failure,Writer<Secondary2,Output>> where ParameterType == Writer<Secondary2,Input>  {
        return map { $0.map(transform) }
    }
}




public extension State {




	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Array<Output>> where ParameterType == Array<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Effect<Output>> where ParameterType == Effect<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Future<Output>> where ParameterType == Future<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Optional<Output>> where ParameterType == Optional<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Reader<Secondary2,Output>> where ParameterType == Reader<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Result<Secondary2,Output>> where ParameterType == Result<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,State<Secondary2,Output>> where ParameterType == State<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Writer<Secondary2,Output>> where ParameterType == Writer<Secondary2,Input>  {
        return map { $0.map(transform) }
    }
}




public extension Writer {




	func mapT <Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Array<Output>> where ParameterType == Array<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Effect<Output>> where ParameterType == Effect<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Future<Output>> where ParameterType == Future<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Optional<Output>> where ParameterType == Optional<Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Reader<Secondary2,Output>> where ParameterType == Reader<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Result<Secondary2,Output>> where ParameterType == Result<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,State<Secondary2,Output>> where ParameterType == State<Secondary2,Input>  {
        return map { $0.map(transform) }
    }



	func mapT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Writer<Secondary2,Output>> where ParameterType == Writer<Secondary2,Input>  {
        return map { $0.map(transform) }
    }
}



