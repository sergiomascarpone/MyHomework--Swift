//: [Previous](@previous)

import Foundation
 
class Human {
    
    var firstName : String = ""
    var lastName : String = ""
    
    var fullName : String {
        return firstName + " " + lastName
    }
    
    func sayHello() -> String {
        return "Hello"
    }
}

class Student : Human {
    override func sayHello() -> String {
        return "sup"
    }
}

class Kid : Human {
    override func sayHello() -> String {
        return "agu"
    }
}

let human = Human()
human.firstName = "Serjo"
human.lastName = "Mascarpone"
human.sayHello()

let student = Student()
student.firstName = "Max"
student.lastName = "Addams"
student.sayHello()

let kid = Kid()
kid.firstName = "Abu"
kid.sayHello()




