import UIKit
/*
var greeting = "Hello, playground World"

// count
var tripCount = 0

tripCount = 1
tripCount = 2

let maximumTripCount = 10

print(tripCount)
print(maximumTripCount)
tripCount = 3
print(tripCount)

// типы данных их четыре 40. 0. -12/
var intVar: Int = 0
var minInt: Int8 = Int8.min
var maxInt: Int8 = Int8.max

//UInt 0, 1, 2,...
var uinVar: UInt = 0
var minUInt8: UInt8 = UInt8.min
var maxUint8: UInt8 = UInt8.max
//Float, Double 3.14, 0.4, -15.12
var floatVar: Float = 3.14159111111
var doubleVar: Double = 3.141591111111111

var one: Int = 1
var two: Int = 1 + 1
var three: Int = 5 - 2
var four: Int = 2 * 2
var five: Int = 10 / 2

var anotherTwo: Int = four / 2
var anotherThree: Int = two + one

var pi: Double = 3 + 0.14

var zeroTwo = 3 + 0.14
var oneThree = 1 + 0.3

var oneTwo: Double = Double(one) + zeroTwo

//Bool - true, false
var carCanDrive = true
var carCanFly: Bool = false

//String

var hello: String = "Hello, "
var world: String = "World"
var helloWorld = hello + world
var stringValue: String = "The \(world) is amazing"
stringValue = "Pi is \(pi)"
stringValue = "\(pi) less than \(four)"
stringValue = "Can car fly? \(carCanFly)"

//Touples
var student = ("John", 21)
print("Student name is \(student.0) age is \(student.1)")
var anotherStudent: (String, Int) = ("Jack", 19)
var (studentName, studentAge) = ("Smith", 18)
print("Student name is \(studentName) age is \(studentAge)")

var thirdStudent = (name: "Matt", age: 33)
print("Student name is \(thirdStudent.name) age is \(thirdStudent.age)")
var oneMoreStudent: (name: String, age: Int) = ("Tom", 21)
print("Student name is \(oneMoreStudent.name) age is \(oneMoreStudent.age)")

//typealias
typealias StudentName = String
var lastStudent: (name: StudentName, age: Int) = ("Sammy", 32)
print("Student name is \(lastStudent.name) age is \(lastStudent.age)")

typealias Student = (name: StudentName, age: Int)
var studentFromTypealias: Student = ("Steve", 24)
print("Student name is \(studentFromTypealias.name) age is \(studentFromTypealias.age)")

//Операторы +, -, %,
var four = 2 + 2
four = 7 - 3
four = 2 * 2
four = 12 / 4

var six = 2 + 2 * 2
six = 2 + (2 * 2)
var eight = (2 + 2) * 2
var two = 2
eight = (2 + 2) * two
var anotherTwo = 2
eight = (anotherTwo + 2) * two

let rectangleA = 4
let rectangleB = 6
let rectangleS = rectangleA * rectangleB
var rectangleP = rectangleA + rectangleB + rectangleA + rectangleB
rectangleP = 2 * rectangleA * rectangleB
rectangleP = 2 * (rectangleA + rectangleB)

// +=, -=, *=, /=
var inVar = 3
inVar = inVar + 2
//idet posledovatelno
inVar = 3
inVar += 2
inVar -= 1
inVar *= 3
inVar /= 6

// + string
let hello = "Hello "
let world = " World"
var helloWorld = hello + world
helloWorld = "Hello " + "World"
helloWorld = "Hello " + world

helloWorld = hello
helloWorld += world

//%
inVar = 5 % 4
4 + 1
inVar = 5 % 2
2 + 2 + 1
inVar = 5 % 3
3 + 2
inVar = -5 % 3
inVar = -5 % 4

//operator delenia po modulu
inVar = 5 % -3
*/
//Операторы сравнения и Логические операторы

1 == 1
2 != 1
1 != 1
2 > 1
1 < 2
2 < 1
1 >= 1
2 <= 1

3.14 > 2

"a" < "b"
"aa" > "ab"
"hello" < "bank"
"hello" != "bank"

// if else
if true {
    print("It's true")
}
if false {
    print("It's false")
}

let passcode = 1234
let enteredPasscode = 3455
let isPasscodeCorrect = enteredPasscode == passcode

if isPasscodeCorrect {
    print("Phone unlocked")
}

if enteredPasscode == passcode {
    print("Phone unlocked")
} else {
    print("Invalid passcode")
}

// 6 - 10 morning
// 10 - 18 day
// 18 = 20 evening

var time = 8
if time <= 10 {
    print("It's morning now")
}
if time < 11 {
    print("It's morning now")
}

time = 20
if time >= 18 {
    print("It's evening now")
}
if time > 17 {
    print("It's evening now")
}

