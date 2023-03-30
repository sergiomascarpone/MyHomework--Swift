import Foundation
/*
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
    func test() {}
}

enum Color: Int {
case Black
case White
    
    init?(_value: Int) {
        switch value {
        case 0: self = Color.Black
        case 1: self = Color.White
        default: return nil
        }
    }
}

let a = Color(1)

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
 */

class Friend {
    var name: String!
    
    init?(name: String) {
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
}
let f = Friend(name: "")









