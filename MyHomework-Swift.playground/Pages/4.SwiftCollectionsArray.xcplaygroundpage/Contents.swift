import UIKit

var greating = "Hello, world!"

// Array - массив

let intArray: [Int] = [0, 1, 3, 1, 2]
let fullIntsArray: Array<Int> = [4, 5, 6]

let anotherIntsArray: Array = [0, 1, 2]
let oneMoreIntsArray = [0, 1, 2]

let emptyArray = [Int]()
let enotherEmptyArray = Array<Int>()
let oneMoreEmptyArray: [Int] = []

let oneArray = Array(repeating: 1, count: 5)

var alphabetArray: [String] = ["a", "b", "c", "d"]
alphabetArray.count

let a = alphabetArray[0]
let c = alphabetArray[2]
if alphabetArray.count > 3 {
    let d = alphabetArray[3]
    print(d)
}

if let a = alphabetArray.first {
    print(a)
}
if let d = alphabetArray.last {
    print(d)
}

if let random = alphabetArray.randomElement() {
    print(random)
}

if alphabetArray.contains("e") {
    print("\(alphabetArray) containsw e")
}

alphabetArray.append("e")
alphabetArray.count
alphabetArray.append(contentsOf: ["f", "g"])
print(alphabetArray)
alphabetArray += ["h", "i"]
print(alphabetArray)
alphabetArray += ["j", "k"] + ["l", "m"]
print(alphabetArray)

alphabetArray[0] = "aa"
alphabetArray[5] = "ff"
print(alphabetArray)

alphabetArray.insert("zero", at: 0)
alphabetArray.insert("bb", at: 2)
print(alphabetArray)

alphabetArray.remove(at: 2)
print(alphabetArray)
alphabetArray.removeFirst()
print(alphabetArray)
alphabetArray.removeFirst(2)
print(alphabetArray)
alphabetArray.removeLast()
print(alphabetArray)
alphabetArray.removeLast(2)
print(alphabetArray)

alphabetArray.removeAll()
print(alphabetArray)

if alphabetArray.isEmpty {
    alphabetArray = ["a", "b", "c"]
}
print(alphabetArray)
alphabetArray.reverse()
print(alphabetArray)
var reversedAlphabetArray: [String] = alphabetArray.reversed()
print(reversedAlphabetArray)
alphabetArray = alphabetArray.reversed()

for value in alphabetArray {
    print(value)
}

for indexAndValue in alphabetArray.enumerated() {
    print("index \(indexAndValue.offset), value: \(indexAndValue.element)")
}

for (index, value) in alphabetArray.enumerated() {
    print("index \(index), value \(value)")
}
