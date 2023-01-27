import UIKit

var greeting = "Hello, playground"

//for in - Работа с циклами. Операторы break, continue
let names: [String] = ["Adam", "Chris", "John", "Sam"]
for name in names {
    print("Welcome, \(name)")
}

let namesSet: [String] = ["Anna", "Kate", "Sonya", "Natalia"]
for name in namesSet {
    print("Hello, \(name)")
}

let namesDictionary: [Int: String] = [0: "Jack", 1: "Tom", 2: "Steve", 3: "Yan"]
for keyvalue in namesDictionary {
    print("\(keyvalue) \(keyvalue.value)")
}

let string = "Welcome"
for char in string {
     print(char)
}

let fromOneToTen = 1...10
for i in fromOneToTen {
    print(i)
}
for i in 1...10 {
    print("Ring ring \(i)")
}

let fromOneToNine = 1..<10
for i in fromOneToNine {
    print(i)
}

let namesRange = 0..<names.count // 0..<4( 0, 1, 2, 3
for i in namesRange {
    print("name at index \(i) is \(names[i])")
}
var index = 2
for i in 0..<namesSet.count {
    print("name at index \(i) from set is \(namesSet[i])")
}

for i in fromOneToTen.reversed() {
    print(i)
}

let keys = Array(namesDictionary.keys)
let values = Array(namesDictionary.values)
for i in 0..<namesDictionary.count {
    let key = keys[i]
    let value = values[i]
    print("name at \(key) is \(value)")
}

// continue
for name in names {
    if name != "John" {
        continue
    }
    print(name)
}

for i in 0..<names.count {
    // 0, 2, 4 ..
    if i % 2 != 0 {
        print(i)
        continue
    }
    print("\(i)" + names[i])
}

//break - прерывает текущую эттерацию и сам цикл совсем
for name in names {
    if name == "John" {
        print("Search completed \(name)")
        break
    }
    print("\(name) is not John")
}

//while
var i = 0
while i < names.count {
let name = names[i]
    print("Search completed \(name)")
    i += 1
}

i = 0
while i < names.count {
    let name = names[i]
    if name == "John" {
        break
    }
    print("\(name) is not John")
    i += 1
}

while i < names.count {
    let name = names[i]
    i += 1
    if name == "John" {
        continue
    }
    print(name)
}

i = 0
while true {
    let name = names[i]
    if name == "John" {
        print("Search completed \(name)")
        break
    }
    print("\(name) is not John")
    i += 1
}

//repeat while
i = 0
repeat {
    let name = names[i]
    print(name)
    i += 1
} while i < names.count

i = 0
var name: String
repeat {
    name = names[i]
    print(name)
    i += 1
} while i < names.count

i = 0
repeat {
    name = names[i]
    if name == "John" {
       break
    }
    i += 1
} while i < names.count

i = 0
repeat {
    name = names[i]
    i += 1
    if name == "John" {
        print("It`s John")
        continue
    }
    print("It`s not John")
} while i < names.count


