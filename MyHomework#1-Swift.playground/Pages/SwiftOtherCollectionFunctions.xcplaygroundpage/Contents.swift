import UIKit

var intArray: [Int] = [8, 12, 3, 13, 23, 4, 7, 9]
// first, last/
intArray.first
intArray.last

intArray.first { item in
    item % 2 == 0
}

intArray.last { item in
    item % 2 == 0
}

intArray.firstIndex { item in
    item % 2 == 0
}

intArray.lastIndex { item in
    item % 2 == 0
}

intArray.firstIndex(of: 9)
intArray.lastIndex(of: 9)

intArray.firstIndex(of: 0)

if let firstEllement = intArray.first {
    print("First item is \(firstEllement)")
}

if let firstIndexOf9 = intArray.firstIndex(of: 9) {
    print("First index of 9 is \(firstIndexOf9)")
}

intArray.randomElement()

intArray.prefix(3)
intArray.suffix(3)
intArray.prefix(100)

intArray.prefix(through: 3)
intArray.suffix(from: 3)

intArray.dropFirst()
intArray.dropFirst(3)

intArray.dropLast()
intArray.dropLast(3)

var shuffledIntArray = intArray.shuffled()
shuffledIntArray.shuffle()

intArray.reverse()
shuffledIntArray = intArray.reversed()

var stringArray: [String] = ["Hello", "world", "!"]
stringArray.joined()
var string = stringArray.joined(separator: " ")
stringArray.joined(separator: "+")

string.split(separator: " ")

stringArray.split(separator: "world")

intArray.min()
intArray.max()

stringArray = ["A", "AB", "C", "B", "BA", "0", "7"]
stringArray.min()
stringArray.max()
