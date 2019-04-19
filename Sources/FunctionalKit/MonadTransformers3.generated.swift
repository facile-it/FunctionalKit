// Generated using Sourcery 0.16.0 — https://github.com/krzysztofzablocki/Sourcery
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




	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Array<Array<Result<Secondary3,Output>>>) -> Array<Array<Result<Secondary3,Output>>> where ParameterType == Array<Result<Secondary3,Input>> {
		return flatMapT { (value) -> Array<Array<Result<Secondary3,Output>>> in
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




	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Array<Optional<Result<Secondary3,Output>>>) -> Array<Optional<Result<Secondary3,Output>>> where ParameterType == Optional<Result<Secondary3,Input>> {
		return flatMapT { (value) -> Array<Optional<Result<Secondary3,Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Array<Optional<Writer<Secondary3,Output>>>) -> Array<Optional<Writer<Secondary3,Output>>> where ParameterType == Optional<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Array<Optional<Writer<Secondary3,Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Array<Result<Secondary2,Array<Output>>>) -> Array<Result<Secondary2,Array<Output>>> where ParameterType == Result<Secondary2,Array<Input>> {
		return flatMapT { (value) -> Array<Result<Secondary2,Array<Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}




	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Array<Result<Secondary2,Optional<Output>>>) -> Array<Result<Secondary2,Optional<Output>>> where ParameterType == Result<Secondary2,Optional<Input>> {
		return flatMapT { (value) -> Array<Result<Secondary2,Optional<Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Array<Result<Secondary2,Result<Secondary3,Output>>>) -> Array<Result<Secondary2,Result<Secondary3,Output>>> where ParameterType == Result<Secondary2,Result<Secondary3,Input>> {
		return flatMapT { (value) -> Array<Result<Secondary2,Result<Secondary3,Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Array<Result<Secondary2,Writer<Secondary3,Output>>>) -> Array<Result<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Result<Secondary2,Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Array<Result<Secondary2,Writer<Secondary3,Output>>> in
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




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Array<Writer<Secondary2,Result<Secondary3,Output>>>) -> Array<Writer<Secondary2,Result<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Result<Secondary3,Input>> {
		return flatMapT { (value) -> Array<Writer<Secondary2,Result<Secondary3,Output>>> in
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




	func flatMapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Effect<Array<Result<Secondary3,Output>>>) -> Effect<Array<Result<Secondary3,Output>>> where ParameterType == Array<Result<Secondary3,Input>> {
		return flatMapT { (value) -> Effect<Array<Result<Secondary3,Output>>> in
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




	func flatMapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Effect<Optional<Result<Secondary3,Output>>>) -> Effect<Optional<Result<Secondary3,Output>>> where ParameterType == Optional<Result<Secondary3,Input>> {
		return flatMapT { (value) -> Effect<Optional<Result<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Effect<Optional<Writer<Secondary3,Output>>>) -> Effect<Optional<Writer<Secondary3,Output>>> where ParameterType == Optional<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Effect<Optional<Writer<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Effect<Result<Secondary2,Array<Output>>>) -> Effect<Result<Secondary2,Array<Output>>> where ParameterType == Result<Secondary2,Array<Input>> {
		return flatMapT { (value) -> Effect<Result<Secondary2,Array<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}




	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Effect<Result<Secondary2,Optional<Output>>>) -> Effect<Result<Secondary2,Optional<Output>>> where ParameterType == Result<Secondary2,Optional<Input>> {
		return flatMapT { (value) -> Effect<Result<Secondary2,Optional<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Effect<Result<Secondary2,Result<Secondary3,Output>>>) -> Effect<Result<Secondary2,Result<Secondary3,Output>>> where ParameterType == Result<Secondary2,Result<Secondary3,Input>> {
		return flatMapT { (value) -> Effect<Result<Secondary2,Result<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Effect<Result<Secondary2,Writer<Secondary3,Output>>>) -> Effect<Result<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Result<Secondary2,Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Effect<Result<Secondary2,Writer<Secondary3,Output>>> in
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




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Effect<Writer<Secondary2,Result<Secondary3,Output>>>) -> Effect<Writer<Secondary2,Result<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Result<Secondary3,Input>> {
		return flatMapT { (value) -> Effect<Writer<Secondary2,Result<Secondary3,Output>>> in
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




	func flatMapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Future<Array<Result<Secondary3,Output>>>) -> Future<Array<Result<Secondary3,Output>>> where ParameterType == Array<Result<Secondary3,Input>> {
		return flatMapT { (value) -> Future<Array<Result<Secondary3,Output>>> in
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




	func flatMapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Future<Optional<Result<Secondary3,Output>>>) -> Future<Optional<Result<Secondary3,Output>>> where ParameterType == Optional<Result<Secondary3,Input>> {
		return flatMapT { (value) -> Future<Optional<Result<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> Future<Optional<Writer<Secondary3,Output>>>) -> Future<Optional<Writer<Secondary3,Output>>> where ParameterType == Optional<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Future<Optional<Writer<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Future<Result<Secondary2,Array<Output>>>) -> Future<Result<Secondary2,Array<Output>>> where ParameterType == Result<Secondary2,Array<Input>> {
		return flatMapT { (value) -> Future<Result<Secondary2,Array<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}




	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Future<Result<Secondary2,Optional<Output>>>) -> Future<Result<Secondary2,Optional<Output>>> where ParameterType == Result<Secondary2,Optional<Input>> {
		return flatMapT { (value) -> Future<Result<Secondary2,Optional<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Future<Result<Secondary2,Result<Secondary3,Output>>>) -> Future<Result<Secondary2,Result<Secondary3,Output>>> where ParameterType == Result<Secondary2,Result<Secondary3,Input>> {
		return flatMapT { (value) -> Future<Result<Secondary2,Result<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Future<Result<Secondary2,Writer<Secondary3,Output>>>) -> Future<Result<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Result<Secondary2,Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Future<Result<Secondary2,Writer<Secondary3,Output>>> in
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




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Future<Writer<Secondary2,Result<Secondary3,Output>>>) -> Future<Writer<Secondary2,Result<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Result<Secondary3,Input>> {
		return flatMapT { (value) -> Future<Writer<Secondary2,Result<Secondary3,Output>>> in
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




	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Optional<Array<Result<Secondary3,Output>>>) -> Optional<Array<Result<Secondary3,Output>>> where ParameterType == Array<Result<Secondary3,Input>> {
		return flatMapT { (value) -> Optional<Array<Result<Secondary3,Output>>> in
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




	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Optional<Optional<Result<Secondary3,Output>>>) -> Optional<Optional<Result<Secondary3,Output>>> where ParameterType == Optional<Result<Secondary3,Input>> {
		return flatMapT { (value) -> Optional<Optional<Result<Secondary3,Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Optional<Optional<Writer<Secondary3,Output>>>) -> Optional<Optional<Writer<Secondary3,Output>>> where ParameterType == Optional<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Optional<Optional<Writer<Secondary3,Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Optional<Result<Secondary2,Array<Output>>>) -> Optional<Result<Secondary2,Array<Output>>> where ParameterType == Result<Secondary2,Array<Input>> {
		return flatMapT { (value) -> Optional<Result<Secondary2,Array<Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}




	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Optional<Result<Secondary2,Optional<Output>>>) -> Optional<Result<Secondary2,Optional<Output>>> where ParameterType == Result<Secondary2,Optional<Input>> {
		return flatMapT { (value) -> Optional<Result<Secondary2,Optional<Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Optional<Result<Secondary2,Result<Secondary3,Output>>>) -> Optional<Result<Secondary2,Result<Secondary3,Output>>> where ParameterType == Result<Secondary2,Result<Secondary3,Input>> {
		return flatMapT { (value) -> Optional<Result<Secondary2,Result<Secondary3,Output>>> in
			value.traverse(transform).fmap { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Optional<Result<Secondary2,Writer<Secondary3,Output>>>) -> Optional<Result<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Result<Secondary2,Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Optional<Result<Secondary2,Writer<Secondary3,Output>>> in
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




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Optional<Writer<Secondary2,Result<Secondary3,Output>>>) -> Optional<Writer<Secondary2,Result<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Result<Secondary3,Input>> {
		return flatMapT { (value) -> Optional<Writer<Secondary2,Result<Secondary3,Output>>> in
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





	func flatMapTT <Input,Output> (_ transform: (Input) -> Result<Failure,Array<Array<Output>>>) -> Result<Failure,Array<Array<Output>>> where ParameterType == Array<Array<Input>> {
		return flatMapT { (value) -> Result<Failure,Array<Array<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}




	func flatMapTT <Input,Output> (_ transform: (Input) -> Result<Failure,Array<Optional<Output>>>) -> Result<Failure,Array<Optional<Output>>> where ParameterType == Array<Optional<Input>> {
		return flatMapT { (value) -> Result<Failure,Array<Optional<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Result<Failure,Array<Result<Secondary3,Output>>>) -> Result<Failure,Array<Result<Secondary3,Output>>> where ParameterType == Array<Result<Secondary3,Input>> {
		return flatMapT { (value) -> Result<Failure,Array<Result<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Result<Failure,Array<Writer<Secondary3,Output>>>) -> Result<Failure,Array<Writer<Secondary3,Output>>> where ParameterType == Array<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Result<Failure,Array<Writer<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Input,Output> (_ transform: (Input) -> Result<Failure,Optional<Array<Output>>>) -> Result<Failure,Optional<Array<Output>>> where ParameterType == Optional<Array<Input>> {
		return flatMapT { (value) -> Result<Failure,Optional<Array<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}




	func flatMapTT <Input,Output> (_ transform: (Input) -> Result<Failure,Optional<Optional<Output>>>) -> Result<Failure,Optional<Optional<Output>>> where ParameterType == Optional<Optional<Input>> {
		return flatMapT { (value) -> Result<Failure,Optional<Optional<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Result<Failure,Optional<Result<Secondary3,Output>>>) -> Result<Failure,Optional<Result<Secondary3,Output>>> where ParameterType == Optional<Result<Secondary3,Input>> {
		return flatMapT { (value) -> Result<Failure,Optional<Result<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Result<Failure,Optional<Writer<Secondary3,Output>>>) -> Result<Failure,Optional<Writer<Secondary3,Output>>> where ParameterType == Optional<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Result<Failure,Optional<Writer<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Result<Failure,Result<Secondary2,Array<Output>>>) -> Result<Failure,Result<Secondary2,Array<Output>>> where ParameterType == Result<Secondary2,Array<Input>> {
		return flatMapT { (value) -> Result<Failure,Result<Secondary2,Array<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}




	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Result<Failure,Result<Secondary2,Optional<Output>>>) -> Result<Failure,Result<Secondary2,Optional<Output>>> where ParameterType == Result<Secondary2,Optional<Input>> {
		return flatMapT { (value) -> Result<Failure,Result<Secondary2,Optional<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Result<Failure,Result<Secondary2,Result<Secondary3,Output>>>) -> Result<Failure,Result<Secondary2,Result<Secondary3,Output>>> where ParameterType == Result<Secondary2,Result<Secondary3,Input>> {
		return flatMapT { (value) -> Result<Failure,Result<Secondary2,Result<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Result<Failure,Result<Secondary2,Writer<Secondary3,Output>>>) -> Result<Failure,Result<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Result<Secondary2,Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Result<Failure,Result<Secondary2,Writer<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Result<Failure,Writer<Secondary2,Array<Output>>>) -> Result<Failure,Writer<Secondary2,Array<Output>>> where ParameterType == Writer<Secondary2,Array<Input>> {
		return flatMapT { (value) -> Result<Failure,Writer<Secondary2,Array<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}




	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Result<Failure,Writer<Secondary2,Optional<Output>>>) -> Result<Failure,Writer<Secondary2,Optional<Output>>> where ParameterType == Writer<Secondary2,Optional<Input>> {
		return flatMapT { (value) -> Result<Failure,Writer<Secondary2,Optional<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Result<Failure,Writer<Secondary2,Result<Secondary3,Output>>>) -> Result<Failure,Writer<Secondary2,Result<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Result<Secondary3,Input>> {
		return flatMapT { (value) -> Result<Failure,Writer<Secondary2,Result<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Result<Failure,Writer<Secondary2,Writer<Secondary3,Output>>>) -> Result<Failure,Writer<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Result<Failure,Writer<Secondary2,Writer<Secondary3,Output>>> in
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




	func flatMapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> State<Model,Array<Result<Secondary3,Output>>>) -> State<Model,Array<Result<Secondary3,Output>>> where ParameterType == Array<Result<Secondary3,Input>> {
		return flatMapT { (value) -> State<Model,Array<Result<Secondary3,Output>>> in
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




	func flatMapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> State<Model,Optional<Result<Secondary3,Output>>>) -> State<Model,Optional<Result<Secondary3,Output>>> where ParameterType == Optional<Result<Secondary3,Input>> {
		return flatMapT { (value) -> State<Model,Optional<Result<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Input,Output> (_ transform: @escaping (Input) -> State<Model,Optional<Writer<Secondary3,Output>>>) -> State<Model,Optional<Writer<Secondary3,Output>>> where ParameterType == Optional<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> State<Model,Optional<Writer<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> State<Model,Result<Secondary2,Array<Output>>>) -> State<Model,Result<Secondary2,Array<Output>>> where ParameterType == Result<Secondary2,Array<Input>> {
		return flatMapT { (value) -> State<Model,Result<Secondary2,Array<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}




	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> State<Model,Result<Secondary2,Optional<Output>>>) -> State<Model,Result<Secondary2,Optional<Output>>> where ParameterType == Result<Secondary2,Optional<Input>> {
		return flatMapT { (value) -> State<Model,Result<Secondary2,Optional<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> State<Model,Result<Secondary2,Result<Secondary3,Output>>>) -> State<Model,Result<Secondary2,Result<Secondary3,Output>>> where ParameterType == Result<Secondary2,Result<Secondary3,Input>> {
		return flatMapT { (value) -> State<Model,Result<Secondary2,Result<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> State<Model,Result<Secondary2,Writer<Secondary3,Output>>>) -> State<Model,Result<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Result<Secondary2,Writer<Secondary3,Input>> {
		return flatMapT { (value) -> State<Model,Result<Secondary2,Writer<Secondary3,Output>>> in
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




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> State<Model,Writer<Secondary2,Result<Secondary3,Output>>>) -> State<Model,Writer<Secondary2,Result<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Result<Secondary3,Input>> {
		return flatMapT { (value) -> State<Model,Writer<Secondary2,Result<Secondary3,Output>>> in
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




	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Writer<Log,Array<Result<Secondary3,Output>>>) -> Writer<Log,Array<Result<Secondary3,Output>>> where ParameterType == Array<Result<Secondary3,Input>> {
		return flatMapT { (value) -> Writer<Log,Array<Result<Secondary3,Output>>> in
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




	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Writer<Log,Optional<Result<Secondary3,Output>>>) -> Writer<Log,Optional<Result<Secondary3,Output>>> where ParameterType == Optional<Result<Secondary3,Input>> {
		return flatMapT { (value) -> Writer<Log,Optional<Result<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Input,Output> (_ transform: (Input) -> Writer<Log,Optional<Writer<Secondary3,Output>>>) -> Writer<Log,Optional<Writer<Secondary3,Output>>> where ParameterType == Optional<Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Writer<Log,Optional<Writer<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Writer<Log,Result<Secondary2,Array<Output>>>) -> Writer<Log,Result<Secondary2,Array<Output>>> where ParameterType == Result<Secondary2,Array<Input>> {
		return flatMapT { (value) -> Writer<Log,Result<Secondary2,Array<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.flatMap(f.identity) }
		}
	}




	func flatMapTT <Secondary2,Input,Output> (_ transform: (Input) -> Writer<Log,Result<Secondary2,Optional<Output>>>) -> Writer<Log,Result<Secondary2,Optional<Output>>> where ParameterType == Result<Secondary2,Optional<Input>> {
		return flatMapT { (value) -> Writer<Log,Result<Secondary2,Optional<Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Writer<Log,Result<Secondary2,Result<Secondary3,Output>>>) -> Writer<Log,Result<Secondary2,Result<Secondary3,Output>>> where ParameterType == Result<Secondary2,Result<Secondary3,Input>> {
		return flatMapT { (value) -> Writer<Log,Result<Secondary2,Result<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Writer<Log,Result<Secondary2,Writer<Secondary3,Output>>>) -> Writer<Log,Result<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Result<Secondary2,Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Writer<Log,Result<Secondary2,Writer<Secondary3,Output>>> in
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




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Writer<Log,Writer<Secondary2,Result<Secondary3,Output>>>) -> Writer<Log,Writer<Secondary2,Result<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Result<Secondary3,Input>> {
		return flatMapT { (value) -> Writer<Log,Writer<Secondary2,Result<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}




	func flatMapTT <Secondary3,Secondary2,Input,Output> (_ transform: (Input) -> Writer<Log,Writer<Secondary2,Writer<Secondary3,Output>>>) -> Writer<Log,Writer<Secondary2,Writer<Secondary3,Output>>> where ParameterType == Writer<Secondary2,Writer<Secondary3,Input>> {
		return flatMapT { (value) -> Writer<Log,Writer<Secondary2,Writer<Secondary3,Output>>> in
			value.traverse(transform).map { $0.traverse(f.identity) }.mapT { $0.joined() }
		}
	}
}