//else if
time = 15
if time <= 10 {
    print("It's morning now")
} else if time >= 18 {
    print("It's evening now" )
} else if time > 14 {
    print("It's afnernoon")
}

// if else
isPasscodeCorrect ? print("Phone unlocked") : print("Invalid passcode")

var message = enteredPasscode == passcode ? "Phone unlocked" : "Invalid code"
print(message)

if enteredPasscode == passcode {
    message = "Phone unlocked"
} else {
    message = "Invalid unlocked"
}
print(message)

//&& - true
if (time > 10) && (time < 18) {
    print("It's day now")
}
// || - ili
if (time <= 10) || (time >= 18) {
    print("It's not day now")
}
//!-true menzet na false i naoborot
let itsTrue = true
let itsFalse = !true
if !isPasscodeCorrect {
    print("Invalid passcode")
}

if (time > 10) && (time < 18) || (time > 18) {
    print("it's not morning")
}
if (time > 10) && (time < 18 || time == 10) {
    print("It's day")
}

let student: (Int, String) = (20, "Adam")
let anotherStudent: (Int, String) = (19, "John")
student < anotherStudent
20 < 19
"Adam" < "John"
//!!!!New tems  //Tuples*/

/*
let tupleValentine = (pushUp:30, pullUp:10, seatDown:100)

tupleValentine.0
tupleValentine.1
tupleValentine.2

tupleValentine.pushUp
tupleValentine.pullUp
tupleValentine.seatDown

print("Заданные тюплы: \(tupleValentine)")

print("")

print("Физическая подготовка Валентина:")
print("1. Отжимания - \(tupleValentine.0)")
print("2. Подтягивания - \(tupleValentine.1)")
print("3. Приседания - \(tupleValentine.2)")

print("")

var tuplePolina = (pushUp:5, pullUp:2, seatDown:20)

tuplePolina.0
tuplePolina.1
tuplePolina.2

tuplePolina.pushUp
tuplePolina.pullUp
tuplePolina.seatDown

print("Заданные тюплы: \(tuplePolina)")

print("")

//tuplePolina = tupleValentine, string is not for programm code. Only for task.

print("")

print("Физическая подготовка Полины:")
print("1. Отжимания - \(tuplePolina.0)")
print("2. Подтягивания - \(tuplePolina.1)")
print("3. Приседания - \(tuplePolina.2)")

print("")

if tupleValentine.pushUp > tuplePolina.pushUp             {
    let pushUpResults = tupleValentine.pushUp - tuplePolina.pushUp
    print("Валентин больше отжимается Полины на \(pushUpResults) раз")
}   else if tupleValentine.pushUp < tuplePolina.pushUp    {
    let pushUpResults = tuplePolina.pushUp - tupleValentine.pushUp
    print("Валентин меньше отжимается Полины на \(pushUpResults) раз")
}   else if tupleValentine.pushUp == tuplePolina.pushUp                 {
    let pushUpResults = tuplePolina.pushUp
    print("Валентин и Полина отжимаются одинаково \(tuplePolina.pushUp) раз")
}

if tupleValentine.1 > tuplePolina.1             {
    let pushUpResults = tupleValentine.1 - tuplePolina.1
    print("Валентин больше подтягивается Полины на \(pushUpResults) раз")
}   else if tupleValentine.1 < tuplePolina.1    {
    let pushUpResults = tuplePolina.1 - tupleValentine.1
    print("Валентин меньше подтягивается Полины на \(pushUpResults) раз")
}   else if tupleValentine.1 == tuplePolina.1                 {
    let pushUpResults = tuplePolina.1
    print("Валентин и Полина подтягиваются одинаково \(tuplePolina.1) раз")
}

if tupleValentine.seatDown > tuplePolina.seatDown             {
    let pushUpResults = tupleValentine.seatDown - tuplePolina.seatDown
    print("Валентин больше приседает Полины на \(pushUpResults) раз")
}   else if tupleValentine.seatDown < tuplePolina.seatDown    {
    let pushUpResults = tuplePolina.seatDown - tupleValentine.seatDown
    print("Валентин меньше приседает Полины на \(pushUpResults) раз")
}   else if tupleValentine.seatDown == tuplePolina.seatDown                 {
    let pushUpResults = tuplePolina.seatDown
    print("Валентин и Полина приседают одинаково \(tuplePolina.seatDown) раз")
}

/*let tuple = (index:1, phrase:"Hey", registre:true, latency:2.4)

tuple.0
tuple.1
tuple.2
tuple.3

tuple.index
tuple.latency
tuple.phrase
tuple.registre
print(tuple)*/

var tupleMascarpone = ( pushUp: 12, pullDown: 30, seatDown: 55 )

tupleMascarpone.0
tupleMascarpone.1
tupleMascarpone.2

tupleMascarpone.pushUp
tupleMascarpone.pullDown
tupleMascarpone.seatDown

