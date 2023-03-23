//: [Previous](@previous)

import Foundation
 
class Human {
    
    var firstName: String = ""
    var lastName: String = ""
    
    var fullName: String {
        return firstName + " " + lastName
    }
    
    func sayHello() -> String {
        return "Hello"
    }
}

class SmartHuman: Human {
    
}

class Student: Human {
    
    override func sayHello() -> String {
        return super.sayHello() + " my friend"
    }
}

class Kid: Human {
    override func sayHello() -> String {
        return "agu"
    }
    override var fullName: String {
        return firstName
    }
    override var firstName: String {
        set {
            super.firstName = newValue + " :)"
        }
        get {
            return super.firstName
        }
    }
}

let human = Human()
human.firstName = "Serjo"
human.lastName = "Mascarpone"
human.fullName
human.sayHello()

let student = Student()
student.firstName = "Max"
student.lastName = "Addams"
student.fullName
student.sayHello()

let kid = Kid()
kid.firstName = "Abu"
kid.fullName
kid.sayHello()

let array = [kid, student, human]

for value in array {
    print(value.sayHello())
}


