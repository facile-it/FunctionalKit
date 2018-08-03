// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT











public extension Array {




	func flatMapT <Input,Output> (_ transform: (Input) -> Array<Array<Output>>) -> Array<Array<Output>> where ParameterType == Array<Input> {
        return flatMap { (value) -> Array<Array<Output>> in
			value.traverse(transform).fmap { $0.flatMap(f.identity) }
        }
    }



	func flatMapT <Input,Output> (_ transform: (Input) -> Array<Optional<Output>>) -> Array<Optional<Output>> where ParameterType == Optional<Input> {
        return flatMap { (value) -> Array<Optional<Output>> in
			value.traverse(transform).fmap { $0.joined() }
        }
    }



	func flatMapT <Secondary2,Input,Output> (_ transform: (Input) -> Array<Result<Secondary2,Output>>) -> Array<Result<Secondary2,Output>> where ParameterType == Result<Secondary2,Input> {
        return flatMap { (value) -> Array<Result<Secondary2,Output>> in
			value.traverse(transform).fmap { $0.joined() }
        }
    }



	func flatMapT <Secondary2,Input,Output> (_ transform: (Input) -> Array<Writer<Secondary2,Output>>) -> Array<Writer<Secondary2,Output>> where ParameterType == Writer<Secondary2,Input> {
        return flatMap { (value) -> Array<Writer<Secondary2,Output>> in
			value.traverse(transform).fmap { $0.joined() }
        }
    }
}




public extension Effect {




	func flatMapT <Input,Output> (_ transform: @escaping (Input) -> Effect<Array<Output>>) -> Effect<Array<Output>> where ParameterType == Array<Input> {
        return flatMap { (value) -> Effect<Array<Output>> in
			value.traverse(transform).map { $0.flatMap(f.identity) }
        }
    }



	func flatMapT <Input,Output> (_ transform: @escaping (Input) -> Effect<Optional<Output>>) -> Effect<Optional<Output>> where ParameterType == Optional<Input> {
        return flatMap { (value) -> Effect<Optional<Output>> in
			value.traverse(transform).map { $0.joined() }
        }
    }



	func flatMapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Effect<Result<Secondary2,Output>>) -> Effect<Result<Secondary2,Output>> where ParameterType == Result<Secondary2,Input> {
        return flatMap { (value) -> Effect<Result<Secondary2,Output>> in
			value.traverse(transform).map { $0.joined() }
        }
    }



	func flatMapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Effect<Writer<Secondary2,Output>>) -> Effect<Writer<Secondary2,Output>> where ParameterType == Writer<Secondary2,Input> {
        return flatMap { (value) -> Effect<Writer<Secondary2,Output>> in
			value.traverse(transform).map { $0.joined() }
        }
    }
}




public extension Future {




	func flatMapT <Input,Output> (_ transform: @escaping (Input) -> Future<Array<Output>>) -> Future<Array<Output>> where ParameterType == Array<Input> {
        return flatMap { (value) -> Future<Array<Output>> in
			value.traverse(transform).map { $0.flatMap(f.identity) }
        }
    }



	func flatMapT <Input,Output> (_ transform: @escaping (Input) -> Future<Optional<Output>>) -> Future<Optional<Output>> where ParameterType == Optional<Input> {
        return flatMap { (value) -> Future<Optional<Output>> in
			value.traverse(transform).map { $0.joined() }
        }
    }



	func flatMapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Future<Result<Secondary2,Output>>) -> Future<Result<Secondary2,Output>> where ParameterType == Result<Secondary2,Input> {
        return flatMap { (value) -> Future<Result<Secondary2,Output>> in
			value.traverse(transform).map { $0.joined() }
        }
    }



	func flatMapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Future<Writer<Secondary2,Output>>) -> Future<Writer<Secondary2,Output>> where ParameterType == Writer<Secondary2,Input> {
        return flatMap { (value) -> Future<Writer<Secondary2,Output>> in
			value.traverse(transform).map { $0.joined() }
        }
    }
}




public extension Optional {




	func flatMapT <Input,Output> (_ transform: (Input) -> Optional<Array<Output>>) -> Optional<Array<Output>> where ParameterType == Array<Input> {
        return flatMap { (value) -> Optional<Array<Output>> in
			value.traverse(transform).fmap { $0.flatMap(f.identity) }
        }
    }



	func flatMapT <Input,Output> (_ transform: (Input) -> Optional<Optional<Output>>) -> Optional<Optional<Output>> where ParameterType == Optional<Input> {
        return flatMap { (value) -> Optional<Optional<Output>> in
			value.traverse(transform).fmap { $0.joined() }
        }
    }



	func flatMapT <Secondary2,Input,Output> (_ transform: (Input) -> Optional<Result<Secondary2,Output>>) -> Optional<Result<Secondary2,Output>> where ParameterType == Result<Secondary2,Input> {
        return flatMap { (value) -> Optional<Result<Secondary2,Output>> in
			value.traverse(transform).fmap { $0.joined() }
        }
    }



