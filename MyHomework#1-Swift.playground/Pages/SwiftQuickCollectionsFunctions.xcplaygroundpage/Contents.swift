import UIKit
var greating = "Hello, playground"

let intArray: [Int] = [0, 1, 2, 3, 4, 5]

// forEach
for item in intArray {
    print(item)
}
intArray.forEach { item in
    print("item from forEach: \(item)")
}

// filter
var evenNumbers: [Int] = []
for item in intArray {
    if item % 2 == 0 {
        evenNumbers.append(item)
    }
}
print("Even nymbers: \(evenNumbers)")

evenNumbers = intArray.filter { item in
    item % 2 == 0
}

print("Even nymbers: \(evenNumbers)")
evenNumbers = intArray.filter { $0 % 2 == 0 }
print("Even nymbers: \(evenNumbers)")

var moreThanTwo = intArray.filter { item in
    item > 2
}
print("More than two items: \(moreThanTwo)")

moreThanTwo = intArray.filter { $0 > 2 }
print("More than two items: \(moreThanTwo)") //более краткий код по сравнению со строкой 31 - 34.


// map
var names: [String] = ["Ben", "Stive", "Alex", "Matiy"]
var uppercasedNames = names.map { name in
    name.uppercased()
}
print(uppercasedNames)
uppercasedNames = names.map { $0.uppercased() }
print(uppercasedNames) //более компактная запись, в отличии строк с 42 по 45.

var namesLegent = names.map { name in
    name.count
}
print(namesLegent)

namesLegent = names.map { $0.count }
print(namesLegent) //более компактный результат по сравнению со строкой 49 - 52.

let stringsArray = intArray.map { item in
    "\(item)"
}
print(stringsArray)

let doubleIntArray = intArray.map { item in
    item * item
}
print(doubleIntArray)

// flatMap
let arrayOfArrays = [intArray, moreThanTwo, doubleIntArray]
print(arrayOfArrays)
var singleArray = arrayOfArrays.flatMap { array in
array
}
print(singleArray)

singleArray = arrayOfArrays.flatMap({$0})
print(singleArray)// короткая запись в отличии со строками 70 - 73.

// compactMap
let optionalsIntsArray: [Int?] = [0, nil, 3, 5, nil, 4, 8]
var nonoptionalInstArray = optionalsIntsArray.compactMap { item in
    item
}
print(nonoptionalInstArray)

nonoptionalInstArray = optionalsIntsArray.compactMap({$0})
print(nonoptionalInstArray)//более короткая запись в отличии со строками 80 - 83.

var anotherEvenIntsArray: [Int] = intArray.compactMap { item in
    if item % 2 == 0 {
        return item
    } else {
        return nil
    }
}
print(anotherEvenIntsArray)

anotherEvenIntsArray = intArray.compactMap({($0 % 2 == 0) ? $0 : nil })
print(anotherEvenIntsArray)

// sort
var sortedSingleArray = singleArray.sorted()
print(sortedSingleArray)
sortedSingleArray = singleArray.sorted(by: {item1, item2 in
    item1 > item2
})
print(sortedSingleArray)

sortedSingleArray = singleArray.sorted(by: {$0 < $1})
print(sortedSingleArray)//короткая запись по сравнению со строкой 101 - 106.

let sortedNames = names.sorted { name1, name2 in
    name1 > name2
}
print(sortedNames)

var intDictionary: [Int: String] = [0: "Zero", 1: "One", 2: "Two"]
var sortedIntDictionary = intDictionary.sorted { keyvalue1, keyvalue2 in keyvalue1.value < keyvalue2.value
}
print(sortedIntDictionary)

sortedIntDictionary = intDictionary.sorted(by: {$0.key > $1.key})
print(sortedIntDictionary)//более короткая запись в сравнении со строками 117 - 119.

// reduce
var summ = intArray.reduce(0) { partialResult, item in
    partialResult + item
}
print("summ of \(intArray) = \(summ)")

summ = intArray.reduce(0) {$0 + $1}
print("summ of \(intArray) = \(summ)")//более короткая запись в сравнении со строкой 125 - 128.

let anotherDictionaryFromArray = intArray.reduce(into: [Int: String]()) { partialResult, item in
    partialResult[item] = "\(item)"
}
print(anotherDictionaryFromArray)






