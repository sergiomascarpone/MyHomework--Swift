
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

// 4.Homework - Loops. Basic operators.
// Задание 1:
let names: [String] = ["Pavel", "Ludmilaa", "Andrey", "Liza"]
for name in names {
    print("Welcome, \(name)")
}

let namesSet: [String] = ["Oliya", "Steave", "Bill", "Mark"]
for name in namesSet {
    print("Hello, \(name)")
}

let namesDictionary: [Int: String] = [0: "Poll", 1: "Matyu", 2: "Oivia", 3: "Blade"]
for keyvalue in namesDictionary {
    print("\(keyvalue.key) \(keyvalue.value)")
}
for (key, value) in namesDictionary {
    print("\(key) \(value)")
}

let string = "Serjo"
for chair in string {
    print(chair)
}

// Задание 1: сколько секунд от начала года до моего дня рождения.
let hourseInDay = 24
let minuteInHourse = 60
let secondInMinute = 60

var daysBeforeBirthday = 365 - 31 - 30 - 31 - 30 - 31 - 31 - 30 - 31

var secondToMyBirnhday = daysBeforeBirthday * hourseInDay * minuteInHourse * secondInMinute

// Задание 2: My Birthday в каком квартале родился.
let dayQuarter1 = 31 + 28 + 31
let dayQuarter2 = 30 + 31 + 30
let dayQuarter3 = 31 + 31 + 30
let dayQuarter4 = 31 + 30 + 31

if daysBeforeBirthday <= dayQuarter1 {
    print("I was born in first quarter!")
} else if daysBeforeBirthday <= dayQuarter1 + dayQuarter2 {
    print("I was born in second quarter!")
} else if daysBeforeBirthday <= dayQuarter1 + dayQuarter2 + dayQuarter3 {
    print("I was born in third qarter!")
} else {
    print("I was born in fourth qarter!")
}

// Задание 3: Chess указать какое поле чёрное, а какое поле черное.
var point = (x: 1, y: 8)

if (point.x + point.y) % 2 == 0 {
    print("It`s a black point")
} else {
    print("It`s a white point")
}
