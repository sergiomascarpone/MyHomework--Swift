//: [Previous](@previous)

import Foundation

struct Student {
    var firstName : String {
        
        willSet {
            print("will set " + newValue + "instead of " + firstName)
        }
        
        didSet(oldFirstName) {
            print("didSet " + firstName + "instead of " + oldFirstName)
            
            firstName = firstName.capitalized
        }
    }
    
    var lastName : String {
        didSet {
            lastName = lastName.capitalized
        }
    }
    
    var fullName : String {
        
        get {
            return firstName + " " + lastName
        }
        set {
            print("fullName wants to be set no " + newValue)
            
            let words = newValue.components(separatedBy: " ")
            
            if words.count > 0 {
                firstName = words[0]
            }
            if words.count > 1 {
                lastName = words[1]
            }
        }
    }
}

var student = Student(firstName: "Serjo", lastName: "Mascarpone")

student.firstName
student.lastName
student.fullName

student.fullName = "Alex Varlamov"
student.fullName
student.firstName
student.lastName
student.fullName

// Stored Properties - Свойства типов
let MaxNameLength = 30

class Human {
    
    var name : String {
            didSet {
                if (name).count > MaxNameLength {
                    name = oldValue
                }
            }
        }
// Lazy StoryProperties - загружаются только тогда, когда к ним возвращаются!
    lazy var storyOfMyLife = "This is a story of my entire life..."
    
    class var maxAge : Int {
        return 100
    }
    
    var age : Int {
        didSet {
            if age > Human.maxAge {
                age = oldValue
            }
        }
    }
    init(name: String, age : Int) {
        self.name = name
        self.age = age
    }
}

enum Direction {
    
    static let enumDescription = "Direction in the game"
    
    case Left
    case Right
    case Top
    case Bottom
    
// Пример Computer properties для Enum.
    var isVertikal : Bool {
        return self == .Top || self == .Bottom
    }
    
    var isHorizontal : Bool {
        return !isVertikal
    }
}
// Пример Computer properties для Enum.
let d = Direction.Right

d.isVertikal
d.isHorizontal

Direction.enumDescription

struct Cat {
    
    var name : String
    
    static let maxAge = 20
    static var totalCats = 0
    
    var age : Int {
        didSet {
            if age > Cat.maxAge {
                age = oldValue
            }
        }
    }
    
    init(name: String, age : Int) {
        self.name = name
        self.age = age
        
        Cat.totalCats+=1
    }
}

let human = Human(name: "Peter", age: 33)

human.storyOfMyLife


var cat = Cat(name: "Alvis", age: 12)

human.age = 1000
cat.age = 50

Cat.totalCats

let cat1 = Cat(name: "Alvis1", age: 19)
let cat2 = Cat(name: "Alvis2", age: 14)

Cat.totalCats

cat.name = "AbraKad"
