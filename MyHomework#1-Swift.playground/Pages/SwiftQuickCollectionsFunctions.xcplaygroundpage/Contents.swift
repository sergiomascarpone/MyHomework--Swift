import UIKit
var greating = "Hello, playground"

let intArray: [Int] = [1, 2, 3, 4, 5]

//forEach
for item in intArray {
    print(item)
}
intArray.forEach { item in
    print("item from forEach: \(item)")
}

//filter
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

let moreThanTwo = intArray.filter { item in
    item > 2
}
print("More than two items: \(moreThanTwo)")


//map
var names: [String] = ["Ben", "Stive", "Alex", "Matiy"]
var uppercasedNames = names.map { name in
    name.uppercased()
}
print(uppercasedNames)
let namesLegent = names.map { name in
    name.count
}
print(namesLegent)

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
let singleArray = arrayOfArrays.flatMap { array in
array
}
print(singleArray)

//compactMap
let optionalsIntsArray: [Int?] = [0, nil, 3, 5, nil, 4, 8]
let nonoptionalInstArray = optionalsIntsArray.compactMap { item in
    item
}
print(nonoptionalInstArray)

let anotherEvenIntsArray: [Int] = intArray.compactMap { item in
    if item % 2 == 0 {
        return item
    } else {
        return nil
    }
}
print(anotherEvenIntsArray)

//sort
var sortedSingleArray = singleArray.sorted()
print(sortedSingleArray)
sortedSingleArray = singleArray.sorted(by: {item1, item2 in
    item1 > item2
})
print(sortedSingleArray)

let sortedNames = names.sorted { name1, name2 in
    name1 > name2
}
print(sortedNames)

var intDictionary: [Int: String] = [0: "Zero", 1: "One", 2: "Two"]
let sortedIntDictionary = intDictionary.sorted { keyvalue1, keyvalue2 in keyvalue1.value < keyvalue2.value
}
print(sortedIntDictionary)








