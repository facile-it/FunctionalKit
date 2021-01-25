// Generated using Sourcery 1.0.2 — https://github.com/krzysztofzablocki/Sourcery
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
	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Array<Array<Result<Output,Secondary3>>> where ParameterType == Array<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Effect<Result<Output,Secondary3>>> where ParameterType == Effect<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Future<Result<Output,Secondary3>>> where ParameterType == Future<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Array<Optional<Result<Output,Secondary3>>> where ParameterType == Optional<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Reader<Secondary2,Result<Output,Secondary3>>> where ParameterType == Reader<Secondary2,Result<Input,Secondary3>>  {
		return fmap { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Reader<Secondary2,State<Secondary3,Output>>> where ParameterType == Reader<Secondary2,State<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Reader<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Writer<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Array<Result<Array<Output>,Secondary2>> where ParameterType == Result<Array<Input>,Secondary2>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Result<Effect<Output>,Secondary2>> where ParameterType == Result<Effect<Input>,Secondary2>  {
		return fmap { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Result<Future<Output>,Secondary2>> where ParameterType == Result<Future<Input>,Secondary2>  {
		return fmap { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Array<Result<Optional<Output>,Secondary2>> where ParameterType == Result<Optional<Input>,Secondary2>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Result<Reader<Secondary3,Output>,Secondary2>> where ParameterType == Result<Reader<Secondary3,Input>,Secondary2>  {
		return fmap { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Array<Result<Result<Output,Secondary3>,Secondary2>> where ParameterType == Result<Result<Input,Secondary3>,Secondary2>  {
		return fmap { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<Result<State<Secondary3,Output>,Secondary2>> where ParameterType == Result<State<Secondary3,Input>,Secondary2>  {
		return fmap { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Array<Result<Writer<Secondary3,Output>,Secondary2>> where ParameterType == Result<Writer<Secondary3,Input>,Secondary2>  {
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
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Array<State<Secondary2,Result<Output,Secondary3>>> where ParameterType == State<Secondary2,Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Array<Writer<Secondary2,Result<Output,Secondary3>>> where ParameterType == Writer<Secondary2,Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Array<Result<Output,Secondary3>>> where ParameterType == Array<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Effect<Result<Output,Secondary3>>> where ParameterType == Effect<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Future<Result<Output,Secondary3>>> where ParameterType == Future<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Optional<Result<Output,Secondary3>>> where ParameterType == Optional<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Reader<Secondary2,Result<Output,Secondary3>>> where ParameterType == Reader<Secondary2,Result<Input,Secondary3>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Reader<Secondary2,State<Secondary3,Output>>> where ParameterType == Reader<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Reader<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Result<Array<Output>,Secondary2>> where ParameterType == Result<Array<Input>,Secondary2>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Result<Effect<Output>,Secondary2>> where ParameterType == Result<Effect<Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Result<Future<Output>,Secondary2>> where ParameterType == Result<Future<Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Result<Optional<Output>,Secondary2>> where ParameterType == Result<Optional<Input>,Secondary2>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Result<Reader<Secondary3,Output>,Secondary2>> where ParameterType == Result<Reader<Secondary3,Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Result<Result<Output,Secondary3>,Secondary2>> where ParameterType == Result<Result<Input,Secondary3>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Result<State<Secondary3,Output>,Secondary2>> where ParameterType == Result<State<Secondary3,Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Result<Writer<Secondary3,Output>,Secondary2>> where ParameterType == Result<Writer<Secondary3,Input>,Secondary2>  {
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
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<State<Secondary2,Result<Output,Secondary3>>> where ParameterType == State<Secondary2,Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Effect<Writer<Secondary2,Result<Output,Secondary3>>> where ParameterType == Writer<Secondary2,Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Array<Result<Output,Secondary3>>> where ParameterType == Array<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Effect<Result<Output,Secondary3>>> where ParameterType == Effect<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Future<Result<Output,Secondary3>>> where ParameterType == Future<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Optional<Result<Output,Secondary3>>> where ParameterType == Optional<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Reader<Secondary2,Result<Output,Secondary3>>> where ParameterType == Reader<Secondary2,Result<Input,Secondary3>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Reader<Secondary2,State<Secondary3,Output>>> where ParameterType == Reader<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Reader<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Result<Array<Output>,Secondary2>> where ParameterType == Result<Array<Input>,Secondary2>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Result<Effect<Output>,Secondary2>> where ParameterType == Result<Effect<Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Result<Future<Output>,Secondary2>> where ParameterType == Result<Future<Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Result<Optional<Output>,Secondary2>> where ParameterType == Result<Optional<Input>,Secondary2>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Result<Reader<Secondary3,Output>,Secondary2>> where ParameterType == Result<Reader<Secondary3,Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Result<Result<Output,Secondary3>,Secondary2>> where ParameterType == Result<Result<Input,Secondary3>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Result<State<Secondary3,Output>,Secondary2>> where ParameterType == Result<State<Secondary3,Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Result<Writer<Secondary3,Output>,Secondary2>> where ParameterType == Result<Writer<Secondary3,Input>,Secondary2>  {
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
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<State<Secondary2,Result<Output,Secondary3>>> where ParameterType == State<Secondary2,Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Future<Writer<Secondary2,Result<Output,Secondary3>>> where ParameterType == Writer<Secondary2,Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Optional<Array<Result<Output,Secondary3>>> where ParameterType == Array<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Effect<Result<Output,Secondary3>>> where ParameterType == Effect<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Future<Result<Output,Secondary3>>> where ParameterType == Future<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Optional<Optional<Result<Output,Secondary3>>> where ParameterType == Optional<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Reader<Secondary2,Result<Output,Secondary3>>> where ParameterType == Reader<Secondary2,Result<Input,Secondary3>>  {
		return fmap { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Reader<Secondary2,State<Secondary3,Output>>> where ParameterType == Reader<Secondary2,State<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Reader<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Writer<Secondary3,Input>>  {
		return fmap { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Optional<Result<Array<Output>,Secondary2>> where ParameterType == Result<Array<Input>,Secondary2>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Result<Effect<Output>,Secondary2>> where ParameterType == Result<Effect<Input>,Secondary2>  {
		return fmap { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Result<Future<Output>,Secondary2>> where ParameterType == Result<Future<Input>,Secondary2>  {
		return fmap { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Optional<Result<Optional<Output>,Secondary2>> where ParameterType == Result<Optional<Input>,Secondary2>  {
		return fmap { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Result<Reader<Secondary3,Output>,Secondary2>> where ParameterType == Result<Reader<Secondary3,Input>,Secondary2>  {
		return fmap { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Optional<Result<Result<Output,Secondary3>,Secondary2>> where ParameterType == Result<Result<Input,Secondary3>,Secondary2>  {
		return fmap { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<Result<State<Secondary3,Output>,Secondary2>> where ParameterType == Result<State<Secondary3,Input>,Secondary2>  {
		return fmap { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Optional<Result<Writer<Secondary3,Output>,Secondary2>> where ParameterType == Result<Writer<Secondary3,Input>,Secondary2>  {
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
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Optional<State<Secondary2,Result<Output,Secondary3>>> where ParameterType == State<Secondary2,Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Optional<Writer<Secondary2,Result<Output,Secondary3>>> where ParameterType == Writer<Secondary2,Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Array<Result<Output,Secondary3>>> where ParameterType == Array<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Effect<Result<Output,Secondary3>>> where ParameterType == Effect<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Future<Result<Output,Secondary3>>> where ParameterType == Future<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Optional<Result<Output,Secondary3>>> where ParameterType == Optional<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Reader<Secondary2,Result<Output,Secondary3>>> where ParameterType == Reader<Secondary2,Result<Input,Secondary3>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Reader<Secondary2,State<Secondary3,Output>>> where ParameterType == Reader<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Reader<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Result<Array<Output>,Secondary2>> where ParameterType == Result<Array<Input>,Secondary2>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Result<Effect<Output>,Secondary2>> where ParameterType == Result<Effect<Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Result<Future<Output>,Secondary2>> where ParameterType == Result<Future<Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Result<Optional<Output>,Secondary2>> where ParameterType == Result<Optional<Input>,Secondary2>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Result<Reader<Secondary3,Output>,Secondary2>> where ParameterType == Result<Reader<Secondary3,Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Result<Result<Output,Secondary3>,Secondary2>> where ParameterType == Result<Result<Input,Secondary3>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Result<State<Secondary3,Output>,Secondary2>> where ParameterType == Result<State<Secondary3,Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Result<Writer<Secondary3,Output>,Secondary2>> where ParameterType == Result<Writer<Secondary3,Input>,Secondary2>  {
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
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,State<Secondary2,Result<Output,Secondary3>>> where ParameterType == State<Secondary2,Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Reader<Environment,Writer<Secondary2,Result<Output,Secondary3>>> where ParameterType == Writer<Secondary2,Result<Input,Secondary3>>  {
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
	func mapTT <Input,Output> (_ transform: (Input) -> Output) -> Result<Array<Array<Output>>,Failure> where ParameterType == Array<Array<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}
	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Array<Effect<Output>>,Failure> where ParameterType == Array<Effect<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}
	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Array<Future<Output>>,Failure> where ParameterType == Array<Future<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}
	func mapTT <Input,Output> (_ transform: (Input) -> Output) -> Result<Array<Optional<Output>>,Failure> where ParameterType == Array<Optional<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Array<Reader<Secondary3,Output>>,Failure> where ParameterType == Array<Reader<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}
	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Result<Array<Result<Output,Secondary3>>,Failure> where ParameterType == Array<Result<Input,Secondary3>>  {
		return map { $0.fmap { $0.map(transform) } }
	}
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Array<State<Secondary3,Output>>,Failure> where ParameterType == Array<State<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}
	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Result<Array<Writer<Secondary3,Output>>,Failure> where ParameterType == Array<Writer<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}
	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Effect<Array<Output>>,Failure> where ParameterType == Effect<Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Effect<Effect<Output>>,Failure> where ParameterType == Effect<Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Effect<Future<Output>>,Failure> where ParameterType == Effect<Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Effect<Optional<Output>>,Failure> where ParameterType == Effect<Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Effect<Reader<Secondary3,Output>>,Failure> where ParameterType == Effect<Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Effect<Result<Output,Secondary3>>,Failure> where ParameterType == Effect<Result<Input,Secondary3>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Effect<State<Secondary3,Output>>,Failure> where ParameterType == Effect<State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Effect<Writer<Secondary3,Output>>,Failure> where ParameterType == Effect<Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Future<Array<Output>>,Failure> where ParameterType == Future<Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Future<Effect<Output>>,Failure> where ParameterType == Future<Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Future<Future<Output>>,Failure> where ParameterType == Future<Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Future<Optional<Output>>,Failure> where ParameterType == Future<Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Future<Reader<Secondary3,Output>>,Failure> where ParameterType == Future<Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Future<Result<Output,Secondary3>>,Failure> where ParameterType == Future<Result<Input,Secondary3>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Future<State<Secondary3,Output>>,Failure> where ParameterType == Future<State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Future<Writer<Secondary3,Output>>,Failure> where ParameterType == Future<Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Input,Output> (_ transform: (Input) -> Output) -> Result<Optional<Array<Output>>,Failure> where ParameterType == Optional<Array<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}
	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Optional<Effect<Output>>,Failure> where ParameterType == Optional<Effect<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}
	func mapTT <Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Optional<Future<Output>>,Failure> where ParameterType == Optional<Future<Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}
	func mapTT <Input,Output> (_ transform: (Input) -> Output) -> Result<Optional<Optional<Output>>,Failure> where ParameterType == Optional<Optional<Input>>  {
		return map { $0.fmap { $0.fmap(transform) } }
	}
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Optional<Reader<Secondary3,Output>>,Failure> where ParameterType == Optional<Reader<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}
	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Result<Optional<Result<Output,Secondary3>>,Failure> where ParameterType == Optional<Result<Input,Secondary3>>  {
		return map { $0.fmap { $0.map(transform) } }
	}
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Optional<State<Secondary3,Output>>,Failure> where ParameterType == Optional<State<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}
	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Result<Optional<Writer<Secondary3,Output>>,Failure> where ParameterType == Optional<Writer<Secondary3,Input>>  {
		return map { $0.fmap { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Reader<Secondary2,Array<Output>>,Failure> where ParameterType == Reader<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Reader<Secondary2,Effect<Output>>,Failure> where ParameterType == Reader<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Reader<Secondary2,Future<Output>>,Failure> where ParameterType == Reader<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Reader<Secondary2,Optional<Output>>,Failure> where ParameterType == Reader<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Reader<Secondary2,Reader<Secondary3,Output>>,Failure> where ParameterType == Reader<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Reader<Secondary2,Result<Output,Secondary3>>,Failure> where ParameterType == Reader<Secondary2,Result<Input,Secondary3>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Reader<Secondary2,State<Secondary3,Output>>,Failure> where ParameterType == Reader<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Reader<Secondary2,Writer<Secondary3,Output>>,Failure> where ParameterType == Reader<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Result<Result<Array<Output>,Secondary2>,Failure> where ParameterType == Result<Array<Input>,Secondary2>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Result<Effect<Output>,Secondary2>,Failure> where ParameterType == Result<Effect<Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Result<Future<Output>,Secondary2>,Failure> where ParameterType == Result<Future<Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Result<Result<Optional<Output>,Secondary2>,Failure> where ParameterType == Result<Optional<Input>,Secondary2>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Result<Reader<Secondary3,Output>,Secondary2>,Failure> where ParameterType == Result<Reader<Secondary3,Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Result<Result<Result<Output,Secondary3>,Secondary2>,Failure> where ParameterType == Result<Result<Input,Secondary3>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Result<State<Secondary3,Output>,Secondary2>,Failure> where ParameterType == Result<State<Secondary3,Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Result<Result<Writer<Secondary3,Output>,Secondary2>,Failure> where ParameterType == Result<Writer<Secondary3,Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<State<Secondary2,Array<Output>>,Failure> where ParameterType == State<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<State<Secondary2,Effect<Output>>,Failure> where ParameterType == State<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<State<Secondary2,Future<Output>>,Failure> where ParameterType == State<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<State<Secondary2,Optional<Output>>,Failure> where ParameterType == State<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<State<Secondary2,Reader<Secondary3,Output>>,Failure> where ParameterType == State<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<State<Secondary2,Result<Output,Secondary3>>,Failure> where ParameterType == State<Secondary2,Result<Input,Secondary3>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<State<Secondary2,State<Secondary3,Output>>,Failure> where ParameterType == State<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<State<Secondary2,Writer<Secondary3,Output>>,Failure> where ParameterType == State<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Result<Writer<Secondary2,Array<Output>>,Failure> where ParameterType == Writer<Secondary2,Array<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Writer<Secondary2,Effect<Output>>,Failure> where ParameterType == Writer<Secondary2,Effect<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Writer<Secondary2,Future<Output>>,Failure> where ParameterType == Writer<Secondary2,Future<Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Result<Writer<Secondary2,Optional<Output>>,Failure> where ParameterType == Writer<Secondary2,Optional<Input>>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Writer<Secondary2,Reader<Secondary3,Output>>,Failure> where ParameterType == Writer<Secondary2,Reader<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Result<Writer<Secondary2,Result<Output,Secondary3>>,Failure> where ParameterType == Writer<Secondary2,Result<Input,Secondary3>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Result<Writer<Secondary2,State<Secondary3,Output>>,Failure> where ParameterType == Writer<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Result<Writer<Secondary2,Writer<Secondary3,Output>>,Failure> where ParameterType == Writer<Secondary2,Writer<Secondary3,Input>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Array<Result<Output,Secondary3>>> where ParameterType == Array<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Effect<Result<Output,Secondary3>>> where ParameterType == Effect<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Future<Result<Output,Secondary3>>> where ParameterType == Future<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Optional<Result<Output,Secondary3>>> where ParameterType == Optional<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Reader<Secondary2,Result<Output,Secondary3>>> where ParameterType == Reader<Secondary2,Result<Input,Secondary3>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Reader<Secondary2,State<Secondary3,Output>>> where ParameterType == Reader<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Reader<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Result<Array<Output>,Secondary2>> where ParameterType == Result<Array<Input>,Secondary2>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Result<Effect<Output>,Secondary2>> where ParameterType == Result<Effect<Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Result<Future<Output>,Secondary2>> where ParameterType == Result<Future<Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Result<Optional<Output>,Secondary2>> where ParameterType == Result<Optional<Input>,Secondary2>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Result<Reader<Secondary3,Output>,Secondary2>> where ParameterType == Result<Reader<Secondary3,Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Result<Result<Output,Secondary3>,Secondary2>> where ParameterType == Result<Result<Input,Secondary3>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Result<State<Secondary3,Output>,Secondary2>> where ParameterType == Result<State<Secondary3,Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Result<Writer<Secondary3,Output>,Secondary2>> where ParameterType == Result<Writer<Secondary3,Input>,Secondary2>  {
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
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,State<Secondary2,Result<Output,Secondary3>>> where ParameterType == State<Secondary2,Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> State<Model,Writer<Secondary2,Result<Output,Secondary3>>> where ParameterType == Writer<Secondary2,Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Array<Result<Output,Secondary3>>> where ParameterType == Array<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Effect<Result<Output,Secondary3>>> where ParameterType == Effect<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Future<Result<Output,Secondary3>>> where ParameterType == Future<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Optional<Result<Output,Secondary3>>> where ParameterType == Optional<Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Reader<Secondary2,Result<Output,Secondary3>>> where ParameterType == Reader<Secondary2,Result<Input,Secondary3>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Reader<Secondary2,State<Secondary3,Output>>> where ParameterType == Reader<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Reader<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Reader<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Result<Array<Output>,Secondary2>> where ParameterType == Result<Array<Input>,Secondary2>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Result<Effect<Output>,Secondary2>> where ParameterType == Result<Effect<Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Result<Future<Output>,Secondary2>> where ParameterType == Result<Future<Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Result<Optional<Output>,Secondary2>> where ParameterType == Result<Optional<Input>,Secondary2>  {
		return map { $0.map { $0.fmap(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Result<Reader<Secondary3,Output>,Secondary2>> where ParameterType == Result<Reader<Secondary3,Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Result<Result<Output,Secondary3>,Secondary2>> where ParameterType == Result<Result<Input,Secondary3>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Result<State<Secondary3,Output>,Secondary2>> where ParameterType == Result<State<Secondary3,Input>,Secondary2>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Result<Writer<Secondary3,Output>,Secondary2>> where ParameterType == Result<Writer<Secondary3,Input>,Secondary2>  {
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
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,State<Secondary2,Result<Output,Secondary3>>> where ParameterType == State<Secondary2,Result<Input,Secondary3>>  {
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
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Writer<Secondary2,Result<Output,Secondary3>>> where ParameterType == Writer<Secondary2,Result<Input,Secondary3>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Output) -> Writer<Log,Writer<Secondary2,State<Secondary3,Output>>> where ParameterType == Writer<Secondary2,State<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
	func mapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Output) -> Writer<Log,Writer<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Writer<Secondary3,Input>>  {
		return map { $0.map { $0.map(transform) } }
	}
}
