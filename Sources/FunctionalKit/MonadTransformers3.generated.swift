// Generated using Sourcery 1.0.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT



public extension Array {
	func flatMapTT <Input,Output> (_ transform: (Input) -> Array<Array<Array<Output>>>) -> Array<Array<Array<Output>>> where ParameterType == Array<Array<Input>> {
		return flatMapT { (value) -> Array<Array<Array<Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Input,Output> (_ transform: (Input) -> Array<Array<Optional<Output>>>) -> Array<Array<Optional<Output>>> where ParameterType == Array<Optional<Input>> {
		return flatMapT { (value) -> Array<Array<Optional<Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Array<Array<Result<Output,Secondary3>>>) -> Array<Array<Result<Output,Secondary3>>> where ParameterType == Array<Result<Input,Secondary3>> {
		return flatMapT { (value) -> Array<Array<Result<Output,Secondary3>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Array<Array<Writer<Secondary3,Output>>>) -> Array<Array<Writer<Secondary3,Output>>> where ParameterType == Array<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Array<Array<Writer<Secondary3,Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Input,Output> (_ transform: (Input) -> Array<Optional<Array<Output>>>) -> Array<Optional<Array<Output>>> where ParameterType == Optional<Array<Input>> {
		return flatMapT { (value) -> Array<Optional<Array<Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Input,Output> (_ transform: (Input) -> Array<Optional<Optional<Output>>>) -> Array<Optional<Optional<Output>>> where ParameterType == Optional<Optional<Input>> {
		return flatMapT { (value) -> Array<Optional<Optional<Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Array<Optional<Result<Output,Secondary3>>>) -> Array<Optional<Result<Output,Secondary3>>> where ParameterType == Optional<Result<Input,Secondary3>> {
		return flatMapT { (value) -> Array<Optional<Result<Output,Secondary3>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Array<Optional<Writer<Secondary3,Output>>>) -> Array<Optional<Writer<Secondary3,Output>>> where ParameterType == Optional<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Array<Optional<Writer<Secondary3,Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Array<Result<Array<Output>,Secondary2>>) -> Array<Result<Array<Output>,Secondary2>> where ParameterType == Result<Array<Input>,Secondary2> {
		return flatMapT { (value) -> Array<Result<Array<Output>,Secondary2>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Array<Result<Optional<Output>,Secondary2>>) -> Array<Result<Optional<Output>,Secondary2>> where ParameterType == Result<Optional<Input>,Secondary2> {
		return flatMapT { (value) -> Array<Result<Optional<Output>,Secondary2>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Array<Result<Result<Output,Secondary3>,Secondary2>>) -> Array<Result<Result<Output,Secondary3>,Secondary2>> where ParameterType == Result<Result<Input,Secondary3>,Secondary2> {
		return flatMapT { (value) -> Array<Result<Result<Output,Secondary3>,Secondary2>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Array<Result<Writer<Secondary3,Output>,Secondary2>>) -> Array<Result<Writer<Secondary3,Output>,Secondary2>> where ParameterType == Result<Writer<Secondary3,Input>,Secondary2> {
		return flatMapT { (value) -> Array<Result<Writer<Secondary3,Output>,Secondary2>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Array<Writer<Secondary2,Array<Output>>>) -> Array<Writer<Secondary2,Array<Output>>> where ParameterType == Writer<Secondary2,Array<Input>> {
		return flatMapT { (value) -> Array<Writer<Secondary2,Array<Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Array<Writer<Secondary2,Optional<Output>>>) -> Array<Writer<Secondary2,Optional<Output>>> where ParameterType == Writer<Secondary2,Optional<Input>> {
		return flatMapT { (value) -> Array<Writer<Secondary2,Optional<Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Array<Writer<Secondary2,Result<Output,Secondary3>>>) -> Array<Writer<Secondary2,Result<Output,Secondary3>>> where ParameterType == Writer<Secondary2,Result<Input,Secondary3>> {
		return flatMapT { (value) -> Array<Writer<Secondary2,Result<Output,Secondary3>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Array<Writer<Secondary2,Writer<Secondary3,Output>>>) -> Array<Writer<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Array<Writer<Secondary2,Writer<Secondary3,Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
}



public extension Effect {
	func flatMapTT <Input,Output> (_ transform: @escaping (Input) -> Effect<Array<Array<Output>>>) -> Effect<Array<Array<Output>>> where ParameterType == Array<Array<Input>> {
		return flatMapT { (value) -> Effect<Array<Array<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Input,Output> (_ transform: @escaping (Input) -> Effect<Array<Optional<Output>>>) -> Effect<Array<Optional<Output>>> where ParameterType == Array<Optional<Input>> {
		return flatMapT { (value) -> Effect<Array<Optional<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Effect<Array<Result<Output,Secondary3>>>) -> Effect<Array<Result<Output,Secondary3>>> where ParameterType == Array<Result<Input,Secondary3>> {
		return flatMapT { (value) -> Effect<Array<Result<Output,Secondary3>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Effect<Array<Writer<Secondary3,Output>>>) -> Effect<Array<Writer<Secondary3,Output>>> where ParameterType == Array<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Effect<Array<Writer<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Input,Output> (_ transform: @escaping (Input) -> Effect<Optional<Array<Output>>>) -> Effect<Optional<Array<Output>>> where ParameterType == Optional<Array<Input>> {
		return flatMapT { (value) -> Effect<Optional<Array<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Input,Output> (_ transform: @escaping (Input) -> Effect<Optional<Optional<Output>>>) -> Effect<Optional<Optional<Output>>> where ParameterType == Optional<Optional<Input>> {
		return flatMapT { (value) -> Effect<Optional<Optional<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Effect<Optional<Result<Output,Secondary3>>>) -> Effect<Optional<Result<Output,Secondary3>>> where ParameterType == Optional<Result<Input,Secondary3>> {
		return flatMapT { (value) -> Effect<Optional<Result<Output,Secondary3>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Effect<Optional<Writer<Secondary3,Output>>>) -> Effect<Optional<Writer<Secondary3,Output>>> where ParameterType == Optional<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Effect<Optional<Writer<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Effect<Result<Array<Output>,Secondary2>>) -> Effect<Result<Array<Output>,Secondary2>> where ParameterType == Result<Array<Input>,Secondary2> {
		return flatMapT { (value) -> Effect<Result<Array<Output>,Secondary2>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Effect<Result<Optional<Output>,Secondary2>>) -> Effect<Result<Optional<Output>,Secondary2>> where ParameterType == Result<Optional<Input>,Secondary2> {
		return flatMapT { (value) -> Effect<Result<Optional<Output>,Secondary2>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Effect<Result<Result<Output,Secondary3>,Secondary2>>) -> Effect<Result<Result<Output,Secondary3>,Secondary2>> where ParameterType == Result<Result<Input,Secondary3>,Secondary2> {
		return flatMapT { (value) -> Effect<Result<Result<Output,Secondary3>,Secondary2>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Effect<Result<Writer<Secondary3,Output>,Secondary2>>) -> Effect<Result<Writer<Secondary3,Output>,Secondary2>> where ParameterType == Result<Writer<Secondary3,Input>,Secondary2> {
		return flatMapT { (value) -> Effect<Result<Writer<Secondary3,Output>,Secondary2>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Effect<Writer<Secondary2,Array<Output>>>) -> Effect<Writer<Secondary2,Array<Output>>> where ParameterType == Writer<Secondary2,Array<Input>> {
		return flatMapT { (value) -> Effect<Writer<Secondary2,Array<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Effect<Writer<Secondary2,Optional<Output>>>) -> Effect<Writer<Secondary2,Optional<Output>>> where ParameterType == Writer<Secondary2,Optional<Input>> {
		return flatMapT { (value) -> Effect<Writer<Secondary2,Optional<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Effect<Writer<Secondary2,Result<Output,Secondary3>>>) -> Effect<Writer<Secondary2,Result<Output,Secondary3>>> where ParameterType == Writer<Secondary2,Result<Input,Secondary3>> {
		return flatMapT { (value) -> Effect<Writer<Secondary2,Result<Output,Secondary3>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Effect<Writer<Secondary2,Writer<Secondary3,Output>>>) -> Effect<Writer<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Effect<Writer<Secondary2,Writer<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
}



public extension Future {
	func flatMapTT <Input,Output> (_ transform: @escaping (Input) -> Future<Array<Array<Output>>>) -> Future<Array<Array<Output>>> where ParameterType == Array<Array<Input>> {
		return flatMapT { (value) -> Future<Array<Array<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Input,Output> (_ transform: @escaping (Input) -> Future<Array<Optional<Output>>>) -> Future<Array<Optional<Output>>> where ParameterType == Array<Optional<Input>> {
		return flatMapT { (value) -> Future<Array<Optional<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Future<Array<Result<Output,Secondary3>>>) -> Future<Array<Result<Output,Secondary3>>> where ParameterType == Array<Result<Input,Secondary3>> {
		return flatMapT { (value) -> Future<Array<Result<Output,Secondary3>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Future<Array<Writer<Secondary3,Output>>>) -> Future<Array<Writer<Secondary3,Output>>> where ParameterType == Array<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Future<Array<Writer<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Input,Output> (_ transform: @escaping (Input) -> Future<Optional<Array<Output>>>) -> Future<Optional<Array<Output>>> where ParameterType == Optional<Array<Input>> {
		return flatMapT { (value) -> Future<Optional<Array<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Input,Output> (_ transform: @escaping (Input) -> Future<Optional<Optional<Output>>>) -> Future<Optional<Optional<Output>>> where ParameterType == Optional<Optional<Input>> {
		return flatMapT { (value) -> Future<Optional<Optional<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Future<Optional<Result<Output,Secondary3>>>) -> Future<Optional<Result<Output,Secondary3>>> where ParameterType == Optional<Result<Input,Secondary3>> {
		return flatMapT { (value) -> Future<Optional<Result<Output,Secondary3>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Future<Optional<Writer<Secondary3,Output>>>) -> Future<Optional<Writer<Secondary3,Output>>> where ParameterType == Optional<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Future<Optional<Writer<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Future<Result<Array<Output>,Secondary2>>) -> Future<Result<Array<Output>,Secondary2>> where ParameterType == Result<Array<Input>,Secondary2> {
		return flatMapT { (value) -> Future<Result<Array<Output>,Secondary2>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Future<Result<Optional<Output>,Secondary2>>) -> Future<Result<Optional<Output>,Secondary2>> where ParameterType == Result<Optional<Input>,Secondary2> {
		return flatMapT { (value) -> Future<Result<Optional<Output>,Secondary2>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Future<Result<Result<Output,Secondary3>,Secondary2>>) -> Future<Result<Result<Output,Secondary3>,Secondary2>> where ParameterType == Result<Result<Input,Secondary3>,Secondary2> {
		return flatMapT { (value) -> Future<Result<Result<Output,Secondary3>,Secondary2>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Future<Result<Writer<Secondary3,Output>,Secondary2>>) -> Future<Result<Writer<Secondary3,Output>,Secondary2>> where ParameterType == Result<Writer<Secondary3,Input>,Secondary2> {
		return flatMapT { (value) -> Future<Result<Writer<Secondary3,Output>,Secondary2>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Future<Writer<Secondary2,Array<Output>>>) -> Future<Writer<Secondary2,Array<Output>>> where ParameterType == Writer<Secondary2,Array<Input>> {
		return flatMapT { (value) -> Future<Writer<Secondary2,Array<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Future<Writer<Secondary2,Optional<Output>>>) -> Future<Writer<Secondary2,Optional<Output>>> where ParameterType == Writer<Secondary2,Optional<Input>> {
		return flatMapT { (value) -> Future<Writer<Secondary2,Optional<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Future<Writer<Secondary2,Result<Output,Secondary3>>>) -> Future<Writer<Secondary2,Result<Output,Secondary3>>> where ParameterType == Writer<Secondary2,Result<Input,Secondary3>> {
		return flatMapT { (value) -> Future<Writer<Secondary2,Result<Output,Secondary3>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Future<Writer<Secondary2,Writer<Secondary3,Output>>>) -> Future<Writer<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Future<Writer<Secondary2,Writer<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
}



public extension Optional {
	func flatMapTT <Input,Output> (_ transform: (Input) -> Optional<Array<Array<Output>>>) -> Optional<Array<Array<Output>>> where ParameterType == Array<Array<Input>> {
		return flatMapT { (value) -> Optional<Array<Array<Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Input,Output> (_ transform: (Input) -> Optional<Array<Optional<Output>>>) -> Optional<Array<Optional<Output>>> where ParameterType == Array<Optional<Input>> {
		return flatMapT { (value) -> Optional<Array<Optional<Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Optional<Array<Result<Output,Secondary3>>>) -> Optional<Array<Result<Output,Secondary3>>> where ParameterType == Array<Result<Input,Secondary3>> {
		return flatMapT { (value) -> Optional<Array<Result<Output,Secondary3>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Optional<Array<Writer<Secondary3,Output>>>) -> Optional<Array<Writer<Secondary3,Output>>> where ParameterType == Array<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Optional<Array<Writer<Secondary3,Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Input,Output> (_ transform: (Input) -> Optional<Optional<Array<Output>>>) -> Optional<Optional<Array<Output>>> where ParameterType == Optional<Array<Input>> {
		return flatMapT { (value) -> Optional<Optional<Array<Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Input,Output> (_ transform: (Input) -> Optional<Optional<Optional<Output>>>) -> Optional<Optional<Optional<Output>>> where ParameterType == Optional<Optional<Input>> {
		return flatMapT { (value) -> Optional<Optional<Optional<Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Optional<Optional<Result<Output,Secondary3>>>) -> Optional<Optional<Result<Output,Secondary3>>> where ParameterType == Optional<Result<Input,Secondary3>> {
		return flatMapT { (value) -> Optional<Optional<Result<Output,Secondary3>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Optional<Optional<Writer<Secondary3,Output>>>) -> Optional<Optional<Writer<Secondary3,Output>>> where ParameterType == Optional<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Optional<Optional<Writer<Secondary3,Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Optional<Result<Array<Output>,Secondary2>>) -> Optional<Result<Array<Output>,Secondary2>> where ParameterType == Result<Array<Input>,Secondary2> {
		return flatMapT { (value) -> Optional<Result<Array<Output>,Secondary2>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Optional<Result<Optional<Output>,Secondary2>>) -> Optional<Result<Optional<Output>,Secondary2>> where ParameterType == Result<Optional<Input>,Secondary2> {
		return flatMapT { (value) -> Optional<Result<Optional<Output>,Secondary2>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Optional<Result<Result<Output,Secondary3>,Secondary2>>) -> Optional<Result<Result<Output,Secondary3>,Secondary2>> where ParameterType == Result<Result<Input,Secondary3>,Secondary2> {
		return flatMapT { (value) -> Optional<Result<Result<Output,Secondary3>,Secondary2>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Optional<Result<Writer<Secondary3,Output>,Secondary2>>) -> Optional<Result<Writer<Secondary3,Output>,Secondary2>> where ParameterType == Result<Writer<Secondary3,Input>,Secondary2> {
		return flatMapT { (value) -> Optional<Result<Writer<Secondary3,Output>,Secondary2>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Optional<Writer<Secondary2,Array<Output>>>) -> Optional<Writer<Secondary2,Array<Output>>> where ParameterType == Writer<Secondary2,Array<Input>> {
		return flatMapT { (value) -> Optional<Writer<Secondary2,Array<Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Optional<Writer<Secondary2,Optional<Output>>>) -> Optional<Writer<Secondary2,Optional<Output>>> where ParameterType == Writer<Secondary2,Optional<Input>> {
		return flatMapT { (value) -> Optional<Writer<Secondary2,Optional<Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Optional<Writer<Secondary2,Result<Output,Secondary3>>>) -> Optional<Writer<Secondary2,Result<Output,Secondary3>>> where ParameterType == Writer<Secondary2,Result<Input,Secondary3>> {
		return flatMapT { (value) -> Optional<Writer<Secondary2,Result<Output,Secondary3>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Optional<Writer<Secondary2,Writer<Secondary3,Output>>>) -> Optional<Writer<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Optional<Writer<Secondary2,Writer<Secondary3,Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
}



public extension Result {
	func flatMapTT <Input,Output> (_ transform: (Input) -> Result<Array<Array<Output>>,Failure>) -> Result<Array<Array<Output>>,Failure> where ParameterType == Array<Array<Input>> {
		return flatMapT { (value) -> Result<Array<Array<Output>>,Failure> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Input,Output> (_ transform: (Input) -> Result<Array<Optional<Output>>,Failure>) -> Result<Array<Optional<Output>>,Failure> where ParameterType == Array<Optional<Input>> {
		return flatMapT { (value) -> Result<Array<Optional<Output>>,Failure> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Result<Array<Result<Output,Secondary3>>,Failure>) -> Result<Array<Result<Output,Secondary3>>,Failure> where ParameterType == Array<Result<Input,Secondary3>> {
		return flatMapT { (value) -> Result<Array<Result<Output,Secondary3>>,Failure> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Result<Array<Writer<Secondary3,Output>>,Failure>) -> Result<Array<Writer<Secondary3,Output>>,Failure> where ParameterType == Array<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Result<Array<Writer<Secondary3,Output>>,Failure> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Input,Output> (_ transform: (Input) -> Result<Optional<Array<Output>>,Failure>) -> Result<Optional<Array<Output>>,Failure> where ParameterType == Optional<Array<Input>> {
		return flatMapT { (value) -> Result<Optional<Array<Output>>,Failure> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Input,Output> (_ transform: (Input) -> Result<Optional<Optional<Output>>,Failure>) -> Result<Optional<Optional<Output>>,Failure> where ParameterType == Optional<Optional<Input>> {
		return flatMapT { (value) -> Result<Optional<Optional<Output>>,Failure> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Result<Optional<Result<Output,Secondary3>>,Failure>) -> Result<Optional<Result<Output,Secondary3>>,Failure> where ParameterType == Optional<Result<Input,Secondary3>> {
		return flatMapT { (value) -> Result<Optional<Result<Output,Secondary3>>,Failure> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Result<Optional<Writer<Secondary3,Output>>,Failure>) -> Result<Optional<Writer<Secondary3,Output>>,Failure> where ParameterType == Optional<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Result<Optional<Writer<Secondary3,Output>>,Failure> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Result<Result<Array<Output>,Secondary2>,Failure>) -> Result<Result<Array<Output>,Secondary2>,Failure> where ParameterType == Result<Array<Input>,Secondary2> {
		return flatMapT { (value) -> Result<Result<Array<Output>,Secondary2>,Failure> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Result<Result<Optional<Output>,Secondary2>,Failure>) -> Result<Result<Optional<Output>,Secondary2>,Failure> where ParameterType == Result<Optional<Input>,Secondary2> {
		return flatMapT { (value) -> Result<Result<Optional<Output>,Secondary2>,Failure> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Result<Result<Result<Output,Secondary3>,Secondary2>,Failure>) -> Result<Result<Result<Output,Secondary3>,Secondary2>,Failure> where ParameterType == Result<Result<Input,Secondary3>,Secondary2> {
		return flatMapT { (value) -> Result<Result<Result<Output,Secondary3>,Secondary2>,Failure> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Result<Result<Writer<Secondary3,Output>,Secondary2>,Failure>) -> Result<Result<Writer<Secondary3,Output>,Secondary2>,Failure> where ParameterType == Result<Writer<Secondary3,Input>,Secondary2> {
		return flatMapT { (value) -> Result<Result<Writer<Secondary3,Output>,Secondary2>,Failure> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Result<Writer<Secondary2,Array<Output>>,Failure>) -> Result<Writer<Secondary2,Array<Output>>,Failure> where ParameterType == Writer<Secondary2,Array<Input>> {
		return flatMapT { (value) -> Result<Writer<Secondary2,Array<Output>>,Failure> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Result<Writer<Secondary2,Optional<Output>>,Failure>) -> Result<Writer<Secondary2,Optional<Output>>,Failure> where ParameterType == Writer<Secondary2,Optional<Input>> {
		return flatMapT { (value) -> Result<Writer<Secondary2,Optional<Output>>,Failure> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Result<Writer<Secondary2,Result<Output,Secondary3>>,Failure>) -> Result<Writer<Secondary2,Result<Output,Secondary3>>,Failure> where ParameterType == Writer<Secondary2,Result<Input,Secondary3>> {
		return flatMapT { (value) -> Result<Writer<Secondary2,Result<Output,Secondary3>>,Failure> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Result<Writer<Secondary2,Writer<Secondary3,Output>>,Failure>) -> Result<Writer<Secondary2,Writer<Secondary3,Output>>,Failure> where ParameterType == Writer<Secondary2,Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Result<Writer<Secondary2,Writer<Secondary3,Output>>,Failure> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
}



public extension State {
	func flatMapTT <Input,Output> (_ transform: @escaping (Input) -> State<Model,Array<Array<Output>>>) -> State<Model,Array<Array<Output>>> where ParameterType == Array<Array<Input>> {
		return flatMapT { (value) -> State<Model,Array<Array<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Input,Output> (_ transform: @escaping (Input) -> State<Model,Array<Optional<Output>>>) -> State<Model,Array<Optional<Output>>> where ParameterType == Array<Optional<Input>> {
		return flatMapT { (value) -> State<Model,Array<Optional<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> State<Model,Array<Result<Output,Secondary3>>>) -> State<Model,Array<Result<Output,Secondary3>>> where ParameterType == Array<Result<Input,Secondary3>> {
		return flatMapT { (value) -> State<Model,Array<Result<Output,Secondary3>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> State<Model,Array<Writer<Secondary3,Output>>>) -> State<Model,Array<Writer<Secondary3,Output>>> where ParameterType == Array<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> State<Model,Array<Writer<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Input,Output> (_ transform: @escaping (Input) -> State<Model,Optional<Array<Output>>>) -> State<Model,Optional<Array<Output>>> where ParameterType == Optional<Array<Input>> {
		return flatMapT { (value) -> State<Model,Optional<Array<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Input,Output> (_ transform: @escaping (Input) -> State<Model,Optional<Optional<Output>>>) -> State<Model,Optional<Optional<Output>>> where ParameterType == Optional<Optional<Input>> {
		return flatMapT { (value) -> State<Model,Optional<Optional<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> State<Model,Optional<Result<Output,Secondary3>>>) -> State<Model,Optional<Result<Output,Secondary3>>> where ParameterType == Optional<Result<Input,Secondary3>> {
		return flatMapT { (value) -> State<Model,Optional<Result<Output,Secondary3>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> State<Model,Optional<Writer<Secondary3,Output>>>) -> State<Model,Optional<Writer<Secondary3,Output>>> where ParameterType == Optional<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> State<Model,Optional<Writer<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> State<Model,Result<Array<Output>,Secondary2>>) -> State<Model,Result<Array<Output>,Secondary2>> where ParameterType == Result<Array<Input>,Secondary2> {
		return flatMapT { (value) -> State<Model,Result<Array<Output>,Secondary2>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> State<Model,Result<Optional<Output>,Secondary2>>) -> State<Model,Result<Optional<Output>,Secondary2>> where ParameterType == Result<Optional<Input>,Secondary2> {
		return flatMapT { (value) -> State<Model,Result<Optional<Output>,Secondary2>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> State<Model,Result<Result<Output,Secondary3>,Secondary2>>) -> State<Model,Result<Result<Output,Secondary3>,Secondary2>> where ParameterType == Result<Result<Input,Secondary3>,Secondary2> {
		return flatMapT { (value) -> State<Model,Result<Result<Output,Secondary3>,Secondary2>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> State<Model,Result<Writer<Secondary3,Output>,Secondary2>>) -> State<Model,Result<Writer<Secondary3,Output>,Secondary2>> where ParameterType == Result<Writer<Secondary3,Input>,Secondary2> {
		return flatMapT { (value) -> State<Model,Result<Writer<Secondary3,Output>,Secondary2>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> State<Model,Writer<Secondary2,Array<Output>>>) -> State<Model,Writer<Secondary2,Array<Output>>> where ParameterType == Writer<Secondary2,Array<Input>> {
		return flatMapT { (value) -> State<Model,Writer<Secondary2,Array<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> State<Model,Writer<Secondary2,Optional<Output>>>) -> State<Model,Writer<Secondary2,Optional<Output>>> where ParameterType == Writer<Secondary2,Optional<Input>> {
		return flatMapT { (value) -> State<Model,Writer<Secondary2,Optional<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> State<Model,Writer<Secondary2,Result<Output,Secondary3>>>) -> State<Model,Writer<Secondary2,Result<Output,Secondary3>>> where ParameterType == Writer<Secondary2,Result<Input,Secondary3>> {
		return flatMapT { (value) -> State<Model,Writer<Secondary2,Result<Output,Secondary3>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> State<Model,Writer<Secondary2,Writer<Secondary3,Output>>>) -> State<Model,Writer<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Writer<Secondary3,Input>> {
		return flatMapT { (value) -> State<Model,Writer<Secondary2,Writer<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
}



public extension Writer {
	func flatMapTT <Input,Output> (_ transform: (Input) -> Writer<Log,Array<Array<Output>>>) -> Writer<Log,Array<Array<Output>>> where ParameterType == Array<Array<Input>> {
		return flatMapT { (value) -> Writer<Log,Array<Array<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Input,Output> (_ transform: (Input) -> Writer<Log,Array<Optional<Output>>>) -> Writer<Log,Array<Optional<Output>>> where ParameterType == Array<Optional<Input>> {
		return flatMapT { (value) -> Writer<Log,Array<Optional<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Writer<Log,Array<Result<Output,Secondary3>>>) -> Writer<Log,Array<Result<Output,Secondary3>>> where ParameterType == Array<Result<Input,Secondary3>> {
		return flatMapT { (value) -> Writer<Log,Array<Result<Output,Secondary3>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Writer<Log,Array<Writer<Secondary3,Output>>>) -> Writer<Log,Array<Writer<Secondary3,Output>>> where ParameterType == Array<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Writer<Log,Array<Writer<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Input,Output> (_ transform: (Input) -> Writer<Log,Optional<Array<Output>>>) -> Writer<Log,Optional<Array<Output>>> where ParameterType == Optional<Array<Input>> {
		return flatMapT { (value) -> Writer<Log,Optional<Array<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Input,Output> (_ transform: (Input) -> Writer<Log,Optional<Optional<Output>>>) -> Writer<Log,Optional<Optional<Output>>> where ParameterType == Optional<Optional<Input>> {
		return flatMapT { (value) -> Writer<Log,Optional<Optional<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Writer<Log,Optional<Result<Output,Secondary3>>>) -> Writer<Log,Optional<Result<Output,Secondary3>>> where ParameterType == Optional<Result<Input,Secondary3>> {
		return flatMapT { (value) -> Writer<Log,Optional<Result<Output,Secondary3>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Writer<Log,Optional<Writer<Secondary3,Output>>>) -> Writer<Log,Optional<Writer<Secondary3,Output>>> where ParameterType == Optional<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Writer<Log,Optional<Writer<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Writer<Log,Result<Array<Output>,Secondary2>>) -> Writer<Log,Result<Array<Output>,Secondary2>> where ParameterType == Result<Array<Input>,Secondary2> {
		return flatMapT { (value) -> Writer<Log,Result<Array<Output>,Secondary2>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Writer<Log,Result<Optional<Output>,Secondary2>>) -> Writer<Log,Result<Optional<Output>,Secondary2>> where ParameterType == Result<Optional<Input>,Secondary2> {
		return flatMapT { (value) -> Writer<Log,Result<Optional<Output>,Secondary2>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Writer<Log,Result<Result<Output,Secondary3>,Secondary2>>) -> Writer<Log,Result<Result<Output,Secondary3>,Secondary2>> where ParameterType == Result<Result<Input,Secondary3>,Secondary2> {
		return flatMapT { (value) -> Writer<Log,Result<Result<Output,Secondary3>,Secondary2>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Writer<Log,Result<Writer<Secondary3,Output>,Secondary2>>) -> Writer<Log,Result<Writer<Secondary3,Output>,Secondary2>> where ParameterType == Result<Writer<Secondary3,Input>,Secondary2> {
		return flatMapT { (value) -> Writer<Log,Result<Writer<Secondary3,Output>,Secondary2>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Writer<Log,Writer<Secondary2,Array<Output>>>) -> Writer<Log,Writer<Secondary2,Array<Output>>> where ParameterType == Writer<Secondary2,Array<Input>> {
		return flatMapT { (value) -> Writer<Log,Writer<Secondary2,Array<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Writer<Log,Writer<Secondary2,Optional<Output>>>) -> Writer<Log,Writer<Secondary2,Optional<Output>>> where ParameterType == Writer<Secondary2,Optional<Input>> {
		return flatMapT { (value) -> Writer<Log,Writer<Secondary2,Optional<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Writer<Log,Writer<Secondary2,Result<Output,Secondary3>>>) -> Writer<Log,Writer<Secondary2,Result<Output,Secondary3>>> where ParameterType == Writer<Secondary2,Result<Input,Secondary3>> {
		return flatMapT { (value) -> Writer<Log,Writer<Secondary2,Result<Output,Secondary3>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Writer<Log,Writer<Secondary2,Writer<Secondary3,Output>>>) -> Writer<Log,Writer<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Writer<Log,Writer<Secondary2,Writer<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
}



