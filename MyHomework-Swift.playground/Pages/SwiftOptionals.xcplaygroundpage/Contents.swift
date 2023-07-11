import UIKit

var x = Int("123")

if let unwrapedX = x {
    print(unwrapedX)
} else {
    
}

// Int != Int?
if x != nil {
    
}

// true && true
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}


// ? - Optional type
let passcode = 1234
var enteredPasscode = 4321

var errorString: String?
if enteredPasscode != passcode {
    errorString = "Invalid passcode"
}

if errorString != nil {
    print("Phone unlocked")
}

// Double -> Int
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
// explicity unwrap -  явная безопасная распаковка.
let a: Int = 1
let b: Int? = 1
let c: Int? = nil

if let b {
   print(a + b)
} else {
    print("B b нет значения!")
}

if let c {
    print(a + c)
} else {
    print("B c  нет значения!")
}

// Force unwrap ! - явная небезопасная распаковка.
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

// implicity unwrap -  неявная небезопасная распаковка.

// guard - разворачивание применяется только с функциями
func ff() {
    guard var e = Int("fjdsndf") else {
        return }
    e += 1
}

// ?? - значение по умолчанию.
let d: Int = 2
let e: Int? = nil
let f: Int? = nil

let g = Int("123") ?? 0

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

// String count
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

/*
// 4.Homework - Optionals
// Задание 1:

let a = "123"
let b = "321"
let c = "favorite"
let d = "not favorite"
let e = "-4"
let f = "10.9"

var sum = 0

if var firstSum = Int(a) {
    sum += firstSum
}

if var secondSum = Int (b) {
    sum += secondSum
}

if var thirdSum = Int (c) {
    sum += thirdSum
}

if Int(d) != nil {
    sum += Int(d)!
}

if let fifthSum = Int(e), let sixthSum = Double(f) {
    sum += fifthSum + Int(sixthSum)
}

print(Int(e))
print(Int(f))
print(sum)


// Задание 2:

let server: (statusCode: Int, message: String?, errorMessage: String?) = (100, nil, "error")
if  server.statusCode >= 200 && server.statusCode <= 300 {
    if let message = server.message {
        print(message)
    } else {
        print("Таких вводных быть не должно ))")
    }
} else {
    if let message = server.errorMessage {
        print(message)
    } else {
        print("Таких вводных быть не должно")
    }
}

let server: (statusCode: Int, message: String?, errorMessage: String?) = (100, nil, "error")
if server.statusCode >= 100 && server.statusCode <= 200 {
    if let message = server.message {
        print(message)
    } else {
        print("this Data not")
    }
} else {
    if let message = server.errorMessage {
        print(message)
    } else {
        print("Not Data")
    }
}


// Задание 3:

var responseTupleClone: (message: String?, errorMessage: String?) = ( nil, "It isn't okay at all!!!")

//responseTupleClone.errorMessage = nil

if let message = responseTupleClone.message {
    print(message)
} else if let errorMessage = responseTupleClone.errorMessage {
    print(errorMessage)
} else {
    print("A-A-A-A!!")
}

var firstStudentTuple: (name: String?, carNumber: String?, controlScore: Int?)
var secondStudentTuple: (name: String?, carNumber: String?, controlScore: Int?)
var thirdStudentTuple: (name: String?, carNumber: String?, controlScore: Int?)
var fourthStudentTuple: (name: String?, carNumber: String?, controlScore: Int?)
var fifthStudentTuple: (name: String?, carNumber: String?, controlScore: Int?)

firstStudentTuple.name = "Vanya"
secondStudentTuple.name = "Sabina"
thirdStudentTuple.name = "Gosha"
fourthStudentTuple.name = "Masha"
fifthStudentTuple.name = "Oleg"

firstStudentTuple.carNumber = "UP14AC1417"
thirdStudentTuple.carNumber = "AC41UP1714"
fifthStudentTuple.carNumber = "PU41CA4171"

firstStudentTuple.controlScore = 5
secondStudentTuple.controlScore = 5
fifthStudentTuple.controlScore = 4

print ("5 people entered the driving school.")

if firstStudentTuple.name != nil {
    print("Name: " + firstStudentTuple.name!)
}

if firstStudentTuple.carNumber != nil {
    print("Car number: " + firstStudentTuple.carNumber!)
} else {
    print("Student doesn't have a car")
}

if firstStudentTuple.controlScore != nil {
    print("Score: \(firstStudentTuple.controlScore!)")
} else {
    print("Student missed exam")
}
*/
