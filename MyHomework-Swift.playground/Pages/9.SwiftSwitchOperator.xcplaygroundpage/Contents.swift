import UIKit
// if -> else if -> else - только в такой последовательности!
/*
let age = 23
let name = "Dima"
 print("Привет незнакомец")
 
 if age < 20 {
 print("К сожалению ты слишком молод!")
 } else if age => 20 && age <= 25 {
 print("Отличный возраст!")
 } else if name == "Dima" {
 print("Отличное имя!")
 } else {
 print("К сожалению ты слишком стар!")
 }
//
switch age {
    case 21: //.....
    break
default:
    break
}
//
 
 // switch operator
for i in 0..<20 {
    
    if (i < 15) {
        continue
    }
    
    if i == 10 {
        break
    }
    print(i)
}
//
 
 */

var age = 20
var name = "Alex"

switch age {
    case 0...16: print("Baby")
    case 17...25: print("Boy")
    case 22...50: break
    
default: break
}

switch name {
case "Alex" where age < 21:
    print("Hi buddy!")
case "Alex" where age >= 20:
    print("I don`t know you")
    
default: break
}

// Switch in Tuples, optionalBiending, wellYouByinding
/*
var optional : Int? = 5

if let optional = optional {
    print("\(optional) != nil")
}
*/

let tuple = (name, age)

switch tuple {
    
case ("Alex", 60): print("Hi Alex! 60")
case ("Alex", 59): print("Hi Alex! 59")

case (_, let number) where number >= 65 && number <= 70:
    print("Hi old man")
    
case ("Alex", _): print("hi Alex")

default: break
}

// Совподение патернов
let point = (5, -5)

switch point {
    
case let (x, y) where x == y:
    print("x == y")
case let (x, y) where x == -y:
    print("x == -y")
case let (_, y) where y < 0:
    print("y < 0")
    
default: break
}

// Printable
let array: [CustomStringConvertible] = [5, 5.4, Float(5.4)]

switch array[2] {
case _ as Int: print("Int")
case _ as Float: print("Float")
case _ as Double: print("Double")
    
default: break
}

// 8.Homework - Оператор switch.
// Задание 1. Создать строку произвольного текста в 200 символов и посчитать количество гласных, количество согласных, символов, цифр с помощью switch внутри цикла
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

var text = """
The action of The Time Cycle - Consequences continues the story of the first book "After successfully eliminating an anomaly" protagonists Matthew Madex and Lee Gran Moss receive a message from an unknown source stating the imminent and total destruction of planet Earth Who sent this ominous message that spoke of genocide?
"""
text.count
var vowelCount = 0
var consonantCount = 0
var numberCount = 0
var simbolsCount = 0
for i in text.lowercased() {
    switch i {
        // y - is it a vowel?
    case "a", "e", "i", "o", "u", "y":
        vowelCount += 1
        case i where alphabet.contains(i):
        consonantCount += 1
    case i where i.isHexDigit:
        numberCount += 1
    default: simbolsCount += 1
    }
}
print("Text has \(vowelCount) vowels, \(consonantCount) consonants, \(numberCount) numbers, \(simbolsCount) other simbols")
// Задание 2. Создать switch, который принимает возврат человека и выводить описание жизни человека
let agePerson = 20

switch agePerson {
    case 0...1:
    print("Ребёнок появился на свет")
case 2...6:
    print("Ребёнок пошёл в садик")
case 7...17:
    print("Пошёл в школу")
case 18...21:
    print("Поступил в университет")
case 22...65:
    print("Устроился на работу")
default:
    print("Встретил свою старость")
}
// Задание 3. У студента есть имя, фамилия и отчество. Если имя начиается с "А" или с "О", то обращаться к студенту по имени, если отчество начинается буквы "Д"/"В", то обращаться к студенту по имени и отчеству, если фамилия начинается с буквы "Е"/"З", то обращаться только по фамилии, по дефолту обращаться по имени, отчеству и фамилии
var students: [(sName: String, sPatronymic: String, sLastName: String)] = [("Сергей","Олегович","Быков"),
("Олег","Дмитриевич","Шарохов"),
("Иван","Борисович","Мезин"),
("Алексей","Олегович","Шайков"),
("Алеся","Олеговна","Морозова")]

for i in students {
    switch i {
    case let(name, _,_) where name.hasPrefix("А") || name.hasPrefix("О"):
        print("Привет, \(name)")
    case let(name,patronymic,_) where patronymic.hasPrefix("Д") || patronymic.hasPrefix("В"):
    print("Здравствуй, \(name) \(patronymic)")
    case let(_,_,lastName) where lastName.hasPrefix("Е") || lastName.hasPrefix("З"):
        print("Господин/госпожа \(lastName)")
    default:
        print("Здравствуйте, \(i.sName) \(i.sPatronymic) \(i.sLastName)")
    }
}
// Задание 4. Поле морского боя 10х10, есть побитые корабли, есть целые корабли. Создать switch  с точкой, где требуется вернуть либо "мимо", либо "ранил", либо "убил"
let valueList: [Int: Character] = [0: "\u{1F30A}", 1: "\u{26F5}", 2: "\u{2693}"]

var seaBatle = Array(repeating: Array(repeating: 0, count: 10), count: 10)
// one deck
seaBatle[2][2] = 1
seaBatle[4][1] = 1
seaBatle[8][2] = 1
seaBatle[8][5] = 2

// two deck
seaBatle[5][4] = 1; seaBatle[6][4] = 1
seaBatle[6][7] = 1; seaBatle[6][8] = 1
seaBatle[8][7] = 2; seaBatle[9][7] = 2

// three deck
seaBatle[0][2] = 1; seaBatle[0][3] = 1; seaBatle[0][4] = 1
seaBatle[6][0] = 1; seaBatle[7][0] = 1; seaBatle[8][0] = 1;

// four deck
seaBatle[2][5] = 1; seaBatle[2][6] = 1; seaBatle[2][7] = 2; seaBatle[2][8] = 1

for i in 0..<seaBatle[0].count {
    for j in 0..<seaBatle[1].count {
        if let simbol = valueList[seaBatle[i][j]] {
            print(simbol, terminator: " ")
        }
    }
    print(String())
}
func checkShip (y: Int, x: Int) -> Bool {
    //Check up
    if y - 1 >= 0 {
        if seaBatle[y - 1][x] == 1 {
            return true
        }
    }
    //Check down
    if y + 1 < seaBatle[0].count {
        if seaBatle[y + 1][x] == 1 {
            return true
        }
    }
    //Check left
    if x - 1 >= 0 {
        if seaBatle[y][x - 1] == 1 {
            return true
        }
    }
    //Check right
    if x + y < seaBatle[1].count {
        if seaBatle[y][x + 1] == 1 {
            return true
        }
    }
    return false
}

var seaPoint = (2,2)
switch seaPoint {
case let (y,x) where seaBatle[y][x] == 1 && checkShip(y: y, x: x):
    seaBatle[y][x] = 2
    print("You hited!")
    case
    let (y,x) where seaBatle[y][x] == 1:
    seaBatle[y][x] = 2
    print("You killed!")
default:
    print("You missed!")
}

for i in 0..<seaBatle[0].count {
    for j in 0..<seaBatle[1].count {
        if let simbol = valueList[seaBatle[i][j]] {
            print(simbol, terminator:  " ")
        }
    }
    print(String())
}
