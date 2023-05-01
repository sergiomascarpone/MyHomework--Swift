/*
 Опциональные типы, 4-ый урок и домашка к нему:
 1. Сделать 6 констант строковых, где-то будут строки только с цифрами, где-то строки цифры с буквами. Нужно найти сумму всех строк, проверку на nil делать разными способами
 2. Мы получаем тюпл с кодом ответа, сообщением и сообщением об ошибке (опциональные строки). Если код  диапазоне 200 - 300, то показываем сообщение, если нет, то сообщение об ошибке.
 Создать такой же тюпл без кода ошибки, где один из параметров nil и показывать нужный
 3. Тюпл студента, где имя, номер машины и оценка за предыдущую контрольную (0-5). 5 тюплов. При создании нет данных, затем заполняются другие параметры. Вывести на экран инфу о студентах.
 */

//1

let oneString = "123"
let twoString = "321"
let threeString = "Buble"
let fourString = "Buble gum"
let fiveString = "-3"
let sixString = "10.7"

var sum = 0

if var oneString = Int(oneString) {
    sum += oneString
}

if var twoString = Int(twoString) {
    sum += twoString
}

if var threeString = Int(threeString) {
    sum += threeString
}

if Int(fourString) != nil {
    sum += Int(fourString)!
}

if let fiveString = Int(fiveString), let sixString = Double(sixString) {
    sum += fiveString + Int(sixString)
}

print(Int(fiveString))
print(Int(sixString))
print(sum)

//2

var cloneTuple: (code: Int, message: String?, errorMessage: String?) = (200, "It`s Okay!", "In isn`t Okay!!!")

//cloneTuple.code = 301

if cloneTuple.code >= 200 && cloneTuple.code <= 300 {
    print(cloneTuple.message!)
} else {
    print(cloneTuple.errorMessage!)
}

var cloneTupleClone: (message: String?, errorMessage: String?) = (nil, "It isn`t okay at all!!!")

//cloneTupleClone.errorMessage = nil

if let message = cloneTupleClone.message {
    print(message)
} else if let errorMessage = cloneTupleClone.errorMessage {
    print(errorMessage)
} else {
    print("A_A_A_A_A_A!!")
}





















