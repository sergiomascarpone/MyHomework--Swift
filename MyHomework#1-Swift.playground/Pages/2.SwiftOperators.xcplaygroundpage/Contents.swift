
import Foundation

// Операторы +, -, /, * - арифметические операторы
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

// +=, -=, *=, /= - составные операторы
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

// % - оператор остатка
inVar = 5 % 4
4 + 1
inVar = 5 % 2
2 + 2 + 1
inVar = 5 % 3
3 + 2
inVar = -5 % 3
inVar = -5 % 4

// operator delenia po modulu
inVar = 5 % -3
