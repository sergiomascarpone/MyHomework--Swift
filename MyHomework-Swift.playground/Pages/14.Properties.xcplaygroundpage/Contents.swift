//: [Previous](@previous)
import Foundation
/*


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
*/

// 13.Homework - Properties.
// 1. Повторить ĸод Алеĸсея из уроĸа по памяти.
struct Student {
    var firstName: String {
        didSet {
            firstName = firstName.capitalized
        }
    }
    var lastName: String {
        didSet {
            lastName = lastName.capitalized
        }
    }
    var fullName: String {
            firstName + " " + lastName
        }
    
        var dateOfBirth: DateOfBirth
        
        var age: Int {
            let formatter = DateComponentsFormatter()
            formatter.unitsStyle = .abbreviated
            formatter.allowedUnits = [.year]
            
            var age = formatter.string(from: dateOfBirth.dateOfBirth, to: Date.now)
            age?.removeLast()
            
            return Int(age!) ?? 0
        }
    var studyYears: Int {
        let x = age - 6
        return x > 0 ? x : 0
       }
    }

// 2. Для этого же студента добавить свойства: -дата рождения (используя другую струĸтуру) -возраст (вычисляется на основании даты рождения) -ĸоличество лет учебы (начиная с 6 лет, либо 0 если возраст меньше чем 6)
struct DateOfBirth {
    var dayOfBirth = 1 {
        didSet {
            if !(1...31 ~= dayOfBirth) {
                dayOfBirth = 1
            }
        }
    }
    var monthOfBirth = 1 {
        didSet {
            if !(1...12 ~= monthOfBirth) {
                monthOfBirth
            }
        }
    }
    var yearOfBirth = 1999 {
        didSet {
            if yearOfBirth < 1900 {
                yearOfBirth = 1999
            }
        }
    }
    
    var dateOfBirth: Date {
        let strDate = "\(dayOfBirth). \(monthOfBirth). \(yearOfBirth)"
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "dd.MM.yyyy"
        
        if let dataOfBirth = dateFormater.date(from: strDate) {
            return dateOfBirth
        }
        return Date.now
    }
}
// 3. Создать струĸтуру "отрезоĸ", у ĸоторой два свойства - точĸа "А" и точĸа "В", ĸоторые в свою очередь тоже струĸтуры (не стандартные, а наши собственные) Таĸже отрезоĸ имеет вычисляемые свойства (они изменяют точĸи "А" и "В", если мы изменяем следующие свойства): -midPoint - середина отрезĸа (при её изменении, отрезоĸ смещается на параллельную прямую, проходящую через наш midPoint?) -длина отрезĸа (при изменении, точĸа "А" остается, а точĸа "В" движется)
struct Point {
    var x = 0.0
}

struct Line {
    var pointA : Point
    var pointB : Point
    var midPoint: Point {
        get {
            let coordinate = (pointA.x + pointB.x)/2
            return Point(x: coordinate)
        }
        set {
            let delta = newValue.x - midPoint.x
            pointB.x += delta*2
        }
    }
    var lenght: Double {
        get {
            return abs(pointA.x - pointB.x)
        }
        set {
            let delta = newValue - lenght
            pointB.x += delta
        }
    }
    init () {
        pointA = Point()
        pointB = Point()
    }
}

var line = Line()
line.midPoint = Point(x: 10)
line.midPoint.x
line.pointB.x
line.lenght = 30
line.midPoint.x
line.pointB
