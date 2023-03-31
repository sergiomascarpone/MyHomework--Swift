import Foundation

class Human {
    var weight: Int
    var age: Int
    
    init(weight: Int, age: Int) { //Designated Initializers
        self.weight = weight
        self.age = age
    }
    //Convenience Initializers
    convenience init(age: Int) {
        self.init(weight: 0, age: age)
    }
    convenience init(weight: Int) {
        self.init(weight: weight, age: 0)
    }
    convenience init() {
        self.init(weight: 0)
    }
    func test(){}
}

enum Color : Int {
case Black
case White
    
    init?(_ value: Int) {
        switch value {
        case 0: self = Color.Black
        case 1: self = Color.White
        default: return nil
        }
    }
}

let a = Color(2)
//let b = Color(rawValue: 0)


struct Size {
    var width: Int
    var height: Int
    
    init?(width: Int, height: Int) {
        self.width = width
        if height < 0 {
            return nil
        }
        self.height = height
    }
}

class Friend : Human {
    
    var name: String!
    
    let skin : Color = {
        let random = Int(arc4random_uniform(2))
        return Color(random)!
    }()
    
    init?(name: String) {
        self.name = name
        super.init(weight: 0, age: 0)
        if name.isEmpty {
            return nil
        }
    }
    required init() {
        self.name = "Hi"
        super.init(weight: 0, age: 0)
        }
    }
let f = Friend(name: "a")

class BestFriend : Friend {
    
    override init?(name: String) {
        
        if name.isEmpty {
            super.init()
        } else {
            super.init(name: name)!
        }
    }
    required init() {
        super.init()
    }
}

let b = BestFriend(name: "")
