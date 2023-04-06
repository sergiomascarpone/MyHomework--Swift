extension Int {
    
    var isEven: Bool {
        return self % 2 == 0
    }
    
    var isOdd: Bool {
        return !isEven
    }
    
    enum EvenOrOdd {
        case Even
        case Odd
    }
    
    var evenOrOdd: EvenOrOdd {
        return isEven ? .Even : .Odd
    }
}

let a = 5

if a % 2 != 0 {
    print("a")
}

if a.isOdd {
    print("a")
}

a.evenOrOdd





























