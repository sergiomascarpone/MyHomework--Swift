import UIKit

// Functions

// обьявление и вызовы функции
func greatings() {
    print("Hello, swift!")
}
greatings()

// принимать
func square(number: Int) {
    print(number * number)
}
square(number: 8)

// возвращать
func square1(number: Int) -> Int {
    return number * number
}

var result = square1(number: 8)
print(result)

func sum1() -> Int {
    5 + 5
}

// возвращать два или более значений из функции
func getUser() -> [String] {
    ["Ivan", "Ivanov"]
}
let user = getUser()
print(user[0])


func getUser1() -> [String: String] {
    ["firstName": "Ivan", "secondName": "Ivanov"]
}
    let user1 = getUser1()
print(user1["firstName"] as Any)


func getUser2() -> (first: String, second: String) {
    (first: "Ivan", second: "Ivanov")
}
let user2 = getUser2()
print(user2.first)

// имена параметров
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Ian!")

// пропуск имен параметров
func great(_ person: String) {
    print("Hello, \(person)!")
}
great("Ian")

// параметры по умолчанию
print("Hello, world!", terminator: " ")
print("Hello, world!", terminator: " ")
print("Hello, world!", terminator: " ")


func greet1(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
} else {
        print("Oh no, it`s \(person) again...")
    }
}
greet1("Maria")
//greet1("Maria", nicely: false)

// выриативные функции и вариативные параметры
print("Hello", "Hello2", "Hello3") // либо Int...


func square2(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square2(numbers: 1, 2, 3, 4, 5)

// сквозные параметры
func doubleIt(number: inout Int) {
    number *= 2
}
var myNumber = 10
doubleIt(number: &myNumber)



