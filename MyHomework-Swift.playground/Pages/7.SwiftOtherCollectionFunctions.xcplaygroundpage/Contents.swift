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

// 7.Homework - Dictionary.
// Задание 1. Создать dictionary как журнал студентов, где ключ это имя и фамилия, а значение оценка. В журнале сразу есть отметки, затем нужно повысить оценку нескольким существующим студентам, затем некоторые студенты были отчислены. Посчитать общий бал группы и средний бал группы.
var dictExam = ["Sergio Mascarpone" : 2,
                "Alexey Varlamov" : 3,
                "Egor Takoy" : 4,
                "Andrey Pavlov" : 3]

dictExam.updateValue(5, forKey: "Sergio Mascarpone")
dictExam["Alexey Varlamov"] = 4

dictExam.removeValue(forKey: "Andrey Pavlov")
dictExam["Egor Takoy"] = nil

var sum = 0
var average : Double = 0

dictExam.values
for value in dictExam.values {
    sum += value
}

average = Double(sum)/Double(dictExam.count)

print("Common sum of point: \(sum),\nGrade point average: \(average)")

// Задание 2. Создать dictionary дней в месяцах, где месяц это ключ, а количество дней - значение. Вывести dictionary на экран с помощью цикла и тюпла, затем вывести на экран с помощью цикла, проходясь по ключам
let days = [31, 28, 31, 30, 31, 30, 31, 30, 31, 31, 30, 31]
let nameMonth = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Okt", "Nov", "Des"]
var dictMonth : [String:Int] = [:]

for i in 0..<nameMonth.count {
    dictMonth[nameMonth[i]] = days[i]
}

for (key,value) in dictMonth {
    print(key,"-",value)
}
for key in dictMonth.keys {
    if let value = dictMonth[key] {
        print("\(key) - \(value)")
    }
}

// Задание 3. Созать dictionary доска шахмат, где ключ это адрес ячейки (А1, А2 ...), а значение - это булевое знаечние ( true - белый цвет ячейки, false - черный цвет ячейки). Для создания dictionary нужно использовать массив букв от "А" до "H". Для каждой буквы должен быть отдельный цикл. Нужно использовать цикл в цикле для того, чтобы заполнить значения dictionary
var pointDict : [String:Bool] = [:]

let letters = "ABCDEFGH"
let seriesOfLetters = Array(letters)

for (item, value) in
        seriesOfLetters.enumerated() {
    //print(item+1,value)
    for (i,_) in seriesOfLetters.enumerated() {
        //print(i,v)
        let str = String(value) + String(i+1)
        if (i+item)%2 == 0 {
            pointDict[str] = false
        } else {
            pointDict[str] = true
        }
    }
}
print(pointDict)
