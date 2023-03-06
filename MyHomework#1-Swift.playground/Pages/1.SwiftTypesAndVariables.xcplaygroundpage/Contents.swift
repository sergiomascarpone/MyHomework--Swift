//: [Previous](@previous)

import UIKit

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

// UInt 0, 1, 2,...
var uinVar: UInt = 0
var minUInt8: UInt8 = UInt8.min
var maxUint8: UInt8 = UInt8.max

// Float, Double 3.14, 0.4, -15.12
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

// Bool - true, false
var carCanDrive = true
var carCanFly: Bool = false

// String
var hello: String = "Hello, "
var world: String = "World"
var helloWorld = hello + world
var stringValue: String = "The \(world) is amazing"
stringValue = "Pi is \(pi)"
stringValue = "\(pi) less than \(four)"
stringValue = "Can car fly? \(carCanFly)"

// Touples
var student = ("John", 21)
print("Student name is \(student.0) age is \(student.1)")
var anotherStudent: (String, Int) = ("Jack", 19)
var (studentName, studentAge) = ("Smith", 18)
print("Student name is \(studentName) age is \(studentAge)")

var thirdStudent = (name: "Matt", age: 33)
print("Student name is \(thirdStudent.name) age is \(thirdStudent.age)")
var oneMoreStudent: (name: String, age: Int) = ("Tom", 21)
print("Student name is \(oneMoreStudent.name) age is \(oneMoreStudent.age)")

// typealias
typealias StudentName = String
var lastStudent: (name: StudentName, age: Int) = ("Sammy", 32)
print("Student name is \(lastStudent.name) age is \(lastStudent.age)")

typealias Student = (name: StudentName, age: Int)
var studentFromTypealias: Student = ("Steve", 24)
print("Student name is \(studentFromTypealias.name) age is \(studentFromTypealias.age)")
