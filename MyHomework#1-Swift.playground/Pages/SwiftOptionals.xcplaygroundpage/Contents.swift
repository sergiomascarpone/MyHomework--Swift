import UIKit

var greeting = "Hello, playground"

//?
let passcode = 1234
var enteredPasscode = 4321

var errorString: String?
if enteredPasscode != passcode {
    errorString = "Invalid passcode"
}

if errorString != nil {
    print("Phone unlocked")
}

//Double -> Int
let three = Int(3.14)
var intVar = Int("5")
let invalidVar = Int("World")

if let five = intVar  {
    print(five)
}
if var intVar = intVar {
    print(intVar)
    intVar = 7
    print(intVar)
}
if let errorString = errorString {
    print(errorString)
}
if let intVar = intVar, let errorString = errorString {
    print("IntVar = \(intVar)")
    print("ErrorString = \(errorString)")
}

if let intVar = intVar {
    if let errorString = errorString {
        print("IntVar = \(intVar)")
        print("ErrorString = \(errorString)")
    }
}

//Force unwrap !

if errorString != nil {
    print(errorString!)
}

var messageString: String?
enteredPasscode = 1234
if enteredPasscode == passcode {
    messageString = "Phone unlocked"
} else {
    messageString = "Invalid passcode"
}

print(messageString!)

if errorString != nil {
    messageString = errorString
} else {
    messageString = "Phone unlocked"
}
print(messageString!)

messageString  = errorString != nil ? errorString : "Phone unlocked"
print(messageString!)

// ??
let oneInt: Int? = Int("1")
var oneOrTwo: Int = oneInt ?? 2


oneOrTwo = oneInt != nil ? oneInt! : 2
let twoDouble: Double = 2.0
oneOrTwo = oneInt ?? Int(twoDouble)

let result: (enteredPasscode: Int, errorString: String?)
enteredPasscode = 4321
if enteredPasscode == passcode {
    result = (enteredPasscode, nil)
} else {
    result = (enteredPasscode, "Invalid passcode")
}
if let error = result.errorString {
    print("Passcode \(result.enteredPasscode), Error: \(error) ")
}
if result.errorString != nil {
    print("Passcode \(result.enteredPasscode), Error \(result.errorString!)")
}

var student: (name: String, age: Int)?
student = ("Jack", 20)
if let student = student {
    print("Name is \(student.name), Age is \(student.age)")
}
if let studentName = student?.name {
    print("Name is \(studentName)")
}
if let studentName = student?.name {
    if let studentAge = student?.age {
        print("Name is \(studentName), Age is \(studentAge)")
    }
}
if let studentName = student?.name, let studentAge = student?.age {
    print("Name is \(studentName), Age is \(studentAge)")
}

//String count
let fiveString: String = "five"
print("\(fiveString) lenght = \(fiveString.count)")

if let count = errorString?.count {
    print("\(errorString!) lenght = \(count)")
}

let anotherStudent: (name: String?, age: Int)?
anotherStudent = ("Jack", 22)
if let count = anotherStudent?.name?.count {
    print("Lenght \(count)")
}

var count = anotherStudent?.name?.count ?? 0

if let student = anotherStudent {
    if let name = student.name {
        print("Another student's name is \(name)")
    }
}

if let student = anotherStudent, let name = student.name {
    print("Anothet student's name is \(name)")
    print("Another student's age is \(student.age)")
}