print("Заданные тюлпы: \(tupleMascarpone)")

print("")

print("Физическая подготовка Mascarpone")
print("1.Подтягивания - \(tupleMascarpone.0)")
print("2.Отжимания - \(tupleMascarpone.1)")
print("3.Приседания - \(tupleMascarpone.2)")

print("")

var tupleOlga = ( pushUp: 2, pullDown: 5, seatDown: 60 )

tupleOlga.0
tupleOlga.1
tupleOlga.2

tupleOlga.pushUp
tupleOlga.pullDown
tupleOlga.seatDown

print("Заданные тюлпы: \(tupleOlga)")

print("")

print("Физическая подготовка OLga")
print("1.Подтягивания - \(tupleOlga.0)")
print("2.Отжимания - \(tupleOlga.1)")
print("3.Приседания - \(tupleOlga.2)")

print("")

if tupleMascarpone.pushUp > tupleOlga.pushUp {
    let pushUpResults = tupleMascarpone.pushUp - tupleOlga.pushUp
    print("Mascarpone отжимается больше Olga на \(pushUpResults) раз")
} else if tupleMascarpone.pushUp < tupleOlga.pushUp {
    let pushUpResults = tupleOlga.pushUp - tupleMascarpone.pushUp
    print("Mascarpone отжимается меньше Olga на \(pushUpResults) раз")
} else if tupleMascarpone.pushUp == tupleOlga.pushUp {
    let pushUpResults = tupleOlga.pushUp
    print("Mascarpone и Olga отжимаются одинаково на \(tupleOlga.pushUp) раз")
}

if tupleMascarpone.1 > tupleOlga.1 {
    let pushUpResults = tupleMascarpone.1 - tupleOlga.1
    print("Mascarpone отжимается больше Olga на \(pushUpResults) раз")
} else if tupleMascarpone.1 < tupleOlga.1 {
    let pushUpResults = tupleOlga.1 - tupleMascarpone.1
    print("Mascarpone отжимается меньше Olga на \(pushUpResults) раз")
} else if tupleMascarpone.1 == tupleOlga.1 {
    let pushUpResults = tupleOlga.1
    print("Mascarpone и Olga отжимаются одинаково на \(pushUpResults) раз")
}

if tupleMascarpone.seatDown > tupleOlga.seatDown {
    let pushUpResults = tupleMascarpone.seatDown - tupleOlga.seatDown
    print("Mascarpone приседает больше Olga на \(pushUpResults) раз")
} else if tupleMascarpone.seatDown < tupleOlga.seatDown {
    let pushUpResults = tupleOlga.seatDown - tupleMascarpone.seatDown
    print("Mascarpone приседают меньше Olga на \(pushUpResults) раз")
} else if tupleMascarpone.seatDown == tupleOlga.seatDown {
    let pushUpResults = tupleOlga.seatDown
    print("Mascarpone и Olga приседают одинаково на \(pushUpResults) раз")
}

var tupleAndry = ( pushUp: 12, pullDown: 22, seatDown: 30 )

tupleAndry.0
tupleAndry.1
tupleAndry.2

tupleAndry.pushUp
tupleAndry.pullDown
tupleAndry.seatDown

print("Заданные тюлпы: \(tupleAndry)")

print("")

print("Физическая подготовка Andry")
print("1.Подтягивания Andry - \(tupleAndry.pushUp)")
print("2.Приседания Andry - \(tupleAndry.seatDown)")
print("3.Отжимания Andry - \(tupleAndry.pullDown)")

print("")

if tupleAndry.pushUp > tupleOlga.pushUp {
    let pushUpResults = tupleAndry.pushUp - tupleOlga.pushUp
    print("Andry отжимается больше Olga на \(pushUpResults) раз")
} else if tupleAndry.pushUp < tupleOlga.pushUp {
    let pushUpResults = tupleOlga.pushUp - tupleAndry.pushUp
    print("Andry приседают меньше Olga на \(pushUpResults) раз")
} else if tupleAndry.pushUp == tupleOlga.pushUp {
    let pushUpResults = tupleOlga.pushUp
    print("Andry и Olga приседают одинаково на \(pushUpResults) раз")
}
    /*
5 Тема опциональные типы
     */
// продажи
/*
50 + 20 = 70
10 - 10 = 0
0
*/
/*
is it Saturday?

true / false / nil
*/

var apples : Int? = 5

    //apples = nil

if apples == nil {
    print("nil apples")
} else {
    let a = apples! + 2
}

if var number = apples {
    number = number + 2
} else {
    print("nil apples")
}

let ege = "20"


var apples2 : Int! = nil
apples2 = 2
apples2 = apples2 + 5


