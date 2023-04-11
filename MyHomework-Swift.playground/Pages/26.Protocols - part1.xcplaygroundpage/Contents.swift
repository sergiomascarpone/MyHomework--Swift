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





























