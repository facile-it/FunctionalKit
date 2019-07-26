// Generated using Sourcery 0.16.0 — https://github.com/krzysztofzablocki/Sourcery
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
	func flatMapT <Secondary,Input,Output> (_ transform: (Input) -> Array<Result<Output,Secondary>>) -> Array<Result<Output,Secondary>> where ParameterType == Result<Input,Secondary> {
        return flatMap { (value) -> Array<Result<Output,Secondary>> in
			value.traverse(transform).fmap { $0.joined() }
        }
    }
	func flatMapT <Secondary,Input,Output> (_ transform: (Input) -> Array<Writer<Secondary,Output>>) -> Array<Writer<Secondary,Output>> where ParameterType == Writer<Secondary,Input> {
        return flatMap { (value) -> Array<Writer<Secondary,Output>> in
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
	func flatMapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Effect<Result<Output,Secondary>>) -> Effect<Result<Output,Secondary>> where ParameterType == Result<Input,Secondary> {
        return flatMap { (value) -> Effect<Result<Output,Secondary>> in
			value.traverse(transform).map { $0.joined() }
        }
    }
	func flatMapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Effect<Writer<Secondary,Output>>) -> Effect<Writer<Secondary,Output>> where ParameterType == Writer<Secondary,Input> {
        return flatMap { (value) -> Effect<Writer<Secondary,Output>> in
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
	func flatMapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Future<Result<Output,Secondary>>) -> Future<Result<Output,Secondary>> where ParameterType == Result<Input,Secondary> {
        return flatMap { (value) -> Future<Result<Output,Secondary>> in
			value.traverse(transform).map { $0.joined() }
        }
    }
	func flatMapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Future<Writer<Secondary,Output>>) -> Future<Writer<Secondary,Output>> where ParameterType == Writer<Secondary,Input> {
        return flatMap { (value) -> Future<Writer<Secondary,Output>> in
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
	func flatMapT <Secondary,Input,Output> (_ transform: (Input) -> Optional<Result<Output,Secondary>>) -> Optional<Result<Output,Secondary>> where ParameterType == Result<Input,Secondary> {
        return flatMap { (value) -> Optional<Result<Output,Secondary>> in
			value.traverse(transform).fmap { $0.joined() }
        }
    }
	func flatMapT <Secondary,Input,Output> (_ transform: (Input) -> Optional<Writer<Secondary,Output>>) -> Optional<Writer<Secondary,Output>> where ParameterType == Writer<Secondary,Input> {
        return flatMap { (value) -> Optional<Writer<Secondary,Output>> in
			value.traverse(transform).fmap { $0.joined() }
        }
    }
}
public extension Result {
	func flatMapT <Input,Output> (_ transform: (Input) -> Result<Array<Output>,Failure>) -> Result<Array<Output>,Failure> where ParameterType == Array<Input> {
        return flatMap { (value) -> Result<Array<Output>,Failure> in
			value.traverse(transform).map { $0.flatMap(f.identity) }
        }
    }
	func flatMapT <Input,Output> (_ transform: (Input) -> Result<Optional<Output>,Failure>) -> Result<Optional<Output>,Failure> where ParameterType == Optional<Input> {
        return flatMap { (value) -> Result<Optional<Output>,Failure> in
			value.traverse(transform).map { $0.joined() }
        }
    }
	func flatMapT <Secondary,Input,Output> (_ transform: (Input) -> Result<Result<Output,Secondary>,Failure>) -> Result<Result<Output,Secondary>,Failure> where ParameterType == Result<Input,Secondary> {
        return flatMap { (value) -> Result<Result<Output,Secondary>,Failure> in
			value.traverse(transform).map { $0.joined() }
        }
    }
	func flatMapT <Secondary,Input,Output> (_ transform: (Input) -> Result<Writer<Secondary,Output>,Failure>) -> Result<Writer<Secondary,Output>,Failure> where ParameterType == Writer<Secondary,Input> {
        return flatMap { (value) -> Result<Writer<Secondary,Output>,Failure> in
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
	func flatMapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> State<Model,Result<Output,Secondary>>) -> State<Model,Result<Output,Secondary>> where ParameterType == Result<Input,Secondary> {
        return flatMap { (value) -> State<Model,Result<Output,Secondary>> in
			value.traverse(transform).map { $0.joined() }
        }
    }
	func flatMapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> State<Model,Writer<Secondary,Output>>) -> State<Model,Writer<Secondary,Output>> where ParameterType == Writer<Secondary,Input> {
        return flatMap { (value) -> State<Model,Writer<Secondary,Output>> in
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
	func flatMapT <Secondary,Input,Output> (_ transform: (Input) -> Writer<Log,Result<Output,Secondary>>) -> Writer<Log,Result<Output,Secondary>> where ParameterType == Result<Input,Secondary> {
        return flatMap { (value) -> Writer<Log,Result<Output,Secondary>> in
			value.traverse(transform).map { $0.joined() }
        }
    }
	func flatMapT <Secondary,Input,Output> (_ transform: (Input) -> Writer<Log,Writer<Secondary,Output>>) -> Writer<Log,Writer<Secondary,Output>> where ParameterType == Writer<Secondary,Input> {
        return flatMap { (value) -> Writer<Log,Writer<Secondary,Output>> in
			value.traverse(transform).map { $0.joined() }
        }
    }
}