let firstString = "123"
let secondString = "323"
let thirdString = "favorite"
let fourthString = "not favorite"
let fifthString = "-3"
let sixthString = "10.3"

var sum = 0

if var firstString = Int(firstString) {
    sum += firstString
}

if var secondString = Int(secondString) {
    sum += secondString
}

if var thirdString = Int(thirdString) {
    sum += thirdString
}

if Int(fourthString) != nil {
    sum += Int(fourthString)!
}

if let fifthString = Int(firstString), let sixthSum = Double(sixthString) {
    sum += fifthString + Int(sixthSum)
}

print(Int(fifthString))
print(Int(sixthString))
print(sum)

var responseTuple : (code: Int, message: String?, errorMessage: String?) = (200, "It's okay", "It isnt ok!!!!")
//responseTuple.code = 301

if responseTuple.code >= 200 && responseTuple.code <= 300 {
   print(responseTuple.message!)
} else {
   print(responseTuple.errorMessage!)
    }

var responseTupleClone : (message: String?, errorMessage: String?) = ( nil, "It isn't okay at all!!!")

//responseTupleClone.errorMessage = nil

if let message = responseTupleClone.message {
   print(message)
} else if let errorMessage = responseTupleClone.errorMessage {
   print(errorMessage)
} else {
   print("A-A-A-A!!")
}

var firstStudentTuple : (name: String?, carNumber: String?, controlScore: Int?)
var secondStudentTuple : (name: String?, carNumber: String?, controlScore: Int?)
var thirdStudentTuple : (name: String?, carNumber: String?, controlScore: Int?)
var fourthStudentTuple : (name: String?, carNumber: String?, controlScore: Int?)
var fifthStudentTuple : (name: String?, carNumber: String?, controlScore: Int?)

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

print ("5 people entered the driving school.")

if secondStudentTuple.name != nil {
    print("Name: " + secondStudentTuple.name!)
}

if secondStudentTuple.carNumber != nil {
    print("Car number: " + secondStudentTuple.carNumber!)
} else {
    print("Student doesn't have a car")
}

if secondStudentTuple.controlScore != nil {
    print("Score: \(secondStudentTuple.controlScore!)")
} else {
    print("Student missed exam")
}


if thirdStudentTuple.name != nil {
    print("Name: " + thirdStudentTuple.name!)
}

if thirdStudentTuple.controlScore != nil {
    print("Car number: " + thirdStudentTuple.carNumber!)
} else {
    print("Student doesn't have a car")
}

if thirdStudentTuple.controlScore != nil {
    print("Score: \(thirdStudentTuple.controlScore!)")
} else {
    print("Student missed exam")
}
/*
if fourthStudentTuple.name != nil {
    print("Name: " + fourthStudentTuple.name!)
}

if fourthStudentTuple.name != nil {
    print("Car number: " + fourthStudentTuple.carNumber!)
} else {
    print("Student doesn't have a car")
}

if fourthStudentTuple.controlScore != nil {
    print("Score:  \(fourthStudentTuple.controlScore!)")
} else  {
    print("Student missed exam")
}
*/
/*
if fifthStudentTuple.name != nil {
    print("Name: " + fifthStudentTuple.name!)
}
if fifthStudentTuple.carNumber != nil {
    print("Car number: " + fifthStudentTuple.carNumber!)
} else {
    print("Student does hace a car")
}

if fifthStudentTuple.controlScore != nil {
    print("Score:  \(fifthStudentTuple.controlScore!)")
} else {
    print("Student missed exam")
}

let text = """
OOO "Roga and Bivnes"
Seo: Ivanov
"""
print(text)

print("Hello World")
print("Hello") ; print("World")

let a = 10
var b = UInt()
b = UInt()

let a1: Int = 20
let b1: UInt = UInt()


if a == 10 {
} else if a == 20 {
    
} else {
    
}

for i in 0..<10 {}
for i in 0...10 {}

var iw = 0
while iw < 10 {
    iw += 1
}
var ir = 0
repeat {
    ir += 1
} while ir < 10
            
let arr = [1, 2, 3]
for element in arr {
}

do {
    try doSomething()
} catch {
    print(error)
}
*/

import UIKit

func foo() {
    func foo2() -> Int {
         return 2
    }
}

func say1(p: String) {
    print(p)
}
say1(p: "Hello, World")

func say2(phrase p: String) {
    print(p)
}
say2(phrase: "Hello, World")

func say3(_ p: String) {
    print(p)
}
say3("Hello, World")

func sum(Ihs: Int, rhs: Int) -> Int {
    return Ihs + rhs
}
sum(Ihs: 1, rhs: 1)

func sub(Ihs: Int = 0, rhs: Int = 0) -> Int {
    return Ihs - rhs
}

sub()
sub(Ihs: 1)
sub(rhs: 1)
sub(Ihs: 1 , rhs: 1)
*/
