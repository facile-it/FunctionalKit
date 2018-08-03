// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT









public extension Array {





	func mapTT <Input,Output> (_ transform: (Input) -> Output) -> Array<Array<Array<Output>>> where ParameterType == Array<Array<Input>>  {
		return fmap { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Array<Effect<Output>>> where ParameterType == Array<Effect<Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Array<Future<Output>>> where ParameterType == Array<Future<Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: (Input) -> Output) -> Array<Array<Optional<Output>>> where ParameterType == Array<Optional<Input>>  {
		return fmap { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Array<Reader<Secondary3,Output>>> where ParameterType == Array<Reader<Secondary3,Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Array<Array<Result<Secondary3,Output>>> where ParameterType == Array<Result<Secondary3,Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Array<State<Secondary3,Output>>> where ParameterType == Array<State<Secondary3,Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Array<Array<Writer<Secondary3,Output>>> where ParameterType == Array<Writer<Secondary3,Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Effect<Array<Output>>> where ParameterType == Effect<Array<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Effect<Effect<Output>>> where ParameterType == Effect<Effect<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Effect<Future<Output>>> where ParameterType == Effect<Future<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Effect<Optional<Output>>> where ParameterType == Effect<Optional<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Effect<Reader<Secondary3,Output>>> where ParameterType == Effect<Reader<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Effect<Result<Secondary3,Output>>> where ParameterType == Effect<Result<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Effect<State<Secondary3,Output>>> where ParameterType == Effect<State<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Effect<Writer<Secondary3,Output>>> where ParameterType == Effect<Writer<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Future<Array<Output>>> where ParameterType == Future<Array<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Future<Effect<Output>>> where ParameterType == Future<Effect<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Future<Future<Output>>> where ParameterType == Future<Future<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Future<Optional<Output>>> where ParameterType == Future<Optional<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Future<Reader<Secondary3,Output>>> where ParameterType == Future<Reader<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Future<Result<Secondary3,Output>>> where ParameterType == Future<Result<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Future<State<Secondary3,Output>>> where ParameterType == Future<State<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Future<Writer<Secondary3,Output>>> where ParameterType == Future<Writer<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: (Input) -> Output) -> Array<Optional<Array<Output>>> where ParameterType == Optional<Array<Input>>  {
		return fmap { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Optional<Effect<Output>>> where ParameterType == Optional<Effect<Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Optional<Future<Output>>> where ParameterType == Optional<Future<Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: (Input) -> Output) -> Array<Optional<Optional<Output>>> where ParameterType == Optional<Optional<Input>>  {
		return fmap { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Optional<Reader<Secondary3,Output>>> where ParameterType == Optional<Reader<Secondary3,Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Array<Optional<Result<Secondary3,Output>>> where ParameterType == Optional<Result<Secondary3,Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Optional<State<Secondary3,Output>>> where ParameterType == Optional<State<Secondary3,Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Array<Optional<Writer<Secondary3,Output>>> where ParameterType == Optional<Writer<Secondary3,Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Reader<Secondary2,Array<Output>>> where ParameterType == Reader<Secondary2,Array<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Reader<Secondary2,Effect<Output>>> where ParameterType == Reader<Secondary2,Effect<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Reader<Secondary2,Future<Output>>> where ParameterType == Reader<Secondary2,Future<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Reader<Secondary2,Optional<Output>>> where ParameterType == Reader<Secondary2,Optional<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Reader<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Reader<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Reader<Secondary2,Result<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Result<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Reader<Secondary2,State<Secondary3,Output>>> where ParameterType == Reader<Secondary2,State<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Reader<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Writer<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Array<Result<Secondary2,Array<Output>>> where ParameterType == Result<Secondary2,Array<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Result<Secondary2,Effect<Output>>> where ParameterType == Result<Secondary2,Effect<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Result<Secondary2,Future<Output>>> where ParameterType == Result<Secondary2,Future<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Array<Result<Secondary2,Optional<Output>>> where ParameterType == Result<Secondary2,Optional<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Result<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Result<Secondary2,Reader<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Array<Result<Secondary2,Result<Secondary3,Output>>> where ParameterType == Result<Secondary2,Result<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Result<Secondary2,State<Secondary3,Output>>> where ParameterType == Result<Secondary2,State<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Array<Result<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Result<Secondary2,Writer<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<State<Secondary2,Array<Output>>> where ParameterType == State<Secondary2,Array<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<State<Secondary2,Effect<Output>>> where ParameterType == State<Secondary2,Effect<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<State<Secondary2,Future<Output>>> where ParameterType == State<Secondary2,Future<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<State<Secondary2,Optional<Output>>> where ParameterType == State<Secondary2,Optional<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<State<Secondary2,Reader<Secondary3,Output>>> where ParameterType == State<Secondary2,Reader<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<State<Secondary2,Result<Secondary3,Output>>> where ParameterType == State<Secondary2,Result<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<State<Secondary2,State<Secondary3,Output>>> where ParameterType == State<Secondary2,State<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<State<Secondary2,Writer<Secondary3,Output>>> where ParameterType == State<Secondary2,Writer<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Array<Writer<Secondary2,Array<Output>>> where ParameterType == Writer<Secondary2,Array<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Writer<Secondary2,Effect<Output>>> where ParameterType == Writer<Secondary2,Effect<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Writer<Secondary2,Future<Output>>> where ParameterType == Writer<Secondary2,Future<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Array<Writer<Secondary2,Optional<Output>>> where ParameterType == Writer<Secondary2,Optional<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Writer<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Reader<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Array<Writer<Secondary2,Result<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Result<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Writer<Secondary2,State<Secondary3,Output>>> where ParameterType == Writer<Secondary2,State<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Array<Writer<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Writer<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}
}




public extension Effect {





	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Array<Array<Output>>> where ParameterType == Array<Array<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Array<Effect<Output>>> where ParameterType == Array<Effect<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Array<Future<Output>>> where ParameterType == Array<Future<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Array<Optional<Output>>> where ParameterType == Array<Optional<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Array<Reader<Secondary3,Output>>> where ParameterType == Array<Reader<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Array<Result<Secondary3,Output>>> where ParameterType == Array<Result<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Array<State<Secondary3,Output>>> where ParameterType == Array<State<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Array<Writer<Secondary3,Output>>> where ParameterType == Array<Writer<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Effect<Array<Output>>> where ParameterType == Effect<Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Effect<Effect<Output>>> where ParameterType == Effect<Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Effect<Future<Output>>> where ParameterType == Effect<Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Effect<Optional<Output>>> where ParameterType == Effect<Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Effect<Reader<Secondary3,Output>>> where ParameterType == Effect<Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Effect<Result<Secondary3,Output>>> where ParameterType == Effect<Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Effect<State<Secondary3,Output>>> where ParameterType == Effect<State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Effect<Writer<Secondary3,Output>>> where ParameterType == Effect<Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Future<Array<Output>>> where ParameterType == Future<Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Future<Effect<Output>>> where ParameterType == Future<Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Future<Future<Output>>> where ParameterType == Future<Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Future<Optional<Output>>> where ParameterType == Future<Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Future<Reader<Secondary3,Output>>> where ParameterType == Future<Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Future<Result<Secondary3,Output>>> where ParameterType == Future<Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Future<State<Secondary3,Output>>> where ParameterType == Future<State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Future<Writer<Secondary3,Output>>> where ParameterType == Future<Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Optional<Array<Output>>> where ParameterType == Optional<Array<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Optional<Effect<Output>>> where ParameterType == Optional<Effect<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Optional<Future<Output>>> where ParameterType == Optional<Future<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Optional<Optional<Output>>> where ParameterType == Optional<Optional<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Optional<Reader<Secondary3,Output>>> where ParameterType == Optional<Reader<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Optional<Result<Secondary3,Output>>> where ParameterType == Optional<Result<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Optional<State<Secondary3,Output>>> where ParameterType == Optional<State<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Optional<Writer<Secondary3,Output>>> where ParameterType == Optional<Writer<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Reader<Secondary2,Array<Output>>> where ParameterType == Reader<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Reader<Secondary2,Effect<Output>>> where ParameterType == Reader<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Reader<Secondary2,Future<Output>>> where ParameterType == Reader<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Reader<Secondary2,Optional<Output>>> where ParameterType == Reader<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Reader<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Reader<Secondary2,Result<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Reader<Secondary2,State<Secondary3,Output>>> where ParameterType == Reader<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Reader<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Result<Secondary2,Array<Output>>> where ParameterType == Result<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Result<Secondary2,Effect<Output>>> where ParameterType == Result<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Result<Secondary2,Future<Output>>> where ParameterType == Result<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Result<Secondary2,Optional<Output>>> where ParameterType == Result<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Result<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Result<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Result<Secondary2,Result<Secondary3,Output>>> where ParameterType == Result<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Result<Secondary2,State<Secondary3,Output>>> where ParameterType == Result<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Result<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Result<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<State<Secondary2,Array<Output>>> where ParameterType == State<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<State<Secondary2,Effect<Output>>> where ParameterType == State<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<State<Secondary2,Future<Output>>> where ParameterType == State<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<State<Secondary2,Optional<Output>>> where ParameterType == State<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<State<Secondary2,Reader<Secondary3,Output>>> where ParameterType == State<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<State<Secondary2,Result<Secondary3,Output>>> where ParameterType == State<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<State<Secondary2,State<Secondary3,Output>>> where ParameterType == State<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<State<Secondary2,Writer<Secondary3,Output>>> where ParameterType == State<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Writer<Secondary2,Array<Output>>> where ParameterType == Writer<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Writer<Secondary2,Effect<Output>>> where ParameterType == Writer<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Writer<Secondary2,Future<Output>>> where ParameterType == Writer<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Writer<Secondary2,Optional<Output>>> where ParameterType == Writer<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Writer<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Writer<Secondary2,Result<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Writer<Secondary2,State<Secondary3,Output>>> where ParameterType == Writer<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Writer<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
}




public extension Future {





	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Array<Array<Output>>> where ParameterType == Array<Array<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Array<Effect<Output>>> where ParameterType == Array<Effect<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Array<Future<Output>>> where ParameterType == Array<Future<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Array<Optional<Output>>> where ParameterType == Array<Optional<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Array<Reader<Secondary3,Output>>> where ParameterType == Array<Reader<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Array<Result<Secondary3,Output>>> where ParameterType == Array<Result<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Array<State<Secondary3,Output>>> where ParameterType == Array<State<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Array<Writer<Secondary3,Output>>> where ParameterType == Array<Writer<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Effect<Array<Output>>> where ParameterType == Effect<Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Effect<Effect<Output>>> where ParameterType == Effect<Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Effect<Future<Output>>> where ParameterType == Effect<Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Effect<Optional<Output>>> where ParameterType == Effect<Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Effect<Reader<Secondary3,Output>>> where ParameterType == Effect<Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Effect<Result<Secondary3,Output>>> where ParameterType == Effect<Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Effect<State<Secondary3,Output>>> where ParameterType == Effect<State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Effect<Writer<Secondary3,Output>>> where ParameterType == Effect<Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Future<Array<Output>>> where ParameterType == Future<Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Future<Effect<Output>>> where ParameterType == Future<Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Future<Future<Output>>> where ParameterType == Future<Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Future<Optional<Output>>> where ParameterType == Future<Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Future<Reader<Secondary3,Output>>> where ParameterType == Future<Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Future<Result<Secondary3,Output>>> where ParameterType == Future<Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Future<State<Secondary3,Output>>> where ParameterType == Future<State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Future<Writer<Secondary3,Output>>> where ParameterType == Future<Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Optional<Array<Output>>> where ParameterType == Optional<Array<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Optional<Effect<Output>>> where ParameterType == Optional<Effect<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Optional<Future<Output>>> where ParameterType == Optional<Future<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Optional<Optional<Output>>> where ParameterType == Optional<Optional<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Optional<Reader<Secondary3,Output>>> where ParameterType == Optional<Reader<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Optional<Result<Secondary3,Output>>> where ParameterType == Optional<Result<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Optional<State<Secondary3,Output>>> where ParameterType == Optional<State<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Optional<Writer<Secondary3,Output>>> where ParameterType == Optional<Writer<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Reader<Secondary2,Array<Output>>> where ParameterType == Reader<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Reader<Secondary2,Effect<Output>>> where ParameterType == Reader<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Reader<Secondary2,Future<Output>>> where ParameterType == Reader<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Reader<Secondary2,Optional<Output>>> where ParameterType == Reader<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Reader<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Reader<Secondary2,Result<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Reader<Secondary2,State<Secondary3,Output>>> where ParameterType == Reader<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Reader<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Result<Secondary2,Array<Output>>> where ParameterType == Result<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Result<Secondary2,Effect<Output>>> where ParameterType == Result<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Result<Secondary2,Future<Output>>> where ParameterType == Result<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Result<Secondary2,Optional<Output>>> where ParameterType == Result<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Result<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Result<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Result<Secondary2,Result<Secondary3,Output>>> where ParameterType == Result<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Result<Secondary2,State<Secondary3,Output>>> where ParameterType == Result<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Result<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Result<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<State<Secondary2,Array<Output>>> where ParameterType == State<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<State<Secondary2,Effect<Output>>> where ParameterType == State<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<State<Secondary2,Future<Output>>> where ParameterType == State<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<State<Secondary2,Optional<Output>>> where ParameterType == State<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<State<Secondary2,Reader<Secondary3,Output>>> where ParameterType == State<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<State<Secondary2,Result<Secondary3,Output>>> where ParameterType == State<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<State<Secondary2,State<Secondary3,Output>>> where ParameterType == State<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<State<Secondary2,Writer<Secondary3,Output>>> where ParameterType == State<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Writer<Secondary2,Array<Output>>> where ParameterType == Writer<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Writer<Secondary2,Effect<Output>>> where ParameterType == Writer<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Writer<Secondary2,Future<Output>>> where ParameterType == Writer<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Writer<Secondary2,Optional<Output>>> where ParameterType == Writer<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Writer<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Writer<Secondary2,Result<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Writer<Secondary2,State<Secondary3,Output>>> where ParameterType == Writer<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Writer<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
}




public extension Optional {





	func mapTT <Input,Output> (_ transform: (Input) -> Output) -> Optional<Array<Array<Output>>> where ParameterType == Array<Array<Input>>  {
		return fmap { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Array<Effect<Output>>> where ParameterType == Array<Effect<Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Array<Future<Output>>> where ParameterType == Array<Future<Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: (Input) -> Output) -> Optional<Array<Optional<Output>>> where ParameterType == Array<Optional<Input>>  {
		return fmap { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Array<Reader<Secondary3,Output>>> where ParameterType == Array<Reader<Secondary3,Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Optional<Array<Result<Secondary3,Output>>> where ParameterType == Array<Result<Secondary3,Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Array<State<Secondary3,Output>>> where ParameterType == Array<State<Secondary3,Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Optional<Array<Writer<Secondary3,Output>>> where ParameterType == Array<Writer<Secondary3,Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Effect<Array<Output>>> where ParameterType == Effect<Array<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Effect<Effect<Output>>> where ParameterType == Effect<Effect<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Effect<Future<Output>>> where ParameterType == Effect<Future<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Effect<Optional<Output>>> where ParameterType == Effect<Optional<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Effect<Reader<Secondary3,Output>>> where ParameterType == Effect<Reader<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Effect<Result<Secondary3,Output>>> where ParameterType == Effect<Result<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Effect<State<Secondary3,Output>>> where ParameterType == Effect<State<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Effect<Writer<Secondary3,Output>>> where ParameterType == Effect<Writer<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Future<Array<Output>>> where ParameterType == Future<Array<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Future<Effect<Output>>> where ParameterType == Future<Effect<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Future<Future<Output>>> where ParameterType == Future<Future<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Future<Optional<Output>>> where ParameterType == Future<Optional<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Future<Reader<Secondary3,Output>>> where ParameterType == Future<Reader<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Future<Result<Secondary3,Output>>> where ParameterType == Future<Result<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Future<State<Secondary3,Output>>> where ParameterType == Future<State<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Future<Writer<Secondary3,Output>>> where ParameterType == Future<Writer<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: (Input) -> Output) -> Optional<Optional<Array<Output>>> where ParameterType == Optional<Array<Input>>  {
		return fmap { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Optional<Effect<Output>>> where ParameterType == Optional<Effect<Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Optional<Future<Output>>> where ParameterType == Optional<Future<Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: (Input) -> Output) -> Optional<Optional<Optional<Output>>> where ParameterType == Optional<Optional<Input>>  {
		return fmap { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Optional<Reader<Secondary3,Output>>> where ParameterType == Optional<Reader<Secondary3,Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Optional<Optional<Result<Secondary3,Output>>> where ParameterType == Optional<Result<Secondary3,Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Optional<State<Secondary3,Output>>> where ParameterType == Optional<State<Secondary3,Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Optional<Optional<Writer<Secondary3,Output>>> where ParameterType == Optional<Writer<Secondary3,Input>>  {
		return fmap { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Reader<Secondary2,Array<Output>>> where ParameterType == Reader<Secondary2,Array<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Reader<Secondary2,Effect<Output>>> where ParameterType == Reader<Secondary2,Effect<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Reader<Secondary2,Future<Output>>> where ParameterType == Reader<Secondary2,Future<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Reader<Secondary2,Optional<Output>>> where ParameterType == Reader<Secondary2,Optional<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Reader<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Reader<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Reader<Secondary2,Result<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Result<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Reader<Secondary2,State<Secondary3,Output>>> where ParameterType == Reader<Secondary2,State<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Reader<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Writer<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Optional<Result<Secondary2,Array<Output>>> where ParameterType == Result<Secondary2,Array<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Result<Secondary2,Effect<Output>>> where ParameterType == Result<Secondary2,Effect<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Result<Secondary2,Future<Output>>> where ParameterType == Result<Secondary2,Future<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Optional<Result<Secondary2,Optional<Output>>> where ParameterType == Result<Secondary2,Optional<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Result<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Result<Secondary2,Reader<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Optional<Result<Secondary2,Result<Secondary3,Output>>> where ParameterType == Result<Secondary2,Result<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Result<Secondary2,State<Secondary3,Output>>> where ParameterType == Result<Secondary2,State<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Optional<Result<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Result<Secondary2,Writer<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<State<Secondary2,Array<Output>>> where ParameterType == State<Secondary2,Array<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<State<Secondary2,Effect<Output>>> where ParameterType == State<Secondary2,Effect<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<State<Secondary2,Future<Output>>> where ParameterType == State<Secondary2,Future<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<State<Secondary2,Optional<Output>>> where ParameterType == State<Secondary2,Optional<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<State<Secondary2,Reader<Secondary3,Output>>> where ParameterType == State<Secondary2,Reader<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<State<Secondary2,Result<Secondary3,Output>>> where ParameterType == State<Secondary2,Result<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<State<Secondary2,State<Secondary3,Output>>> where ParameterType == State<Secondary2,State<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<State<Secondary2,Writer<Secondary3,Output>>> where ParameterType == State<Secondary2,Writer<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Optional<Writer<Secondary2,Array<Output>>> where ParameterType == Writer<Secondary2,Array<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Writer<Secondary2,Effect<Output>>> where ParameterType == Writer<Secondary2,Effect<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Writer<Secondary2,Future<Output>>> where ParameterType == Writer<Secondary2,Future<Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Optional<Writer<Secondary2,Optional<Output>>> where ParameterType == Writer<Secondary2,Optional<Input>>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Writer<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Reader<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Optional<Writer<Secondary2,Result<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Result<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Writer<Secondary2,State<Secondary3,Output>>> where ParameterType == Writer<Secondary2,State<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Optional<Writer<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Writer<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}
}




public extension Reader {





	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Array<Array<Output>>> where ParameterType == Array<Array<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Array<Effect<Output>>> where ParameterType == Array<Effect<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Array<Future<Output>>> where ParameterType == Array<Future<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Array<Optional<Output>>> where ParameterType == Array<Optional<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Array<Reader<Secondary3,Output>>> where ParameterType == Array<Reader<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Array<Result<Secondary3,Output>>> where ParameterType == Array<Result<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Array<State<Secondary3,Output>>> where ParameterType == Array<State<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Array<Writer<Secondary3,Output>>> where ParameterType == Array<Writer<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Effect<Array<Output>>> where ParameterType == Effect<Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Effect<Effect<Output>>> where ParameterType == Effect<Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Effect<Future<Output>>> where ParameterType == Effect<Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Effect<Optional<Output>>> where ParameterType == Effect<Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Effect<Reader<Secondary3,Output>>> where ParameterType == Effect<Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Effect<Result<Secondary3,Output>>> where ParameterType == Effect<Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Effect<State<Secondary3,Output>>> where ParameterType == Effect<State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Effect<Writer<Secondary3,Output>>> where ParameterType == Effect<Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Future<Array<Output>>> where ParameterType == Future<Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Future<Effect<Output>>> where ParameterType == Future<Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Future<Future<Output>>> where ParameterType == Future<Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Future<Optional<Output>>> where ParameterType == Future<Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Future<Reader<Secondary3,Output>>> where ParameterType == Future<Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Future<Result<Secondary3,Output>>> where ParameterType == Future<Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Future<State<Secondary3,Output>>> where ParameterType == Future<State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Future<Writer<Secondary3,Output>>> where ParameterType == Future<Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Optional<Array<Output>>> where ParameterType == Optional<Array<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Optional<Effect<Output>>> where ParameterType == Optional<Effect<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Optional<Future<Output>>> where ParameterType == Optional<Future<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Optional<Optional<Output>>> where ParameterType == Optional<Optional<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Optional<Reader<Secondary3,Output>>> where ParameterType == Optional<Reader<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Optional<Result<Secondary3,Output>>> where ParameterType == Optional<Result<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Optional<State<Secondary3,Output>>> where ParameterType == Optional<State<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Optional<Writer<Secondary3,Output>>> where ParameterType == Optional<Writer<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Reader<Secondary2,Array<Output>>> where ParameterType == Reader<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Reader<Secondary2,Effect<Output>>> where ParameterType == Reader<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Reader<Secondary2,Future<Output>>> where ParameterType == Reader<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Reader<Secondary2,Optional<Output>>> where ParameterType == Reader<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Reader<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Reader<Secondary2,Result<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Reader<Secondary2,State<Secondary3,Output>>> where ParameterType == Reader<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Reader<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Result<Secondary2,Array<Output>>> where ParameterType == Result<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Result<Secondary2,Effect<Output>>> where ParameterType == Result<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Result<Secondary2,Future<Output>>> where ParameterType == Result<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Result<Secondary2,Optional<Output>>> where ParameterType == Result<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Result<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Result<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Result<Secondary2,Result<Secondary3,Output>>> where ParameterType == Result<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Result<Secondary2,State<Secondary3,Output>>> where ParameterType == Result<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Result<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Result<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,State<Secondary2,Array<Output>>> where ParameterType == State<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,State<Secondary2,Effect<Output>>> where ParameterType == State<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,State<Secondary2,Future<Output>>> where ParameterType == State<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,State<Secondary2,Optional<Output>>> where ParameterType == State<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,State<Secondary2,Reader<Secondary3,Output>>> where ParameterType == State<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,State<Secondary2,Result<Secondary3,Output>>> where ParameterType == State<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,State<Secondary2,State<Secondary3,Output>>> where ParameterType == State<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,State<Secondary2,Writer<Secondary3,Output>>> where ParameterType == State<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Writer<Secondary2,Array<Output>>> where ParameterType == Writer<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Writer<Secondary2,Effect<Output>>> where ParameterType == Writer<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Writer<Secondary2,Future<Output>>> where ParameterType == Writer<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Writer<Secondary2,Optional<Output>>> where ParameterType == Writer<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Writer<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Writer<Secondary2,Result<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Writer<Secondary2,State<Secondary3,Output>>> where ParameterType == Writer<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Writer<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
}




public extension Result {





	func mapTT <Input,Output> (_ transform: (Input) -> Output) -> Result<Failure,Array<Array<Output>>> where ParameterType == Array<Array<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Array<Effect<Output>>> where ParameterType == Array<Effect<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Array<Future<Output>>> where ParameterType == Array<Future<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: (Input) -> Output) -> Result<Failure,Array<Optional<Output>>> where ParameterType == Array<Optional<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Array<Reader<Secondary3,Output>>> where ParameterType == Array<Reader<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Result<Failure,Array<Result<Secondary3,Output>>> where ParameterType == Array<Result<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Array<State<Secondary3,Output>>> where ParameterType == Array<State<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Result<Failure,Array<Writer<Secondary3,Output>>> where ParameterType == Array<Writer<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Effect<Array<Output>>> where ParameterType == Effect<Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Effect<Effect<Output>>> where ParameterType == Effect<Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Effect<Future<Output>>> where ParameterType == Effect<Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Effect<Optional<Output>>> where ParameterType == Effect<Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Effect<Reader<Secondary3,Output>>> where ParameterType == Effect<Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Effect<Result<Secondary3,Output>>> where ParameterType == Effect<Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Effect<State<Secondary3,Output>>> where ParameterType == Effect<State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Effect<Writer<Secondary3,Output>>> where ParameterType == Effect<Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Future<Array<Output>>> where ParameterType == Future<Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Future<Effect<Output>>> where ParameterType == Future<Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Future<Future<Output>>> where ParameterType == Future<Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Future<Optional<Output>>> where ParameterType == Future<Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Future<Reader<Secondary3,Output>>> where ParameterType == Future<Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Future<Result<Secondary3,Output>>> where ParameterType == Future<Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Future<State<Secondary3,Output>>> where ParameterType == Future<State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Future<Writer<Secondary3,Output>>> where ParameterType == Future<Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: (Input) -> Output) -> Result<Failure,Optional<Array<Output>>> where ParameterType == Optional<Array<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Optional<Effect<Output>>> where ParameterType == Optional<Effect<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Optional<Future<Output>>> where ParameterType == Optional<Future<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: (Input) -> Output) -> Result<Failure,Optional<Optional<Output>>> where ParameterType == Optional<Optional<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Optional<Reader<Secondary3,Output>>> where ParameterType == Optional<Reader<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Result<Failure,Optional<Result<Secondary3,Output>>> where ParameterType == Optional<Result<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Optional<State<Secondary3,Output>>> where ParameterType == Optional<State<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Result<Failure,Optional<Writer<Secondary3,Output>>> where ParameterType == Optional<Writer<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Reader<Secondary2,Array<Output>>> where ParameterType == Reader<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Reader<Secondary2,Effect<Output>>> where ParameterType == Reader<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Reader<Secondary2,Future<Output>>> where ParameterType == Reader<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Reader<Secondary2,Optional<Output>>> where ParameterType == Reader<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Reader<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Reader<Secondary2,Result<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Reader<Secondary2,State<Secondary3,Output>>> where ParameterType == Reader<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Reader<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Result<Failure,Result<Secondary2,Array<Output>>> where ParameterType == Result<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Result<Secondary2,Effect<Output>>> where ParameterType == Result<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Result<Secondary2,Future<Output>>> where ParameterType == Result<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Result<Failure,Result<Secondary2,Optional<Output>>> where ParameterType == Result<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Result<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Result<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Result<Failure,Result<Secondary2,Result<Secondary3,Output>>> where ParameterType == Result<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Result<Secondary2,State<Secondary3,Output>>> where ParameterType == Result<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Result<Failure,Result<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Result<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,State<Secondary2,Array<Output>>> where ParameterType == State<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,State<Secondary2,Effect<Output>>> where ParameterType == State<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,State<Secondary2,Future<Output>>> where ParameterType == State<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,State<Secondary2,Optional<Output>>> where ParameterType == State<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,State<Secondary2,Reader<Secondary3,Output>>> where ParameterType == State<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,State<Secondary2,Result<Secondary3,Output>>> where ParameterType == State<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,State<Secondary2,State<Secondary3,Output>>> where ParameterType == State<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,State<Secondary2,Writer<Secondary3,Output>>> where ParameterType == State<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Result<Failure,Writer<Secondary2,Array<Output>>> where ParameterType == Writer<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Writer<Secondary2,Effect<Output>>> where ParameterType == Writer<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Writer<Secondary2,Future<Output>>> where ParameterType == Writer<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Result<Failure,Writer<Secondary2,Optional<Output>>> where ParameterType == Writer<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Writer<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Result<Failure,Writer<Secondary2,Result<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Failure,Writer<Secondary2,State<Secondary3,Output>>> where ParameterType == Writer<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Result<Failure,Writer<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
}




public extension State {





	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Array<Array<Output>>> where ParameterType == Array<Array<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Array<Effect<Output>>> where ParameterType == Array<Effect<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Array<Future<Output>>> where ParameterType == Array<Future<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Array<Optional<Output>>> where ParameterType == Array<Optional<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Array<Reader<Secondary3,Output>>> where ParameterType == Array<Reader<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Array<Result<Secondary3,Output>>> where ParameterType == Array<Result<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Array<State<Secondary3,Output>>> where ParameterType == Array<State<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Array<Writer<Secondary3,Output>>> where ParameterType == Array<Writer<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Effect<Array<Output>>> where ParameterType == Effect<Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Effect<Effect<Output>>> where ParameterType == Effect<Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Effect<Future<Output>>> where ParameterType == Effect<Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Effect<Optional<Output>>> where ParameterType == Effect<Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Effect<Reader<Secondary3,Output>>> where ParameterType == Effect<Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Effect<Result<Secondary3,Output>>> where ParameterType == Effect<Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Effect<State<Secondary3,Output>>> where ParameterType == Effect<State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Effect<Writer<Secondary3,Output>>> where ParameterType == Effect<Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Future<Array<Output>>> where ParameterType == Future<Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Future<Effect<Output>>> where ParameterType == Future<Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Future<Future<Output>>> where ParameterType == Future<Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Future<Optional<Output>>> where ParameterType == Future<Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Future<Reader<Secondary3,Output>>> where ParameterType == Future<Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Future<Result<Secondary3,Output>>> where ParameterType == Future<Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Future<State<Secondary3,Output>>> where ParameterType == Future<State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Future<Writer<Secondary3,Output>>> where ParameterType == Future<Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Optional<Array<Output>>> where ParameterType == Optional<Array<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Optional<Effect<Output>>> where ParameterType == Optional<Effect<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Optional<Future<Output>>> where ParameterType == Optional<Future<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Optional<Optional<Output>>> where ParameterType == Optional<Optional<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Optional<Reader<Secondary3,Output>>> where ParameterType == Optional<Reader<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Optional<Result<Secondary3,Output>>> where ParameterType == Optional<Result<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Optional<State<Secondary3,Output>>> where ParameterType == Optional<State<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Optional<Writer<Secondary3,Output>>> where ParameterType == Optional<Writer<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Reader<Secondary2,Array<Output>>> where ParameterType == Reader<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Reader<Secondary2,Effect<Output>>> where ParameterType == Reader<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Reader<Secondary2,Future<Output>>> where ParameterType == Reader<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Reader<Secondary2,Optional<Output>>> where ParameterType == Reader<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Reader<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Reader<Secondary2,Result<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Reader<Secondary2,State<Secondary3,Output>>> where ParameterType == Reader<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Reader<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Result<Secondary2,Array<Output>>> where ParameterType == Result<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Result<Secondary2,Effect<Output>>> where ParameterType == Result<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Result<Secondary2,Future<Output>>> where ParameterType == Result<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Result<Secondary2,Optional<Output>>> where ParameterType == Result<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Result<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Result<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Result<Secondary2,Result<Secondary3,Output>>> where ParameterType == Result<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Result<Secondary2,State<Secondary3,Output>>> where ParameterType == Result<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Result<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Result<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,State<Secondary2,Array<Output>>> where ParameterType == State<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,State<Secondary2,Effect<Output>>> where ParameterType == State<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,State<Secondary2,Future<Output>>> where ParameterType == State<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,State<Secondary2,Optional<Output>>> where ParameterType == State<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,State<Secondary2,Reader<Secondary3,Output>>> where ParameterType == State<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,State<Secondary2,Result<Secondary3,Output>>> where ParameterType == State<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,State<Secondary2,State<Secondary3,Output>>> where ParameterType == State<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,State<Secondary2,Writer<Secondary3,Output>>> where ParameterType == State<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Writer<Secondary2,Array<Output>>> where ParameterType == Writer<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Writer<Secondary2,Effect<Output>>> where ParameterType == Writer<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Writer<Secondary2,Future<Output>>> where ParameterType == Writer<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Writer<Secondary2,Optional<Output>>> where ParameterType == Writer<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Writer<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Writer<Secondary2,Result<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Writer<Secondary2,State<Secondary3,Output>>> where ParameterType == Writer<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Writer<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
}




public extension Writer {





	func mapTT <Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Array<Array<Output>>> where ParameterType == Array<Array<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Array<Effect<Output>>> where ParameterType == Array<Effect<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Array<Future<Output>>> where ParameterType == Array<Future<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Array<Optional<Output>>> where ParameterType == Array<Optional<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Array<Reader<Secondary3,Output>>> where ParameterType == Array<Reader<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Array<Result<Secondary3,Output>>> where ParameterType == Array<Result<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Array<State<Secondary3,Output>>> where ParameterType == Array<State<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Array<Writer<Secondary3,Output>>> where ParameterType == Array<Writer<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Effect<Array<Output>>> where ParameterType == Effect<Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Effect<Effect<Output>>> where ParameterType == Effect<Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Effect<Future<Output>>> where ParameterType == Effect<Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Effect<Optional<Output>>> where ParameterType == Effect<Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Effect<Reader<Secondary3,Output>>> where ParameterType == Effect<Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Effect<Result<Secondary3,Output>>> where ParameterType == Effect<Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Effect<State<Secondary3,Output>>> where ParameterType == Effect<State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Effect<Writer<Secondary3,Output>>> where ParameterType == Effect<Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Future<Array<Output>>> where ParameterType == Future<Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Future<Effect<Output>>> where ParameterType == Future<Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Future<Future<Output>>> where ParameterType == Future<Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Future<Optional<Output>>> where ParameterType == Future<Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Future<Reader<Secondary3,Output>>> where ParameterType == Future<Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Future<Result<Secondary3,Output>>> where ParameterType == Future<Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Future<State<Secondary3,Output>>> where ParameterType == Future<State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Future<Writer<Secondary3,Output>>> where ParameterType == Future<Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Optional<Array<Output>>> where ParameterType == Optional<Array<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Optional<Effect<Output>>> where ParameterType == Optional<Effect<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Optional<Future<Output>>> where ParameterType == Optional<Future<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Optional<Optional<Output>>> where ParameterType == Optional<Optional<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Optional<Reader<Secondary3,Output>>> where ParameterType == Optional<Reader<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Optional<Result<Secondary3,Output>>> where ParameterType == Optional<Result<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Optional<State<Secondary3,Output>>> where ParameterType == Optional<State<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Optional<Writer<Secondary3,Output>>> where ParameterType == Optional<Writer<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Reader<Secondary2,Array<Output>>> where ParameterType == Reader<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Reader<Secondary2,Effect<Output>>> where ParameterType == Reader<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Reader<Secondary2,Future<Output>>> where ParameterType == Reader<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Reader<Secondary2,Optional<Output>>> where ParameterType == Reader<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Reader<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Reader<Secondary2,Result<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Reader<Secondary2,State<Secondary3,Output>>> where ParameterType == Reader<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Reader<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Result<Secondary2,Array<Output>>> where ParameterType == Result<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Result<Secondary2,Effect<Output>>> where ParameterType == Result<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Result<Secondary2,Future<Output>>> where ParameterType == Result<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Result<Secondary2,Optional<Output>>> where ParameterType == Result<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Result<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Result<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Result<Secondary2,Result<Secondary3,Output>>> where ParameterType == Result<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Result<Secondary2,State<Secondary3,Output>>> where ParameterType == Result<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Result<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Result<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,State<Secondary2,Array<Output>>> where ParameterType == State<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,State<Secondary2,Effect<Output>>> where ParameterType == State<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,State<Secondary2,Future<Output>>> where ParameterType == State<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,State<Secondary2,Optional<Output>>> where ParameterType == State<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,State<Secondary2,Reader<Secondary3,Output>>> where ParameterType == State<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,State<Secondary2,Result<Secondary3,Output>>> where ParameterType == State<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,State<Secondary2,State<Secondary3,Output>>> where ParameterType == State<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,State<Secondary2,Writer<Secondary3,Output>>> where ParameterType == State<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Writer<Secondary2,Array<Output>>> where ParameterType == Writer<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Writer<Secondary2,Effect<Output>>> where ParameterType == Writer<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Writer<Secondary2,Future<Output>>> where ParameterType == Writer<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Writer<Secondary2,Optional<Output>>> where ParameterType == Writer<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Writer<Secondary2,Reader<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Writer<Secondary2,Result<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Result<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Writer<Secondary2,State<Secondary3,Output>>> where ParameterType == Writer<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}




	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Writer<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
}



