class Student {
    
    var firstSname: String
    var lastName: String
    
    var fullName: String {
        return firstSname + " " + lastName
    }
    
    init(firstName: String, lastName: String) {
        self.firstSname = firstName
        self.lastName = lastName
    }
}

class Cow {
    var name: String?
}

struct Grass {
    var type: String
}

let student1 = Student(firstName: "Bob", lastName: "Saddy")
let student2 = Student(firstName: "Jim", lastName: "Aklson")
let student3 = Student(firstName: "Billy", lastName: "Badson")

let cow1 = Cow()
cow1.name = "Murka"
let cow2 = Cow()

let grass1 = Grass(type: "Bermuda")
let grass2 = Grass(type: "Marshall")

var array: [Any] =
[cow1, student1, grass2, cow2, student3, grass1, student2]

for value in array {
    if let grass = value as? Grass {
        print(grass.type)
    } else if let student = value as? Student {
        print(student.fullName)
    } else if let cow = value as? Cow {
        print(cow.name ?? "a cow")
    }
    
    
     switch value {
     case let grass as Grass: print(grass.type)
     case let student as Student: print(student.fullName)
     case let cow as Cow: print(cow.name ?? "a cow")
     default: break
     }
     
}

























