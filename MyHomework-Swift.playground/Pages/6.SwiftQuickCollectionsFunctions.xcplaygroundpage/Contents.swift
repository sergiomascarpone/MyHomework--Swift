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
print("Even numbers: \(evenNumbers)")

evenNumbers = intArray.filter { item in
    item % 2 == 0
}

print("Even nymbers: \(evenNumbers)")
evenNumbers = intArray.filter { $0 % 2 == 0 }
print("Even numbers: \(evenNumbers)")

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

// 6.Homework - Collection Types.
// Задание 1:
// 1. Создать массив с 12 элементами, каждый элемент - число дней в месяце.Вывести весь массив
// 2. Создать втрой массив с названиями месяцев и вывести на экран название + количество дней в месяце
// 3. Массив тюплов (название + количество дней). Так же вывести
// 4. Вывести в обратном порядке массив тюплов
// 5. Посчитать сколько дней от начала года до дня рождения используя массив
let days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let nameMonth = ["January", "February", "March", "April", "May", "June", "July", "August", "Semptember", "October", "November", "December"]

for item in days {
    print(item)
}

for i in 0..<nameMonth.count {
    print(nameMonth[i], "-", days[i])
}

var tupleArray = [(String, Int)]()

for i in 0..<nameMonth.count {
    tupleArray.append((nameMonth[i],days[i]))
}

for item in tupleArray {
    print(item)
}

for index in stride(from: tupleArray.count - 1, through: 0, by: -1) {
    print(tupleArray[index])
}

let myBirthday = (day: 1, mouth: "April")

var daysToBirthday = 0

for item in tupleArray {
    if item.0 == myBirthday.mouth {
        daysToBirthday += myBirthday.day - 1
        break
    } else {
        daysToBirthday += item.1
    }
}
print("Days from January to my Birthday",daysToBirthday)

// Задание 2:
//1. Создать массив опциональных integer  и заполнить его константами строковыми и в цикле посчиать и вывести сумму 3-мя способами: используя optional binding, forced unwrapping, оператор "??" (nil-coalescing operator)
var arrayOptInt = [Int?] ()

let firstConst = "125"
let secondConst = "3 years"
let thirsConst = String()
let fourthConst = "25"
let fifthConst = "150"

arrayOptInt.append(Int(firstConst))
arrayOptInt.append(Int(secondConst))
arrayOptInt.append(Int(thirsConst))
arrayOptInt.append(Int(fourthConst))
arrayOptInt.append(Int(fifthConst))

var optSum = 0

// optional binding
for item in arrayOptInt {
    if let i = item {
        optSum += i
    }
}

optSum = 0

// forced unwrapping

for item in arrayOptInt {
    if item != nil {
        optSum += item!
    }
}

optSum = 0

for item in arrayOptInt {
    optSum += item ?? 0
}

print("Sum of optional integer array:", optSum)

// Задание 3: 1. Создать строку - алфавит. Создать второй массив - пустой массив строк. Пройтись циклом по массиву символов, заполняя массив строк так, чтобы получился алфавит с конца.
let mas : [Character] = ["A", "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
let empty = [String]()
let masNo = String(mas)
for i in 0..<mas.count {
    let k = (mas.count - 1) - i
    
    print (mas[k])
}




