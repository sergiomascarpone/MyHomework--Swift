
import Foundation
/*
// оператор заменяющий nil ??
     let defaultName = "Steve"
     var name: String? = "Ivan"
     let myName = ?? defaultName
*/

// <=, >=, !=, ==, *= Операторы сравнения
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
/*
 
if true {
    print("It's true")
}
if false {
    print("It's false")
}
*/

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

// else if
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

// Логические операторы &&, ||, !
// && - true
if (time > 10) && (time < 18) {
    print("It's day now")
}

// || - ili
if (time <= 10) || (time >= 18) {
    print("It's not day now")
}

// ! - true меняет на обратное значение
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

// Операторы диапазона ..., ..<
1...10
1..<10
