public extension Array {
    
    func sorted<Value>(kp: KeyPath<Element, Value>, order: Order) -> Self where Value: Comparable {
        return self.sorted { first, second -> Bool in
            switch order {
            case .desc:
                return first[keyPath: kp] < second[keyPath: kp]
            case .asc:
                return first[keyPath: kp] > second[keyPath: kp]
            }
        }
    }
    
    func sorted<Value>(lens: Lens<Element, Value>, order: Order) -> Self where Value: Comparable {
        return self.sorted { first, second -> Bool in
            switch order {
            case .desc:
                return lens.get(first) < lens.get(second)
            case .asc:
                return lens.get(first) > lens.get(second)
            }
        }
    }
    
}

public enum Order {
    case desc
    case asc
}

