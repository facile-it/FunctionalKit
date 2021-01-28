// Generated using Sourcery 1.0.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT



public extension Reader {
    func flatMapT <Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Array<Output>>) -> Reader<Environment,Array<Output>> where ParameterType == Array<Input> {
        return Reader<Environment,Array<Output>>.init { e in
            self.run(e).flatMap { transform($0).run(e) }
        }
    }

	func flatMapTT <Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Array<Array<Output>>>) -> Reader<Environment,Array<Array<Output>>> where ParameterType == Array<Array<Input>> {
		return Reader<Environment,Array<Array<Output>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Array<Array<Array<Output>>>>) -> Reader<Environment,Array<Array<Array<Output>>>> where ParameterType == Array<Array<Array<Input>>> {
		return Reader<Environment,Array<Array<Array<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Array<Array<Optional<Output>>>>) -> Reader<Environment,Array<Array<Optional<Output>>>> where ParameterType == Array<Array<Optional<Input>>> {
		return Reader<Environment,Array<Array<Optional<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Array<Array<Result<Output,Secondary3>>>>) -> Reader<Environment,Array<Array<Result<Output,Secondary3>>>> where ParameterType == Array<Array<Result<Input,Secondary3>>> {
		return Reader<Environment,Array<Array<Result<Output,Secondary3>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Array<Array<Writer<Secondary3,Output>>>>) -> Reader<Environment,Array<Array<Writer<Secondary3,Output>>>> where ParameterType == Array<Array<Writer<Secondary3,Input>>> {
		return Reader<Environment,Array<Array<Writer<Secondary3,Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Array<Optional<Output>>>) -> Reader<Environment,Array<Optional<Output>>> where ParameterType == Array<Optional<Input>> {
		return Reader<Environment,Array<Optional<Output>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Array<Optional<Array<Output>>>>) -> Reader<Environment,Array<Optional<Array<Output>>>> where ParameterType == Array<Optional<Array<Input>>> {
		return Reader<Environment,Array<Optional<Array<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Array<Optional<Optional<Output>>>>) -> Reader<Environment,Array<Optional<Optional<Output>>>> where ParameterType == Array<Optional<Optional<Input>>> {
		return Reader<Environment,Array<Optional<Optional<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Array<Optional<Result<Output,Secondary3>>>>) -> Reader<Environment,Array<Optional<Result<Output,Secondary3>>>> where ParameterType == Array<Optional<Result<Input,Secondary3>>> {
		return Reader<Environment,Array<Optional<Result<Output,Secondary3>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Array<Optional<Writer<Secondary3,Output>>>>) -> Reader<Environment,Array<Optional<Writer<Secondary3,Output>>>> where ParameterType == Array<Optional<Writer<Secondary3,Input>>> {
		return Reader<Environment,Array<Optional<Writer<Secondary3,Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Array<Result<Output,Secondary2>>>) -> Reader<Environment,Array<Result<Output,Secondary2>>> where ParameterType == Array<Result<Input,Secondary2>> {
		return Reader<Environment,Array<Result<Output,Secondary2>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Array<Result<Array<Output>,Secondary2>>>) -> Reader<Environment,Array<Result<Array<Output>,Secondary2>>> where ParameterType == Array<Result<Array<Input>,Secondary2>> {
		return Reader<Environment,Array<Result<Array<Output>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Array<Result<Optional<Output>,Secondary2>>>) -> Reader<Environment,Array<Result<Optional<Output>,Secondary2>>> where ParameterType == Array<Result<Optional<Input>,Secondary2>> {
		return Reader<Environment,Array<Result<Optional<Output>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Array<Result<Result<Output,Secondary3>,Secondary2>>>) -> Reader<Environment,Array<Result<Result<Output,Secondary3>,Secondary2>>> where ParameterType == Array<Result<Result<Input,Secondary3>,Secondary2>> {
		return Reader<Environment,Array<Result<Result<Output,Secondary3>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Array<Result<Writer<Secondary3,Output>,Secondary2>>>) -> Reader<Environment,Array<Result<Writer<Secondary3,Output>,Secondary2>>> where ParameterType == Array<Result<Writer<Secondary3,Input>,Secondary2>> {
		return Reader<Environment,Array<Result<Writer<Secondary3,Output>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Array<Writer<Secondary2,Output>>>) -> Reader<Environment,Array<Writer<Secondary2,Output>>> where ParameterType == Array<Writer<Secondary2,Input>> {
		return Reader<Environment,Array<Writer<Secondary2,Output>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Array<Writer<Secondary2,Array<Output>>>>) -> Reader<Environment,Array<Writer<Secondary2,Array<Output>>>> where ParameterType == Array<Writer<Secondary2,Array<Input>>> {
		return Reader<Environment,Array<Writer<Secondary2,Array<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Array<Writer<Secondary2,Optional<Output>>>>) -> Reader<Environment,Array<Writer<Secondary2,Optional<Output>>>> where ParameterType == Array<Writer<Secondary2,Optional<Input>>> {
		return Reader<Environment,Array<Writer<Secondary2,Optional<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Array<Writer<Secondary2,Result<Output,Secondary3>>>>) -> Reader<Environment,Array<Writer<Secondary2,Result<Output,Secondary3>>>> where ParameterType == Array<Writer<Secondary2,Result<Input,Secondary3>>> {
		return Reader<Environment,Array<Writer<Secondary2,Result<Output,Secondary3>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Array<Writer<Secondary2,Writer<Secondary3,Output>>>>) -> Reader<Environment,Array<Writer<Secondary2,Writer<Secondary3,Output>>>> where ParameterType == Array<Writer<Secondary2,Writer<Secondary3,Input>>> {
		return Reader<Environment,Array<Writer<Secondary2,Writer<Secondary3,Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
    func flatMapT <Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Effect<Output>>) -> Reader<Environment,Effect<Output>> where ParameterType == Effect<Input> {
        return Reader<Environment,Effect<Output>>.init { e in
            self.run(e).flatMap { transform($0).run(e) }
        }
    }

	func flatMapTT <Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Effect<Array<Output>>>) -> Reader<Environment,Effect<Array<Output>>> where ParameterType == Effect<Array<Input>> {
		return Reader<Environment,Effect<Array<Output>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Effect<Array<Array<Output>>>>) -> Reader<Environment,Effect<Array<Array<Output>>>> where ParameterType == Effect<Array<Array<Input>>> {
		return Reader<Environment,Effect<Array<Array<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Effect<Array<Optional<Output>>>>) -> Reader<Environment,Effect<Array<Optional<Output>>>> where ParameterType == Effect<Array<Optional<Input>>> {
		return Reader<Environment,Effect<Array<Optional<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Effect<Array<Result<Output,Secondary3>>>>) -> Reader<Environment,Effect<Array<Result<Output,Secondary3>>>> where ParameterType == Effect<Array<Result<Input,Secondary3>>> {
		return Reader<Environment,Effect<Array<Result<Output,Secondary3>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Effect<Array<Writer<Secondary3,Output>>>>) -> Reader<Environment,Effect<Array<Writer<Secondary3,Output>>>> where ParameterType == Effect<Array<Writer<Secondary3,Input>>> {
		return Reader<Environment,Effect<Array<Writer<Secondary3,Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Effect<Optional<Output>>>) -> Reader<Environment,Effect<Optional<Output>>> where ParameterType == Effect<Optional<Input>> {
		return Reader<Environment,Effect<Optional<Output>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Effect<Optional<Array<Output>>>>) -> Reader<Environment,Effect<Optional<Array<Output>>>> where ParameterType == Effect<Optional<Array<Input>>> {
		return Reader<Environment,Effect<Optional<Array<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Effect<Optional<Optional<Output>>>>) -> Reader<Environment,Effect<Optional<Optional<Output>>>> where ParameterType == Effect<Optional<Optional<Input>>> {
		return Reader<Environment,Effect<Optional<Optional<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Effect<Optional<Result<Output,Secondary3>>>>) -> Reader<Environment,Effect<Optional<Result<Output,Secondary3>>>> where ParameterType == Effect<Optional<Result<Input,Secondary3>>> {
		return Reader<Environment,Effect<Optional<Result<Output,Secondary3>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Effect<Optional<Writer<Secondary3,Output>>>>) -> Reader<Environment,Effect<Optional<Writer<Secondary3,Output>>>> where ParameterType == Effect<Optional<Writer<Secondary3,Input>>> {
		return Reader<Environment,Effect<Optional<Writer<Secondary3,Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Effect<Result<Output,Secondary2>>>) -> Reader<Environment,Effect<Result<Output,Secondary2>>> where ParameterType == Effect<Result<Input,Secondary2>> {
		return Reader<Environment,Effect<Result<Output,Secondary2>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Effect<Result<Array<Output>,Secondary2>>>) -> Reader<Environment,Effect<Result<Array<Output>,Secondary2>>> where ParameterType == Effect<Result<Array<Input>,Secondary2>> {
		return Reader<Environment,Effect<Result<Array<Output>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Effect<Result<Optional<Output>,Secondary2>>>) -> Reader<Environment,Effect<Result<Optional<Output>,Secondary2>>> where ParameterType == Effect<Result<Optional<Input>,Secondary2>> {
		return Reader<Environment,Effect<Result<Optional<Output>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Effect<Result<Result<Output,Secondary3>,Secondary2>>>) -> Reader<Environment,Effect<Result<Result<Output,Secondary3>,Secondary2>>> where ParameterType == Effect<Result<Result<Input,Secondary3>,Secondary2>> {
		return Reader<Environment,Effect<Result<Result<Output,Secondary3>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Effect<Result<Writer<Secondary3,Output>,Secondary2>>>) -> Reader<Environment,Effect<Result<Writer<Secondary3,Output>,Secondary2>>> where ParameterType == Effect<Result<Writer<Secondary3,Input>,Secondary2>> {
		return Reader<Environment,Effect<Result<Writer<Secondary3,Output>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Effect<Writer<Secondary2,Output>>>) -> Reader<Environment,Effect<Writer<Secondary2,Output>>> where ParameterType == Effect<Writer<Secondary2,Input>> {
		return Reader<Environment,Effect<Writer<Secondary2,Output>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Effect<Writer<Secondary2,Array<Output>>>>) -> Reader<Environment,Effect<Writer<Secondary2,Array<Output>>>> where ParameterType == Effect<Writer<Secondary2,Array<Input>>> {
		return Reader<Environment,Effect<Writer<Secondary2,Array<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Effect<Writer<Secondary2,Optional<Output>>>>) -> Reader<Environment,Effect<Writer<Secondary2,Optional<Output>>>> where ParameterType == Effect<Writer<Secondary2,Optional<Input>>> {
		return Reader<Environment,Effect<Writer<Secondary2,Optional<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Effect<Writer<Secondary2,Result<Output,Secondary3>>>>) -> Reader<Environment,Effect<Writer<Secondary2,Result<Output,Secondary3>>>> where ParameterType == Effect<Writer<Secondary2,Result<Input,Secondary3>>> {
		return Reader<Environment,Effect<Writer<Secondary2,Result<Output,Secondary3>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Effect<Writer<Secondary2,Writer<Secondary3,Output>>>>) -> Reader<Environment,Effect<Writer<Secondary2,Writer<Secondary3,Output>>>> where ParameterType == Effect<Writer<Secondary2,Writer<Secondary3,Input>>> {
		return Reader<Environment,Effect<Writer<Secondary2,Writer<Secondary3,Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
    func flatMapT <Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Future<Output>>) -> Reader<Environment,Future<Output>> where ParameterType == Future<Input> {
        return Reader<Environment,Future<Output>>.init { e in
            self.run(e).flatMap { transform($0).run(e) }
        }
    }

	func flatMapTT <Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Future<Array<Output>>>) -> Reader<Environment,Future<Array<Output>>> where ParameterType == Future<Array<Input>> {
		return Reader<Environment,Future<Array<Output>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Future<Array<Array<Output>>>>) -> Reader<Environment,Future<Array<Array<Output>>>> where ParameterType == Future<Array<Array<Input>>> {
		return Reader<Environment,Future<Array<Array<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Future<Array<Optional<Output>>>>) -> Reader<Environment,Future<Array<Optional<Output>>>> where ParameterType == Future<Array<Optional<Input>>> {
		return Reader<Environment,Future<Array<Optional<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Future<Array<Result<Output,Secondary3>>>>) -> Reader<Environment,Future<Array<Result<Output,Secondary3>>>> where ParameterType == Future<Array<Result<Input,Secondary3>>> {
		return Reader<Environment,Future<Array<Result<Output,Secondary3>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Future<Array<Writer<Secondary3,Output>>>>) -> Reader<Environment,Future<Array<Writer<Secondary3,Output>>>> where ParameterType == Future<Array<Writer<Secondary3,Input>>> {
		return Reader<Environment,Future<Array<Writer<Secondary3,Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Future<Optional<Output>>>) -> Reader<Environment,Future<Optional<Output>>> where ParameterType == Future<Optional<Input>> {
		return Reader<Environment,Future<Optional<Output>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Future<Optional<Array<Output>>>>) -> Reader<Environment,Future<Optional<Array<Output>>>> where ParameterType == Future<Optional<Array<Input>>> {
		return Reader<Environment,Future<Optional<Array<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Future<Optional<Optional<Output>>>>) -> Reader<Environment,Future<Optional<Optional<Output>>>> where ParameterType == Future<Optional<Optional<Input>>> {
		return Reader<Environment,Future<Optional<Optional<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Future<Optional<Result<Output,Secondary3>>>>) -> Reader<Environment,Future<Optional<Result<Output,Secondary3>>>> where ParameterType == Future<Optional<Result<Input,Secondary3>>> {
		return Reader<Environment,Future<Optional<Result<Output,Secondary3>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Future<Optional<Writer<Secondary3,Output>>>>) -> Reader<Environment,Future<Optional<Writer<Secondary3,Output>>>> where ParameterType == Future<Optional<Writer<Secondary3,Input>>> {
		return Reader<Environment,Future<Optional<Writer<Secondary3,Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Future<Result<Output,Secondary2>>>) -> Reader<Environment,Future<Result<Output,Secondary2>>> where ParameterType == Future<Result<Input,Secondary2>> {
		return Reader<Environment,Future<Result<Output,Secondary2>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Future<Result<Array<Output>,Secondary2>>>) -> Reader<Environment,Future<Result<Array<Output>,Secondary2>>> where ParameterType == Future<Result<Array<Input>,Secondary2>> {
		return Reader<Environment,Future<Result<Array<Output>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Future<Result<Optional<Output>,Secondary2>>>) -> Reader<Environment,Future<Result<Optional<Output>,Secondary2>>> where ParameterType == Future<Result<Optional<Input>,Secondary2>> {
		return Reader<Environment,Future<Result<Optional<Output>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Future<Result<Result<Output,Secondary3>,Secondary2>>>) -> Reader<Environment,Future<Result<Result<Output,Secondary3>,Secondary2>>> where ParameterType == Future<Result<Result<Input,Secondary3>,Secondary2>> {
		return Reader<Environment,Future<Result<Result<Output,Secondary3>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Future<Result<Writer<Secondary3,Output>,Secondary2>>>) -> Reader<Environment,Future<Result<Writer<Secondary3,Output>,Secondary2>>> where ParameterType == Future<Result<Writer<Secondary3,Input>,Secondary2>> {
		return Reader<Environment,Future<Result<Writer<Secondary3,Output>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Future<Writer<Secondary2,Output>>>) -> Reader<Environment,Future<Writer<Secondary2,Output>>> where ParameterType == Future<Writer<Secondary2,Input>> {
		return Reader<Environment,Future<Writer<Secondary2,Output>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Future<Writer<Secondary2,Array<Output>>>>) -> Reader<Environment,Future<Writer<Secondary2,Array<Output>>>> where ParameterType == Future<Writer<Secondary2,Array<Input>>> {
		return Reader<Environment,Future<Writer<Secondary2,Array<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Future<Writer<Secondary2,Optional<Output>>>>) -> Reader<Environment,Future<Writer<Secondary2,Optional<Output>>>> where ParameterType == Future<Writer<Secondary2,Optional<Input>>> {
		return Reader<Environment,Future<Writer<Secondary2,Optional<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Future<Writer<Secondary2,Result<Output,Secondary3>>>>) -> Reader<Environment,Future<Writer<Secondary2,Result<Output,Secondary3>>>> where ParameterType == Future<Writer<Secondary2,Result<Input,Secondary3>>> {
		return Reader<Environment,Future<Writer<Secondary2,Result<Output,Secondary3>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Future<Writer<Secondary2,Writer<Secondary3,Output>>>>) -> Reader<Environment,Future<Writer<Secondary2,Writer<Secondary3,Output>>>> where ParameterType == Future<Writer<Secondary2,Writer<Secondary3,Input>>> {
		return Reader<Environment,Future<Writer<Secondary2,Writer<Secondary3,Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
    func flatMapT <Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Optional<Output>>) -> Reader<Environment,Optional<Output>> where ParameterType == Optional<Input> {
        return Reader<Environment,Optional<Output>>.init { e in
            self.run(e).flatMap { transform($0).run(e) }
        }
    }

	func flatMapTT <Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Optional<Array<Output>>>) -> Reader<Environment,Optional<Array<Output>>> where ParameterType == Optional<Array<Input>> {
		return Reader<Environment,Optional<Array<Output>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Optional<Array<Array<Output>>>>) -> Reader<Environment,Optional<Array<Array<Output>>>> where ParameterType == Optional<Array<Array<Input>>> {
		return Reader<Environment,Optional<Array<Array<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Optional<Array<Optional<Output>>>>) -> Reader<Environment,Optional<Array<Optional<Output>>>> where ParameterType == Optional<Array<Optional<Input>>> {
		return Reader<Environment,Optional<Array<Optional<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Optional<Array<Result<Output,Secondary3>>>>) -> Reader<Environment,Optional<Array<Result<Output,Secondary3>>>> where ParameterType == Optional<Array<Result<Input,Secondary3>>> {
		return Reader<Environment,Optional<Array<Result<Output,Secondary3>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Optional<Array<Writer<Secondary3,Output>>>>) -> Reader<Environment,Optional<Array<Writer<Secondary3,Output>>>> where ParameterType == Optional<Array<Writer<Secondary3,Input>>> {
		return Reader<Environment,Optional<Array<Writer<Secondary3,Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Optional<Optional<Output>>>) -> Reader<Environment,Optional<Optional<Output>>> where ParameterType == Optional<Optional<Input>> {
		return Reader<Environment,Optional<Optional<Output>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Optional<Optional<Array<Output>>>>) -> Reader<Environment,Optional<Optional<Array<Output>>>> where ParameterType == Optional<Optional<Array<Input>>> {
		return Reader<Environment,Optional<Optional<Array<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Optional<Optional<Optional<Output>>>>) -> Reader<Environment,Optional<Optional<Optional<Output>>>> where ParameterType == Optional<Optional<Optional<Input>>> {
		return Reader<Environment,Optional<Optional<Optional<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Optional<Optional<Result<Output,Secondary3>>>>) -> Reader<Environment,Optional<Optional<Result<Output,Secondary3>>>> where ParameterType == Optional<Optional<Result<Input,Secondary3>>> {
		return Reader<Environment,Optional<Optional<Result<Output,Secondary3>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Optional<Optional<Writer<Secondary3,Output>>>>) -> Reader<Environment,Optional<Optional<Writer<Secondary3,Output>>>> where ParameterType == Optional<Optional<Writer<Secondary3,Input>>> {
		return Reader<Environment,Optional<Optional<Writer<Secondary3,Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Optional<Result<Output,Secondary2>>>) -> Reader<Environment,Optional<Result<Output,Secondary2>>> where ParameterType == Optional<Result<Input,Secondary2>> {
		return Reader<Environment,Optional<Result<Output,Secondary2>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Optional<Result<Array<Output>,Secondary2>>>) -> Reader<Environment,Optional<Result<Array<Output>,Secondary2>>> where ParameterType == Optional<Result<Array<Input>,Secondary2>> {
		return Reader<Environment,Optional<Result<Array<Output>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Optional<Result<Optional<Output>,Secondary2>>>) -> Reader<Environment,Optional<Result<Optional<Output>,Secondary2>>> where ParameterType == Optional<Result<Optional<Input>,Secondary2>> {
		return Reader<Environment,Optional<Result<Optional<Output>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Optional<Result<Result<Output,Secondary3>,Secondary2>>>) -> Reader<Environment,Optional<Result<Result<Output,Secondary3>,Secondary2>>> where ParameterType == Optional<Result<Result<Input,Secondary3>,Secondary2>> {
		return Reader<Environment,Optional<Result<Result<Output,Secondary3>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Optional<Result<Writer<Secondary3,Output>,Secondary2>>>) -> Reader<Environment,Optional<Result<Writer<Secondary3,Output>,Secondary2>>> where ParameterType == Optional<Result<Writer<Secondary3,Input>,Secondary2>> {
		return Reader<Environment,Optional<Result<Writer<Secondary3,Output>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Optional<Writer<Secondary2,Output>>>) -> Reader<Environment,Optional<Writer<Secondary2,Output>>> where ParameterType == Optional<Writer<Secondary2,Input>> {
		return Reader<Environment,Optional<Writer<Secondary2,Output>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Optional<Writer<Secondary2,Array<Output>>>>) -> Reader<Environment,Optional<Writer<Secondary2,Array<Output>>>> where ParameterType == Optional<Writer<Secondary2,Array<Input>>> {
		return Reader<Environment,Optional<Writer<Secondary2,Array<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Optional<Writer<Secondary2,Optional<Output>>>>) -> Reader<Environment,Optional<Writer<Secondary2,Optional<Output>>>> where ParameterType == Optional<Writer<Secondary2,Optional<Input>>> {
		return Reader<Environment,Optional<Writer<Secondary2,Optional<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Optional<Writer<Secondary2,Result<Output,Secondary3>>>>) -> Reader<Environment,Optional<Writer<Secondary2,Result<Output,Secondary3>>>> where ParameterType == Optional<Writer<Secondary2,Result<Input,Secondary3>>> {
		return Reader<Environment,Optional<Writer<Secondary2,Result<Output,Secondary3>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Optional<Writer<Secondary2,Writer<Secondary3,Output>>>>) -> Reader<Environment,Optional<Writer<Secondary2,Writer<Secondary3,Output>>>> where ParameterType == Optional<Writer<Secondary2,Writer<Secondary3,Input>>> {
		return Reader<Environment,Optional<Writer<Secondary2,Writer<Secondary3,Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
    func flatMapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Reader<Secondary,Output>>) -> Reader<Environment,Reader<Secondary,Output>> where ParameterType == Reader<Secondary,Input> {
        return Reader<Environment,Reader<Secondary,Output>>.init { e in
            self.run(e).flatMap { transform($0).run(e) }
        }
    }

	func flatMapTT <Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Reader<Secondary1,Array<Output>>>) -> Reader<Environment,Reader<Secondary1,Array<Output>>> where ParameterType == Reader<Secondary1,Array<Input>> {
		return Reader<Environment,Reader<Secondary1,Array<Output>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Reader<Secondary1,Array<Array<Output>>>>) -> Reader<Environment,Reader<Secondary1,Array<Array<Output>>>> where ParameterType == Reader<Secondary1,Array<Array<Input>>> {
		return Reader<Environment,Reader<Secondary1,Array<Array<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Reader<Secondary1,Array<Optional<Output>>>>) -> Reader<Environment,Reader<Secondary1,Array<Optional<Output>>>> where ParameterType == Reader<Secondary1,Array<Optional<Input>>> {
		return Reader<Environment,Reader<Secondary1,Array<Optional<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Reader<Secondary1,Array<Result<Output,Secondary3>>>>) -> Reader<Environment,Reader<Secondary1,Array<Result<Output,Secondary3>>>> where ParameterType == Reader<Secondary1,Array<Result<Input,Secondary3>>> {
		return Reader<Environment,Reader<Secondary1,Array<Result<Output,Secondary3>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Reader<Secondary1,Array<Writer<Secondary3,Output>>>>) -> Reader<Environment,Reader<Secondary1,Array<Writer<Secondary3,Output>>>> where ParameterType == Reader<Secondary1,Array<Writer<Secondary3,Input>>> {
		return Reader<Environment,Reader<Secondary1,Array<Writer<Secondary3,Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Reader<Secondary1,Optional<Output>>>) -> Reader<Environment,Reader<Secondary1,Optional<Output>>> where ParameterType == Reader<Secondary1,Optional<Input>> {
		return Reader<Environment,Reader<Secondary1,Optional<Output>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Reader<Secondary1,Optional<Array<Output>>>>) -> Reader<Environment,Reader<Secondary1,Optional<Array<Output>>>> where ParameterType == Reader<Secondary1,Optional<Array<Input>>> {
		return Reader<Environment,Reader<Secondary1,Optional<Array<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Reader<Secondary1,Optional<Optional<Output>>>>) -> Reader<Environment,Reader<Secondary1,Optional<Optional<Output>>>> where ParameterType == Reader<Secondary1,Optional<Optional<Input>>> {
		return Reader<Environment,Reader<Secondary1,Optional<Optional<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Reader<Secondary1,Optional<Result<Output,Secondary3>>>>) -> Reader<Environment,Reader<Secondary1,Optional<Result<Output,Secondary3>>>> where ParameterType == Reader<Secondary1,Optional<Result<Input,Secondary3>>> {
		return Reader<Environment,Reader<Secondary1,Optional<Result<Output,Secondary3>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Reader<Secondary1,Optional<Writer<Secondary3,Output>>>>) -> Reader<Environment,Reader<Secondary1,Optional<Writer<Secondary3,Output>>>> where ParameterType == Reader<Secondary1,Optional<Writer<Secondary3,Input>>> {
		return Reader<Environment,Reader<Secondary1,Optional<Writer<Secondary3,Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Reader<Secondary1,Result<Output,Secondary2>>>) -> Reader<Environment,Reader<Secondary1,Result<Output,Secondary2>>> where ParameterType == Reader<Secondary1,Result<Input,Secondary2>> {
		return Reader<Environment,Reader<Secondary1,Result<Output,Secondary2>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Reader<Secondary1,Result<Array<Output>,Secondary2>>>) -> Reader<Environment,Reader<Secondary1,Result<Array<Output>,Secondary2>>> where ParameterType == Reader<Secondary1,Result<Array<Input>,Secondary2>> {
		return Reader<Environment,Reader<Secondary1,Result<Array<Output>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Reader<Secondary1,Result<Optional<Output>,Secondary2>>>) -> Reader<Environment,Reader<Secondary1,Result<Optional<Output>,Secondary2>>> where ParameterType == Reader<Secondary1,Result<Optional<Input>,Secondary2>> {
		return Reader<Environment,Reader<Secondary1,Result<Optional<Output>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Reader<Secondary1,Result<Result<Output,Secondary3>,Secondary2>>>) -> Reader<Environment,Reader<Secondary1,Result<Result<Output,Secondary3>,Secondary2>>> where ParameterType == Reader<Secondary1,Result<Result<Input,Secondary3>,Secondary2>> {
		return Reader<Environment,Reader<Secondary1,Result<Result<Output,Secondary3>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Reader<Secondary1,Result<Writer<Secondary3,Output>,Secondary2>>>) -> Reader<Environment,Reader<Secondary1,Result<Writer<Secondary3,Output>,Secondary2>>> where ParameterType == Reader<Secondary1,Result<Writer<Secondary3,Input>,Secondary2>> {
		return Reader<Environment,Reader<Secondary1,Result<Writer<Secondary3,Output>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Reader<Secondary1,Writer<Secondary2,Output>>>) -> Reader<Environment,Reader<Secondary1,Writer<Secondary2,Output>>> where ParameterType == Reader<Secondary1,Writer<Secondary2,Input>> {
		return Reader<Environment,Reader<Secondary1,Writer<Secondary2,Output>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Reader<Secondary1,Writer<Secondary2,Array<Output>>>>) -> Reader<Environment,Reader<Secondary1,Writer<Secondary2,Array<Output>>>> where ParameterType == Reader<Secondary1,Writer<Secondary2,Array<Input>>> {
		return Reader<Environment,Reader<Secondary1,Writer<Secondary2,Array<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Reader<Secondary1,Writer<Secondary2,Optional<Output>>>>) -> Reader<Environment,Reader<Secondary1,Writer<Secondary2,Optional<Output>>>> where ParameterType == Reader<Secondary1,Writer<Secondary2,Optional<Input>>> {
		return Reader<Environment,Reader<Secondary1,Writer<Secondary2,Optional<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Reader<Secondary1,Writer<Secondary2,Result<Output,Secondary3>>>>) -> Reader<Environment,Reader<Secondary1,Writer<Secondary2,Result<Output,Secondary3>>>> where ParameterType == Reader<Secondary1,Writer<Secondary2,Result<Input,Secondary3>>> {
		return Reader<Environment,Reader<Secondary1,Writer<Secondary2,Result<Output,Secondary3>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Reader<Secondary1,Writer<Secondary2,Writer<Secondary3,Output>>>>) -> Reader<Environment,Reader<Secondary1,Writer<Secondary2,Writer<Secondary3,Output>>>> where ParameterType == Reader<Secondary1,Writer<Secondary2,Writer<Secondary3,Input>>> {
		return Reader<Environment,Reader<Secondary1,Writer<Secondary2,Writer<Secondary3,Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
    func flatMapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Result<Output,Secondary>>) -> Reader<Environment,Result<Output,Secondary>> where ParameterType == Result<Input,Secondary> {
        return Reader<Environment,Result<Output,Secondary>>.init { e in
            self.run(e).flatMap { transform($0).run(e) }
        }
    }

	func flatMapTT <Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Result<Array<Output>,Secondary1>>) -> Reader<Environment,Result<Array<Output>,Secondary1>> where ParameterType == Result<Array<Input>,Secondary1> {
		return Reader<Environment,Result<Array<Output>,Secondary1>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Result<Array<Array<Output>>,Secondary1>>) -> Reader<Environment,Result<Array<Array<Output>>,Secondary1>> where ParameterType == Result<Array<Array<Input>>,Secondary1> {
		return Reader<Environment,Result<Array<Array<Output>>,Secondary1>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Result<Array<Optional<Output>>,Secondary1>>) -> Reader<Environment,Result<Array<Optional<Output>>,Secondary1>> where ParameterType == Result<Array<Optional<Input>>,Secondary1> {
		return Reader<Environment,Result<Array<Optional<Output>>,Secondary1>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Result<Array<Result<Output,Secondary3>>,Secondary1>>) -> Reader<Environment,Result<Array<Result<Output,Secondary3>>,Secondary1>> where ParameterType == Result<Array<Result<Input,Secondary3>>,Secondary1> {
		return Reader<Environment,Result<Array<Result<Output,Secondary3>>,Secondary1>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Result<Array<Writer<Secondary3,Output>>,Secondary1>>) -> Reader<Environment,Result<Array<Writer<Secondary3,Output>>,Secondary1>> where ParameterType == Result<Array<Writer<Secondary3,Input>>,Secondary1> {
		return Reader<Environment,Result<Array<Writer<Secondary3,Output>>,Secondary1>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Result<Optional<Output>,Secondary1>>) -> Reader<Environment,Result<Optional<Output>,Secondary1>> where ParameterType == Result<Optional<Input>,Secondary1> {
		return Reader<Environment,Result<Optional<Output>,Secondary1>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Result<Optional<Array<Output>>,Secondary1>>) -> Reader<Environment,Result<Optional<Array<Output>>,Secondary1>> where ParameterType == Result<Optional<Array<Input>>,Secondary1> {
		return Reader<Environment,Result<Optional<Array<Output>>,Secondary1>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Result<Optional<Optional<Output>>,Secondary1>>) -> Reader<Environment,Result<Optional<Optional<Output>>,Secondary1>> where ParameterType == Result<Optional<Optional<Input>>,Secondary1> {
		return Reader<Environment,Result<Optional<Optional<Output>>,Secondary1>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Result<Optional<Result<Output,Secondary3>>,Secondary1>>) -> Reader<Environment,Result<Optional<Result<Output,Secondary3>>,Secondary1>> where ParameterType == Result<Optional<Result<Input,Secondary3>>,Secondary1> {
		return Reader<Environment,Result<Optional<Result<Output,Secondary3>>,Secondary1>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Result<Optional<Writer<Secondary3,Output>>,Secondary1>>) -> Reader<Environment,Result<Optional<Writer<Secondary3,Output>>,Secondary1>> where ParameterType == Result<Optional<Writer<Secondary3,Input>>,Secondary1> {
		return Reader<Environment,Result<Optional<Writer<Secondary3,Output>>,Secondary1>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Result<Result<Output,Secondary2>,Secondary1>>) -> Reader<Environment,Result<Result<Output,Secondary2>,Secondary1>> where ParameterType == Result<Result<Input,Secondary2>,Secondary1> {
		return Reader<Environment,Result<Result<Output,Secondary2>,Secondary1>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Result<Result<Array<Output>,Secondary2>,Secondary1>>) -> Reader<Environment,Result<Result<Array<Output>,Secondary2>,Secondary1>> where ParameterType == Result<Result<Array<Input>,Secondary2>,Secondary1> {
		return Reader<Environment,Result<Result<Array<Output>,Secondary2>,Secondary1>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Result<Result<Optional<Output>,Secondary2>,Secondary1>>) -> Reader<Environment,Result<Result<Optional<Output>,Secondary2>,Secondary1>> where ParameterType == Result<Result<Optional<Input>,Secondary2>,Secondary1> {
		return Reader<Environment,Result<Result<Optional<Output>,Secondary2>,Secondary1>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Result<Result<Result<Output,Secondary3>,Secondary2>,Secondary1>>) -> Reader<Environment,Result<Result<Result<Output,Secondary3>,Secondary2>,Secondary1>> where ParameterType == Result<Result<Result<Input,Secondary3>,Secondary2>,Secondary1> {
		return Reader<Environment,Result<Result<Result<Output,Secondary3>,Secondary2>,Secondary1>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Result<Result<Writer<Secondary3,Output>,Secondary2>,Secondary1>>) -> Reader<Environment,Result<Result<Writer<Secondary3,Output>,Secondary2>,Secondary1>> where ParameterType == Result<Result<Writer<Secondary3,Input>,Secondary2>,Secondary1> {
		return Reader<Environment,Result<Result<Writer<Secondary3,Output>,Secondary2>,Secondary1>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Result<Writer<Secondary2,Output>,Secondary1>>) -> Reader<Environment,Result<Writer<Secondary2,Output>,Secondary1>> where ParameterType == Result<Writer<Secondary2,Input>,Secondary1> {
		return Reader<Environment,Result<Writer<Secondary2,Output>,Secondary1>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Result<Writer<Secondary2,Array<Output>>,Secondary1>>) -> Reader<Environment,Result<Writer<Secondary2,Array<Output>>,Secondary1>> where ParameterType == Result<Writer<Secondary2,Array<Input>>,Secondary1> {
		return Reader<Environment,Result<Writer<Secondary2,Array<Output>>,Secondary1>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Result<Writer<Secondary2,Optional<Output>>,Secondary1>>) -> Reader<Environment,Result<Writer<Secondary2,Optional<Output>>,Secondary1>> where ParameterType == Result<Writer<Secondary2,Optional<Input>>,Secondary1> {
		return Reader<Environment,Result<Writer<Secondary2,Optional<Output>>,Secondary1>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Result<Writer<Secondary2,Result<Output,Secondary3>>,Secondary1>>) -> Reader<Environment,Result<Writer<Secondary2,Result<Output,Secondary3>>,Secondary1>> where ParameterType == Result<Writer<Secondary2,Result<Input,Secondary3>>,Secondary1> {
		return Reader<Environment,Result<Writer<Secondary2,Result<Output,Secondary3>>,Secondary1>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Result<Writer<Secondary2,Writer<Secondary3,Output>>,Secondary1>>) -> Reader<Environment,Result<Writer<Secondary2,Writer<Secondary3,Output>>,Secondary1>> where ParameterType == Result<Writer<Secondary2,Writer<Secondary3,Input>>,Secondary1> {
		return Reader<Environment,Result<Writer<Secondary2,Writer<Secondary3,Output>>,Secondary1>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
    func flatMapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,State<Secondary,Output>>) -> Reader<Environment,State<Secondary,Output>> where ParameterType == State<Secondary,Input> {
        return Reader<Environment,State<Secondary,Output>>.init { e in
            self.run(e).flatMap { transform($0).run(e) }
        }
    }

	func flatMapTT <Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,State<Secondary1,Array<Output>>>) -> Reader<Environment,State<Secondary1,Array<Output>>> where ParameterType == State<Secondary1,Array<Input>> {
		return Reader<Environment,State<Secondary1,Array<Output>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,State<Secondary1,Array<Array<Output>>>>) -> Reader<Environment,State<Secondary1,Array<Array<Output>>>> where ParameterType == State<Secondary1,Array<Array<Input>>> {
		return Reader<Environment,State<Secondary1,Array<Array<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,State<Secondary1,Array<Optional<Output>>>>) -> Reader<Environment,State<Secondary1,Array<Optional<Output>>>> where ParameterType == State<Secondary1,Array<Optional<Input>>> {
		return Reader<Environment,State<Secondary1,Array<Optional<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,State<Secondary1,Array<Result<Output,Secondary3>>>>) -> Reader<Environment,State<Secondary1,Array<Result<Output,Secondary3>>>> where ParameterType == State<Secondary1,Array<Result<Input,Secondary3>>> {
		return Reader<Environment,State<Secondary1,Array<Result<Output,Secondary3>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,State<Secondary1,Array<Writer<Secondary3,Output>>>>) -> Reader<Environment,State<Secondary1,Array<Writer<Secondary3,Output>>>> where ParameterType == State<Secondary1,Array<Writer<Secondary3,Input>>> {
		return Reader<Environment,State<Secondary1,Array<Writer<Secondary3,Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,State<Secondary1,Optional<Output>>>) -> Reader<Environment,State<Secondary1,Optional<Output>>> where ParameterType == State<Secondary1,Optional<Input>> {
		return Reader<Environment,State<Secondary1,Optional<Output>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,State<Secondary1,Optional<Array<Output>>>>) -> Reader<Environment,State<Secondary1,Optional<Array<Output>>>> where ParameterType == State<Secondary1,Optional<Array<Input>>> {
		return Reader<Environment,State<Secondary1,Optional<Array<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,State<Secondary1,Optional<Optional<Output>>>>) -> Reader<Environment,State<Secondary1,Optional<Optional<Output>>>> where ParameterType == State<Secondary1,Optional<Optional<Input>>> {
		return Reader<Environment,State<Secondary1,Optional<Optional<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,State<Secondary1,Optional<Result<Output,Secondary3>>>>) -> Reader<Environment,State<Secondary1,Optional<Result<Output,Secondary3>>>> where ParameterType == State<Secondary1,Optional<Result<Input,Secondary3>>> {
		return Reader<Environment,State<Secondary1,Optional<Result<Output,Secondary3>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,State<Secondary1,Optional<Writer<Secondary3,Output>>>>) -> Reader<Environment,State<Secondary1,Optional<Writer<Secondary3,Output>>>> where ParameterType == State<Secondary1,Optional<Writer<Secondary3,Input>>> {
		return Reader<Environment,State<Secondary1,Optional<Writer<Secondary3,Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,State<Secondary1,Result<Output,Secondary2>>>) -> Reader<Environment,State<Secondary1,Result<Output,Secondary2>>> where ParameterType == State<Secondary1,Result<Input,Secondary2>> {
		return Reader<Environment,State<Secondary1,Result<Output,Secondary2>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,State<Secondary1,Result<Array<Output>,Secondary2>>>) -> Reader<Environment,State<Secondary1,Result<Array<Output>,Secondary2>>> where ParameterType == State<Secondary1,Result<Array<Input>,Secondary2>> {
		return Reader<Environment,State<Secondary1,Result<Array<Output>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,State<Secondary1,Result<Optional<Output>,Secondary2>>>) -> Reader<Environment,State<Secondary1,Result<Optional<Output>,Secondary2>>> where ParameterType == State<Secondary1,Result<Optional<Input>,Secondary2>> {
		return Reader<Environment,State<Secondary1,Result<Optional<Output>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,State<Secondary1,Result<Result<Output,Secondary3>,Secondary2>>>) -> Reader<Environment,State<Secondary1,Result<Result<Output,Secondary3>,Secondary2>>> where ParameterType == State<Secondary1,Result<Result<Input,Secondary3>,Secondary2>> {
		return Reader<Environment,State<Secondary1,Result<Result<Output,Secondary3>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,State<Secondary1,Result<Writer<Secondary3,Output>,Secondary2>>>) -> Reader<Environment,State<Secondary1,Result<Writer<Secondary3,Output>,Secondary2>>> where ParameterType == State<Secondary1,Result<Writer<Secondary3,Input>,Secondary2>> {
		return Reader<Environment,State<Secondary1,Result<Writer<Secondary3,Output>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,State<Secondary1,Writer<Secondary2,Output>>>) -> Reader<Environment,State<Secondary1,Writer<Secondary2,Output>>> where ParameterType == State<Secondary1,Writer<Secondary2,Input>> {
		return Reader<Environment,State<Secondary1,Writer<Secondary2,Output>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,State<Secondary1,Writer<Secondary2,Array<Output>>>>) -> Reader<Environment,State<Secondary1,Writer<Secondary2,Array<Output>>>> where ParameterType == State<Secondary1,Writer<Secondary2,Array<Input>>> {
		return Reader<Environment,State<Secondary1,Writer<Secondary2,Array<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,State<Secondary1,Writer<Secondary2,Optional<Output>>>>) -> Reader<Environment,State<Secondary1,Writer<Secondary2,Optional<Output>>>> where ParameterType == State<Secondary1,Writer<Secondary2,Optional<Input>>> {
		return Reader<Environment,State<Secondary1,Writer<Secondary2,Optional<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,State<Secondary1,Writer<Secondary2,Result<Output,Secondary3>>>>) -> Reader<Environment,State<Secondary1,Writer<Secondary2,Result<Output,Secondary3>>>> where ParameterType == State<Secondary1,Writer<Secondary2,Result<Input,Secondary3>>> {
		return Reader<Environment,State<Secondary1,Writer<Secondary2,Result<Output,Secondary3>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,State<Secondary1,Writer<Secondary2,Writer<Secondary3,Output>>>>) -> Reader<Environment,State<Secondary1,Writer<Secondary2,Writer<Secondary3,Output>>>> where ParameterType == State<Secondary1,Writer<Secondary2,Writer<Secondary3,Input>>> {
		return Reader<Environment,State<Secondary1,Writer<Secondary2,Writer<Secondary3,Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
    func flatMapT <Secondary,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Writer<Secondary,Output>>) -> Reader<Environment,Writer<Secondary,Output>> where ParameterType == Writer<Secondary,Input> {
        return Reader<Environment,Writer<Secondary,Output>>.init { e in
            self.run(e).flatMap { transform($0).run(e) }
        }
    }

	func flatMapTT <Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Writer<Secondary1,Array<Output>>>) -> Reader<Environment,Writer<Secondary1,Array<Output>>> where ParameterType == Writer<Secondary1,Array<Input>> {
		return Reader<Environment,Writer<Secondary1,Array<Output>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Writer<Secondary1,Array<Array<Output>>>>) -> Reader<Environment,Writer<Secondary1,Array<Array<Output>>>> where ParameterType == Writer<Secondary1,Array<Array<Input>>> {
		return Reader<Environment,Writer<Secondary1,Array<Array<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Writer<Secondary1,Array<Optional<Output>>>>) -> Reader<Environment,Writer<Secondary1,Array<Optional<Output>>>> where ParameterType == Writer<Secondary1,Array<Optional<Input>>> {
		return Reader<Environment,Writer<Secondary1,Array<Optional<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Writer<Secondary1,Array<Result<Output,Secondary3>>>>) -> Reader<Environment,Writer<Secondary1,Array<Result<Output,Secondary3>>>> where ParameterType == Writer<Secondary1,Array<Result<Input,Secondary3>>> {
		return Reader<Environment,Writer<Secondary1,Array<Result<Output,Secondary3>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Writer<Secondary1,Array<Writer<Secondary3,Output>>>>) -> Reader<Environment,Writer<Secondary1,Array<Writer<Secondary3,Output>>>> where ParameterType == Writer<Secondary1,Array<Writer<Secondary3,Input>>> {
		return Reader<Environment,Writer<Secondary1,Array<Writer<Secondary3,Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Writer<Secondary1,Optional<Output>>>) -> Reader<Environment,Writer<Secondary1,Optional<Output>>> where ParameterType == Writer<Secondary1,Optional<Input>> {
		return Reader<Environment,Writer<Secondary1,Optional<Output>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Writer<Secondary1,Optional<Array<Output>>>>) -> Reader<Environment,Writer<Secondary1,Optional<Array<Output>>>> where ParameterType == Writer<Secondary1,Optional<Array<Input>>> {
		return Reader<Environment,Writer<Secondary1,Optional<Array<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Writer<Secondary1,Optional<Optional<Output>>>>) -> Reader<Environment,Writer<Secondary1,Optional<Optional<Output>>>> where ParameterType == Writer<Secondary1,Optional<Optional<Input>>> {
		return Reader<Environment,Writer<Secondary1,Optional<Optional<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Writer<Secondary1,Optional<Result<Output,Secondary3>>>>) -> Reader<Environment,Writer<Secondary1,Optional<Result<Output,Secondary3>>>> where ParameterType == Writer<Secondary1,Optional<Result<Input,Secondary3>>> {
		return Reader<Environment,Writer<Secondary1,Optional<Result<Output,Secondary3>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Writer<Secondary1,Optional<Writer<Secondary3,Output>>>>) -> Reader<Environment,Writer<Secondary1,Optional<Writer<Secondary3,Output>>>> where ParameterType == Writer<Secondary1,Optional<Writer<Secondary3,Input>>> {
		return Reader<Environment,Writer<Secondary1,Optional<Writer<Secondary3,Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Writer<Secondary1,Result<Output,Secondary2>>>) -> Reader<Environment,Writer<Secondary1,Result<Output,Secondary2>>> where ParameterType == Writer<Secondary1,Result<Input,Secondary2>> {
		return Reader<Environment,Writer<Secondary1,Result<Output,Secondary2>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Writer<Secondary1,Result<Array<Output>,Secondary2>>>) -> Reader<Environment,Writer<Secondary1,Result<Array<Output>,Secondary2>>> where ParameterType == Writer<Secondary1,Result<Array<Input>,Secondary2>> {
		return Reader<Environment,Writer<Secondary1,Result<Array<Output>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Writer<Secondary1,Result<Optional<Output>,Secondary2>>>) -> Reader<Environment,Writer<Secondary1,Result<Optional<Output>,Secondary2>>> where ParameterType == Writer<Secondary1,Result<Optional<Input>,Secondary2>> {
		return Reader<Environment,Writer<Secondary1,Result<Optional<Output>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Writer<Secondary1,Result<Result<Output,Secondary3>,Secondary2>>>) -> Reader<Environment,Writer<Secondary1,Result<Result<Output,Secondary3>,Secondary2>>> where ParameterType == Writer<Secondary1,Result<Result<Input,Secondary3>,Secondary2>> {
		return Reader<Environment,Writer<Secondary1,Result<Result<Output,Secondary3>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Writer<Secondary1,Result<Writer<Secondary3,Output>,Secondary2>>>) -> Reader<Environment,Writer<Secondary1,Result<Writer<Secondary3,Output>,Secondary2>>> where ParameterType == Writer<Secondary1,Result<Writer<Secondary3,Input>,Secondary2>> {
		return Reader<Environment,Writer<Secondary1,Result<Writer<Secondary3,Output>,Secondary2>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTT <Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Writer<Secondary1,Writer<Secondary2,Output>>>) -> Reader<Environment,Writer<Secondary1,Writer<Secondary2,Output>>> where ParameterType == Writer<Secondary1,Writer<Secondary2,Input>> {
		return Reader<Environment,Writer<Secondary1,Writer<Secondary2,Output>>>.init { e in
			self.run(e).flatMapT { transform($0).run(e) }
		}
	}

	func flatMapTTT<Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Writer<Secondary1,Writer<Secondary2,Array<Output>>>>) -> Reader<Environment,Writer<Secondary1,Writer<Secondary2,Array<Output>>>> where ParameterType == Writer<Secondary1,Writer<Secondary2,Array<Input>>> {
		return Reader<Environment,Writer<Secondary1,Writer<Secondary2,Array<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Writer<Secondary1,Writer<Secondary2,Optional<Output>>>>) -> Reader<Environment,Writer<Secondary1,Writer<Secondary2,Optional<Output>>>> where ParameterType == Writer<Secondary1,Writer<Secondary2,Optional<Input>>> {
		return Reader<Environment,Writer<Secondary1,Writer<Secondary2,Optional<Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Writer<Secondary1,Writer<Secondary2,Result<Output,Secondary3>>>>) -> Reader<Environment,Writer<Secondary1,Writer<Secondary2,Result<Output,Secondary3>>>> where ParameterType == Writer<Secondary1,Writer<Secondary2,Result<Input,Secondary3>>> {
		return Reader<Environment,Writer<Secondary1,Writer<Secondary2,Result<Output,Secondary3>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
	func flatMapTTT<Secondary3,Secondary2,Secondary1,Input,Output> (_ transform: @escaping (Input) -> Reader<Environment,Writer<Secondary1,Writer<Secondary2,Writer<Secondary3,Output>>>>) -> Reader<Environment,Writer<Secondary1,Writer<Secondary2,Writer<Secondary3,Output>>>> where ParameterType == Writer<Secondary1,Writer<Secondary2,Writer<Secondary3,Input>>> {
		return Reader<Environment,Writer<Secondary1,Writer<Secondary2,Writer<Secondary3,Output>>>>.init { e in
			self.run(e).flatMapTT { transform($0).run(e) }
		}
	}
}