	func flatMapT <Secondary2,Input,Output> (_ transform: (Input) -> Optional<Writer<Secondary2,Output>>) -> Optional<Writer<Secondary2,Output>> where ParameterType == Writer<Secondary2,Input> {
        return flatMap { (value) -> Optional<Writer<Secondary2,Output>> in
			value.traverse(transform).fmap { $0.joined() }
        }
    }
}




public extension Result {




	func flatMapT <Input,Output> (_ transform: (Input) -> Result<Failure,Array<Output>>) -> Result<Failure,Array<Output>> where ParameterType == Array<Input> {
        return flatMap { (value) -> Result<Failure,Array<Output>> in
			value.traverse(transform).map { $0.flatMap(f.identity) }
        }
    }



	func flatMapT <Input,Output> (_ transform: (Input) -> Result<Failure,Optional<Output>>) -> Result<Failure,Optional<Output>> where ParameterType == Optional<Input> {
        return flatMap { (value) -> Result<Failure,Optional<Output>> in
			value.traverse(transform).map { $0.joined() }
        }
    }



	func flatMapT <Secondary2,Input,Output> (_ transform: (Input) -> Result<Failure,Result<Secondary2,Output>>) -> Result<Failure,Result<Secondary2,Output>> where ParameterType == Result<Secondary2,Input> {
        return flatMap { (value) -> Result<Failure,Result<Secondary2,Output>> in
			value.traverse(transform).map { $0.joined() }
        }
    }



	func flatMapT <Secondary2,Input,Output> (_ transform: (Input) -> Result<Failure,Writer<Secondary2,Output>>) -> Result<Failure,Writer<Secondary2,Output>> where ParameterType == Writer<Secondary2,Input> {
        return flatMap { (value) -> Result<Failure,Writer<Secondary2,Output>> in
			value.traverse(transform).map { $0.joined() }
        }
    }
}




public extension State {




	func flatMapT <Input,Output> (_ transform: @escaping (Input) -> State<Model,Array<Output>>) -> State<Model,Array<Output>> where ParameterType == Array<Input> {
        return flatMap { (value) -> State<Model,Array<Output>> in
			value.traverse(transform).map { $0.flatMap(f.identity) }
        }
    }



	func flatMapT <Input,Output> (_ transform: @escaping (Input) -> State<Model,Optional<Output>>) -> State<Model,Optional<Output>> where ParameterType == Optional<Input> {
        return flatMap { (value) -> State<Model,Optional<Output>> in
			value.traverse(transform).map { $0.joined() }
        }
    }



	func flatMapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> State<Model,Result<Secondary2,Output>>) -> State<Model,Result<Secondary2,Output>> where ParameterType == Result<Secondary2,Input> {
        return flatMap { (value) -> State<Model,Result<Secondary2,Output>> in
			value.traverse(transform).map { $0.joined() }
        }
    }



	func flatMapT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> State<Model,Writer<Secondary2,Output>>) -> State<Model,Writer<Secondary2,Output>> where ParameterType == Writer<Secondary2,Input> {
        return flatMap { (value) -> State<Model,Writer<Secondary2,Output>> in
			value.traverse(transform).map { $0.joined() }
        }
    }
}




public extension Writer {




	func flatMapT <Input,Output> (_ transform: (Input) -> Writer<Log,Array<Output>>) -> Writer<Log,Array<Output>> where ParameterType == Array<Input> {
        return flatMap { (value) -> Writer<Log,Array<Output>> in
			value.traverse(transform).map { $0.flatMap(f.identity) }
        }
    }



	func flatMapT <Input,Output> (_ transform: (Input) -> Writer<Log,Optional<Output>>) -> Writer<Log,Optional<Output>> where ParameterType == Optional<Input> {
        return flatMap { (value) -> Writer<Log,Optional<Output>> in
			value.traverse(transform).map { $0.joined() }
        }
    }



	func flatMapT <Secondary2,Input,Output> (_ transform: (Input) -> Writer<Log,Result<Secondary2,Output>>) -> Writer<Log,Result<Secondary2,Output>> where ParameterType == Result<Secondary2,Input> {
        return flatMap { (value) -> Writer<Log,Result<Secondary2,Output>> in
			value.traverse(transform).map { $0.joined() }
        }
    }



	func flatMapT <Secondary2,Input,Output> (_ transform: (Input) -> Writer<Log,Writer<Secondary2,Output>>) -> Writer<Log,Writer<Secondary2,Output>> where ParameterType == Writer<Secondary2,Input> {
        return flatMap { (value) -> Writer<Log,Writer<Secondary2,Output>> in
			value.traverse(transform).map { $0.joined() }
        }
    }
}



