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

// Set - множества
var alphabetSet: Set<String> = ["a", "b", "c", "a", "c"]
var anotherAlphabetSet: Set = ["a", "b", "c"]

alphabetSet.insert("d")
print(alphabetSet)

alphabetSet.first
alphabetSet.randomElement()

alphabetSet.remove("a")
alphabetSet.remove("a")

if alphabetSet.contains("b") {
    print("\(alphabetSet) contains b")
}

for value in alphabetSet {
    print(value)
}
for value in alphabetSet.sorted() {
    print(value)
}

let setA: Set = [1, 2, 3, 4, 5]
let setB: Set = [4, 5, 6, 7, 8]

var setAB = setA.union(setB).sorted() //обьединение множест
setAB = setA.intersection(setB).sorted() //пересечение множеств
setAB = setA.subtracting(setB).sorted() //вычитать одни множества из других
setAB = setB.subtracting(setA).sorted() ///вычитать одни множества из других
setAB = setA.symmetricDifference(setB).sorted() //смотреть симетричную разность множеств

let setC: Set = [1, 2, 3]
let setD: Set = [1, 2, 3]

if setC == setD {
    print("C equat D")
}
if setC.isSubset(of: setD) {      //проверка на подмножество
    print("C is subset of D")
}
if setA.isSuperset(of: setD) {
    print("A is superset of D")
}
if setC.isSuperset(of: setD) {        //проверка на надмножество
    print("C is superset of D")
}
if setA.isStrictSuperset(of: setC) {
    print("C is strict superset of D")
}
if setC.isStrictSubset(of: setA) {
    print("C is strict subset of A")
}

let arrayFromSet = Array(setC)
let setFromArray = Set(arrayFromSet)

// DICTIONARY - словари, неупорядоченая коллекция
var stringDictionary: [String: Int] = ["three": 3, "four": 4]
var anotherStringDictionary: Dictionary<String, Int> = [:]
var oneMoreStringDictionary = Dictionary<String, Int>()

stringDictionary["one"] = 1
stringDictionary["two"] = 2
print(stringDictionary)
stringDictionary["one"] = 101
print(stringDictionary)
stringDictionary["one"] = 1
print(stringDictionary)

if let one = stringDictionary.updateValue(1, forKey: "one") {
    print("one changed from \(one) to 1")
}

let one = stringDictionary["one"]
let five = stringDictionary["five"]
if let three = stringDictionary["three"] {
    print(three)
}

stringDictionary.removeValue(forKey: "one")
print(stringDictionary)
stringDictionary.removeAll()

stringDictionary = ["one": 1, "two": 2, "three": 3]
for keyValue in stringDictionary {
    print("key: \(keyValue.key), value: \(keyValue.value)")
}

for key in stringDictionary.keys {
    print("key: \(key), value: \(stringDictionary[key]!)")
}

for value in stringDictionary.values {
    print("value: \(value)")
}

let keys = [String](stringDictionary.keys)
let anotherKeys = Array<String>(stringDictionary.keys)

let values  = [Int](stringDictionary.values)

