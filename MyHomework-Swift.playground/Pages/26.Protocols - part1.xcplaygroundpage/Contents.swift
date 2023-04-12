import Foundation
protocol Priority {
    var order: Int { get }
}


protocol EntryName : Priority {
    var label: String { get }
}



class Student: EntryName {
    
    var firstSname: String
    var lastName: String
    
    var fullName: String {
        return firstSname + " " + lastName
    }
    
    init(firstName: String, lastName: String) {
        self.firstSname = firstName
        self.lastName = lastName
    }
    var label: String {
        return fullName
    }
    
    let order = 1
}

class Animal {
    
}

class Cow: Animal, EntryName {
    var name: String?
    
    var label: String {
        return name ?? "a cow"
    }
    
    let order = 2
}

struct Grass: EntryName {
    var type: String
    
    var label: String {
        return "Grass " + type
    }
    
    let order = 3
}

let student1 = Student(firstName: "Bob", lastName: "Saddy")
let student2 = Student(firstName: "Jim", lastName: "Aklson")
let student3 = Student(firstName: "Billy", lastName: "Badson")

let cow1 = Cow()
cow1.name = "Murka"
let cow2 = Cow()

let grass1 = Grass(type: "Bermuda")
let grass2 = Grass(type: "Marshall")


/*
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

func printFarm(`var` array: [EntryName]) {
    
    
    
    array.sort({a, b in
        if a.order == b.order {
            return a.label.lowercased(with: String) < b.label.lowercased(with: String)
        } else {
            return a.order < b.order
        }
    })
    
    for value in array {
        print(value.label)
    }
}


var array: [EntryName] =
[cow1, student1, grass2, cow2, student3, grass1, student2]

printFarm(var: array)
 */























