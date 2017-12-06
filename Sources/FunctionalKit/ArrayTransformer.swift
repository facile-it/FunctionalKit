

extension OptionalType where ParameterType: ArrayType {
	public func mapT <A> (_ transform: (ParameterType.ParameterType) -> A) -> Optional<Array<A>> {
		return fmap { $0.fmap(transform) }
	}

	public func flatMapT <A> (_ transform: (ParameterType.ParameterType) -> Optional<Array<A>>) -> Optional<Array<A>> {
		return bind { (value) -> Optional<Array<A>> in
			value.traverse(transform).fmap { $0.joined }
		}
	}
}

extension OptionalType where ParameterType: OptionalType {
	public func flatMapT <A> (_ transform: (ParameterType.ParameterType) -> Optional<Optional<A>>) -> Optional<Optional<A>> {
		return bind { (value) -> Optional<Optional<A>> in
			value.traverse(transform).fmap { $0.joined }
		}
	}
}

extension OptionalType where ParameterType: ResultType {
	public func mapT <A> (_ transform: (ParameterType.ParameterType) -> A) -> Optional<Result<ParameterType.ErrorType,A>> {
		return fmap { $0.map(transform) }
	}

	public func flatMapT <A> (_ transform: (ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,A>>) -> Optional<Result<ParameterType.ErrorType,A>> {
		return bind { (value) -> Optional<Result<ParameterType.ErrorType,A>> in
			value.traverse(transform).fmap { $0.joined }
		}
	}
}

extension OptionalType where ParameterType: ResultType, ParameterType.ParameterType: ArrayType {
	public func flatmapTT <A> (_ transform: (ParameterType.ParameterType.ParameterType) -> Optional<Result<ParameterType.ErrorType,Array<A>>>) -> Optional<Result<ParameterType.ErrorType,Array<A>>> {
		return flatMapT { (value) -> Optional<Result<ParameterType.ErrorType,Array<A>>> in
			value.traverse(transform).fmap { $0.traverse(fidentity) }.mapT { $0.joined }
		}
	}
}
