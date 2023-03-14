import UIKit

// 1.Homework
/*
let Name = "Sergio"
let FirstName = "Bikov"
let LastName = "Olegovich"
print(FirstName, Name, LastName)

let Birdthdey = 1993
let Growth = "1.89sm"
let Weight = "88kg"
print(Birdthdey, Growth, Weight)


let a = "Max"
let b = "Fadeev"
let c = "Astaxovich"
print(b, a, c)

let aa = "1993"
let bb = "189sm"
let cc = "99kg"
print(aa, bb, cc)

let Onne = "Danik"
let Twwo = "Mokri"
let Thrre = "Vladimirovich"
print(Twwo, Onne, Thrre)

let One1 = "1889"
let Two2 = "169sm"
let Thre3 = "104kg"
print(One1, Two2, Thre3)


// 2.Homework - Работа с базовыми типами

Int8.min
Int8.max
Int16.min
Int16.max
Int32.min
Int32.max
UInt64.min
UInt64.max
Int.min
Int.max
UInt.max
UInt.min

let One = 199 
let Two = 1.444448988
let Thre: Float = 12.12342

let Four = One + Int(Two) + Int(Three)
print(Four)

let five = Double(One) + Two + Double(Thre)
print(five)

let six = Float(One) + Float(Two) + Thre
print(six)

if Double(Four) < five {
    print("Double точнее")
} else {
    print("No")
}


let Uno = 100
let Duo = 1.8899477
let Trea: Float = 12.12546

let Cuatro = Uno + Int(Duo) + Int(Trea)
print(Cuatro)
let Cinqve = Double(Uno) + Duo + Double(Trea)
print(Cinqve)
let Sette = Float(Uno) + Float(Duo) + Trea
print(Sette)

if Double(Trea) < Cinqve {
    print("Double right")
} else {
    print("No")
}


let Onee = 143
let Twoo = 1.55998
let Three: Float = 12.1277

let Fourr = Onee + Int(Twoo) + Int(Three)
print(Fourr)

let Fivee = Double(Onee) + Twoo + Double(Three)
print(Fivee)

let sixx = Float(Onee) + Float(Twoo) + Three
print(sixx)

if Double(Fourr) < Fivee {
    print("Double right")
} else {
    print("no")
}

// 3.Homework - Tuples

// Задание 1:
 
let myTuple = ("January", "February", "March", "April", "May" )
myTuple.0
myTuple.1
myTuple.2
myTuple.3
myTuple.4

// Задание 2:
 
let (Январь, Февраль, Март, Апрель, Май) = ("Январь", "Февраль", "Март", "Апрель", "Май")
Январь
Февраль
Март
Апрель
Май

let myBoxes = ("Box1", "Box2", "Box3", "Box4")
myBoxes.0
myBoxes.1
myBoxes.2
myBoxes.3
 

// Задание 3:
 
var myTuple = (maxPushUp:12, maxPullDown:13, maxSquats: 33)

print(myTuple)
print("My max Push Up: \(myTuple.maxPushUp)")
print("My max pull Down: \(myTuple.maxPullDown)")
print("My max Squarts: \(myTuple.maxSquats)")

var myBoostFrienfTuple = (maxPushUp:120, maxPullDown:13, maxSquats: 43)

let justTuple = (maxPushUp: myTuple.maxPushUp, maxPullDown: myTuple.maxPullDown, maxSquats: myTuple.maxSquats)
myTuple.maxPushUp = myBoostFrienfTuple.maxPushUp
myTuple.maxPullDown = myBoostFrienfTuple.maxPullDown
myTuple.maxSquats = myBoostFrienfTuple.maxSquats
myBoostFrienfTuple.maxPushUp = myTuple.maxPushUp
myBoostFrienfTuple.maxPullDown = myTuple.maxPullDown
myBoostFrienfTuple.maxSquats = myTuple.maxSquats
print("My new max: \(myTuple)")



var myPhysicalTraining = (30, 10, 50, 70, 90)

var (pushUps, pullUps, sitUps, chestPress, legPress) = myPhysicalTraining


//print(myPhysicalTraining)


print("My maximum number of push-ups: \(pushUps)")
print("My maximum number of pull-ups: \(myPhysicalTraining.1)")
print("My maximum number of sit-ups: \(sitUps)")
print("My maximum number of chest press: \(chestPress)")
print("My maximum number of leg press: \(myPhysicalTraining.4)")

 
 
var myPhysTrain1 = (pushUps1:30, pullUps1:10, sitUps1:50, chestPress1:70, legPress1:90)

print(myPhysTrain1.pushUps1)
print(myPhysTrain1.pullUps1)
print(myPhysTrain1.sitUps1)
print(myPhysTrain1.chestPress1)
print(myPhysTrain1.legPress1)


var my_Son_Daniil_PhysicalTraining = (40, 13, 60, 85, 100)

var (Daniil_PushUps, Daniil_PullUps, Daniil_SitUps, Daniil_ChestPress, Daniil_LegPress) = my_Son_Daniil_PhysicalTraining


//print(my_Son_Daniil_PhysicalTraining)


print("Daniil maximum of push-ups: \(my_Son_Daniil_PhysicalTraining.0)")
print("Daniil maximum of pull-ups: \(Daniil_PullUps)")
print("Daniil maximum of sit-ups: \(my_Son_Daniil_PhysicalTraining.2)")
print("Daniil maximum of chest press: \(Daniil_ChestPress)")
print("Daniil maximum of leg press: \(my_Son_Daniil_PhysicalTraining.4)")

 
 
myPhysicalTraining.0 = my_Son_Daniil_PhysicalTraining.2
myPhysicalTraining.1 = my_Son_Daniil_PhysicalTraining.0
myPhysicalTraining.3 = my_Son_Daniil_PhysicalTraining.4
print(myPhysicalTraining )


if myPhysicalTraining.0 > my_Son_Daniil_PhysicalTraining.0 {
  print("I do \(myPhysicalTraining.0 - my_Son_Daniil_PhysicalTraining.0) push-ups more than Daniil!")
} else if my_Son_Daniil_PhysicalTraining.0 > myPhysicalTraining.0 {
  print("Daniil does \(my_Son_Daniil_PhysicalTraining.0 - myPhysicalTraining.0) push-ups more than me!")
}

if myPhysicalTraining.1 > my_Son_Daniil_PhysicalTraining.1 {
  print("I do \(myPhysicalTraining.1 - my_Son_Daniil_PhysicalTraining.1) pull-ups more than Daniil!")
} else if my_Son_Daniil_PhysicalTraining.1 > myPhysicalTraining.1 {
  print("Daniil does \(my_Son_Daniil_PhysicalTraining.1 - myPhysicalTraining.1) pull-ups more than me!")
}

if myPhysicalTraining.2 > my_Son_Daniil_PhysicalTraining.2 {
  print("I do \(myPhysicalTraining.2 - my_Son_Daniil_PhysicalTraining.2) sit-ups more than Daniil!")
} else if my_Son_Daniil_PhysicalTraining.2 > myPhysicalTraining.2 {
  print("Daniil does \(my_Son_Daniil_PhysicalTraining.2 - myPhysicalTraining.2) sit-ups more than me!")
}

if myPhysicalTraining.3 > my_Son_Daniil_PhysicalTraining.3 {
  print("I do chest press \(myPhysicalTraining.3 - my_Son_Daniil_PhysicalTraining.3) more than Daniil!")
} else if my_Son_Daniil_PhysicalTraining.3 > myPhysicalTraining.3 {
  print("Daniil does chest press \(my_Son_Daniil_PhysicalTraining.3 - myPhysicalTraining.3) kg more than me!")
}

if myPhysicalTraining.4 > my_Son_Daniil_PhysicalTraining.4 {
  print("I do leg press \(myPhysicalTraining.4 - my_Son_Daniil_PhysicalTraining.4) kg more than Daniil!")
} else if my_Son_Daniil_PhysicalTraining.4 > myPhysicalTraining.4 {
  print("Daniil does leg press \(my_Son_Daniil_PhysicalTraining.4 - myPhysicalTraining.4) kg more than me!")
}
 

// 4.Homework - Optionals

// Задание 1:

let a = "123"
let b = "321"
let c = "favorite"
let d = "not favorite"
let e = "-4"
let f = "10.9"

var sum = 0

if var firstSum = Int(a) {
    sum += firstSum
}

if var secondSum = Int (b) {
    sum += secondSum
}

if var thirdSum = Int (c) {
    sum += thirdSum
}

if Int(d) != nil {
    sum += Int(d)!
}

if let fifthSum = Int(e), let sixthSum = Double(f) {
    sum += fifthSum + Int(sixthSum)
}

print(Int(e))
print(Int(f))
print(sum)


// Задание 2:

let server: (statusCode: Int, message: String?, errorMessage: String?) = (100, nil, "error")
if  server.statusCode >= 200 && server.statusCode <= 300 {
    if let message = server.message {
        print(message)
    } else {
        print("Таких вводных быть не должно ))")
    }
} else {
    if let message = server.errorMessage {
        print(message)
    } else {
        print("Таких вводных быть не должно")
    }
}

let server: (statusCode: Int, message: String?, errorMessage: String?) = (100, nil, "error")
if server.statusCode >= 100 && server.statusCode <= 200 {
    if let message = server.message {
        print(message)
    } else {
        print("this Data not")
    }
} else {
    if let message = server.errorMessage {
        print(message)
    } else {
        print("Not Data")
    }
}


// Задание 3:

var responseTupleClone: (message: String?, errorMessage: String?) = ( nil, "It isn't okay at all!!!")

//responseTupleClone.errorMessage = nil

if let message = responseTupleClone.message {
    print(message)
} else if let errorMessage = responseTupleClone.errorMessage {
    print(errorMessage)
} else {
    print("A-A-A-A!!")
}

var firstStudentTuple: (name: String?, carNumber: String?, controlScore: Int?)
var secondStudentTuple: (name: String?, carNumber: String?, controlScore: Int?)
var thirdStudentTuple: (name: String?, carNumber: String?, controlScore: Int?)
var fourthStudentTuple: (name: String?, carNumber: String?, controlScore: Int?)
var fifthStudentTuple: (name: String?, carNumber: String?, controlScore: Int?)

firstStudentTuple.name = "Vanya"
secondStudentTuple.name = "Sabina"
thirdStudentTuple.name = "Gosha"
fourthStudentTuple.name = "Masha"
fifthStudentTuple.name = "Oleg"

firstStudentTuple.carNumber = "UP14AC1417"
thirdStudentTuple.carNumber = "AC41UP1714"
fifthStudentTuple.carNumber = "PU41CA4171"

firstStudentTuple.controlScore = 5
secondStudentTuple.controlScore = 5
fifthStudentTuple.controlScore = 4

print ("5 people entered the driving school.")

if firstStudentTuple.name != nil {
    print("Name: " + firstStudentTuple.name!)
}

if firstStudentTuple.carNumber != nil {
    print("Car number: " + firstStudentTuple.carNumber!)
} else {
    print("Student doesn't have a car")
}

if firstStudentTuple.controlScore != nil {
    print("Score: \(firstStudentTuple.controlScore!)")
} else {
    print("Student missed exam")
}



// 4.Homework - Loops. Basic operators.


// Задание 1:
let names: [String] = ["Pavel", "Ludmilaa", "Andrey", "Liza"]
for name in names {
    print("Welcome, \(name)")
}

let namesSet: [String] = ["Oliya", "Steave", "Bill", "Mark"]
for name in namesSet {
    print("Hello, \(name)")
}

let namesDictionary: [Int: String] = [0: "Poll", 1: "Matyu", 2: "Oivia", 3: "Blade"]
for keyvalue in namesDictionary {
    print("\(keyvalue.key) \(keyvalue.value)")
}
for (key, value) in namesDictionary {
    print("\(key) \(value)")
}

let string = "Serjo"
for chair in string {
    print(chair)
}

// Задание 1: сколько секунд от начала года до моего дня рождения.
let hourseInDay = 24
let minuteInHourse = 60
let secondInMinute = 60

var daysBeforeBirthday = 365 - 31 - 30 - 31 - 30 - 31 - 31 - 30 - 31

var secondToMyBirnhday = daysBeforeBirthday * hourseInDay * minuteInHourse * secondInMinute

// Задание 2: My Birthday в каком квартале родился.
let dayQuarter1 = 31 + 28 + 31
let dayQuarter2 = 30 + 31 + 30
let dayQuarter3 = 31 + 31 + 30
let dayQuarter4 = 31 + 30 + 31

if daysBeforeBirthday <= dayQuarter1 {
    print("I was born in first quarter!")
} else if daysBeforeBirthday <= dayQuarter1 + dayQuarter2 {
    print("I was born in second quarter!")
} else if daysBeforeBirthday <= dayQuarter1 + dayQuarter2 + dayQuarter3 {
    print("I was born in third qarter!")
} else {
    print("I was born in fourth qarter!")
}

// Задание 3: Chess указать какое поле чёрное, а какое поле черное.
var point = (x: 1, y: 8)

if (point.x + point.y) % 2 == 0 {
    print("It`s a black point")
} else {
    print("It`s a white point")
}


// 5.Homework - Strings.

// Задание 1: Нужно создать 5 переменных строковых, где какие-то переменные будут цифрами, а какие-то нет. И найти сумму этих переменных различая nil оператором "??". Так же вывести строку, где видно процесс сложения двумя способами: через интерполяцию строк и конкатанацию
var firstStr = "Anton"
var twoStr = "30"
var threeStr = "New-York"
var fourStr = "66"
var fifthStr = "Dallas"

var sum = Int(firstStr) ?? 0
sum = Int(twoStr) ?? 0
sum = Int(threeStr) ?? 0
sum = Int(fourStr) ?? 0
sum = Int(fifthStr) ?? 0

print("\(Int(firstStr)) + \(Int(twoStr)!) + \(Int(threeStr)) + \(Int(fourStr)!) + \(Int(fifthStr)) = \(sum)")

let concatStr = "\(Int(firstStr))" + " + \(Int(twoStr)!)" + " + \(Int(threeStr))" + " + \(Int(fourStr)!)" + " + \(Int(fifthStr))" + " + = \(sum)"
print(concatStr)

// Задание 2: Выбрать 5 классных симоволов, вывести ее и посчитать количество символов
let omgSimbol = "\u{1F62E}"
let worriedFaceSimbol = "\u{1F61F}"
let confusedFaceSimbol = "\u{1F615}"
let nerdFaceSimbol = "\u{1F913}"
let partyingFaceSimbol = "\u{1F973}"

let amazingSimbols = omgSimbol + worriedFaceSimbol + confusedFaceSimbol + nerdFaceSimbol + partyingFaceSimbol
amazingSimbols.count

// Задание 3: Создать строку из английского алфавита (маленькие буквы). Используя цикл найти индекс буквы в алфавите
let alphabet = "abcdefghijklmnopqrstuvwxvyz"
var findChar: Character = "s"
var index = 1
for i in alphabet {
    if i == findChar {
        print(i, "is", index)
    } else {
        index += 1
    }
}

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
 */
 
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

// 9.Homework - Функции.
// 1. Создать пару функций (3-4), которые возвращают строку с каким-то символом, вывести все это одним принтом.
func party() -> Character {
    "\u{1F973}"
}
func ghost() -> Character {
    "\u{1F47B}"
}
func purpleHeart() -> Character {
    "\u{1F49C}"
}
print(party(),ghost(),purpleHeart())
// 2. Создать функцию, которая принимает строку и номер (клетку на шахматной доске), а возвращает ответ какого клетка цвета. Распечатать выходной параметр, через переменную
func checkChessPoint(letter: Character, number: Int) -> String {
    let letters = "ABCDEFGH"
    
    //find index
    if let i = letters.lastIndex(of: letter) {
        var index: Int = letters.distance(from: letters.startIndex, to: i)
        return(index + number)%2 == 0 ? "White":"Black"
    }
    return String()
}

var colorPoint = checkChessPoint(letter: "F", number: 5)
print(colorPoint)
// 3. Создать массив, создать функцию, которая принимает массив и возвращает его в обратном порядке.
var arrayInt = [1, 3, 5, 7, 7, 8, 9, 10]

func inverseArray(originalArray: [Int]) -> [Int] {
    var modArray : [Int] = []
    
    for i in stride(from: originalArray.count - 1, through: 0, by:  -1) {
        modArray.append(originalArray[i])
    }
    return modArray
}
print(inverseArray(originalArray: arrayInt))
// 4. Функция принимает массив, и меняет сам массив внутри функции ( в обратном порядке).
func reallyInverseArray(originalArray: inout [Int] ) -> () {
    originalArray = originalArray.reversed()
}
reallyInverseArray(originalArray: &arrayInt)
print(arrayInt)
// 5.Функция принимает строку, а возвращает строку где, строка без знаков препинания, все гласные - заглавные, все согласные - маленькие, цифры изменены на слова
func modifyString(originalString: String) -> (String) {
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var numbersDictionary = [0: "zero", 1: "one", 2: "two", 3: "three", 4: "four", 5: "fife", 6: "six", 7: "seven", 8: "eight", 9: "nine"]
    var newString = String()
    for i in originalString.lowercased() {
        switch i {
            // y - is it a vowel?
        case "a", "e", "i", "o", "u":
            newString.append(i.uppercased())
            // other letters in alphabet are consonant
        case i where alphabet.contains(i) : newString.append(i)
        case i where Int(String(i)) != nil:
            if let simbolNum = numbersDictionary[Int(String(i))!] {
                newString.append(simbolNum)
            }
        default: break
        }
    }
    return newString
}
var a = modifyString(originalString: "text with big vowels and small consonants, numbers like 1,2,3,4...9 are words without any simbols")
print(a)

// 10.Homework - Closures.
// 1. Написать функцию, которая принимает один closure, а сам closure ничего не принимает и ничего не возвращает, в тело функции добавить цикл for от 1 до 10, с выводом этих значений, после выхода из цикла вызвать closure. В самом closure вывести что-нибудь на экран.
func someFunction(closure: () -> Void) -> () {
    for i in 1...10 {
        print("Current value is \(i)")
    }
    closure()
}
someFunction {
    print ("I called closure function")
}
// 2. Создать массив integer и отсортировать массив по возрастанию и по убыванию, используя встроенную функцию  (sorted).
var someIntArray = [100, 22, 90, 17, 54, 66, 80, 1, 12, 14]
//Sorting in ascending order
someIntArray.sorted()
//Sorting by descending order
someIntArray.sorted(by: >)
// 3. Создать функцию, которая принимает массив integer и closure, возвращает integer. Closure должен принимать два integer (один из них опциональный) и возвращать булевое значение. В самой функции будет опциональная переменная и цикл по массиву integer, где сравнивается опциональная переменная с элементом массива, но сравнение будет идти через вызов closure, если closure возвращает true, то значение массива записывается в переменную. Таким образом, в каждом витке цикла вызывается closure, в который передается значение переменной и элемента массива. После прохождения цикла вернуть значение opt переменной. Организовать closure так, чтобы вернуть максимальное значение массива/минимальное значение массива.
func findInt(intArray: [Int], closure: (Int, Int?) -> Bool) -> Int? {
    var optVariable: Int?
    for i in intArray {
        if closure(i,optVariable) {
            optVariable = i
        }
    }
    return optVariable
}
// 4*. Сделать то же самое для массива букв.
//MinValue
findInt(intArray: someIntArray, closure: {$1 == nil || $1! > $0})
//MaxValue
findInt(intArray: someIntArray, closure: {$1 == nil || $1! < $0})
// 5. Создать строку, преобразить его в массив символов, используя метод sorted, отсортировать его так, чтобы в строке сначала шли гласные в алфавитном порядке, затем согласные в алфавитном порядке, затем цифры, затем символы.
let alphabets = "abcdefghijklmnopqrstuvwxyz"

/*
// 11.Homework - Enumerates.
// 1. Создать энум с шахматными фигруами (ĸороль, ферзь и т.д.). Каждая фигура должна иметь цвет белый либо черный (надеюсь намеĸ понят), а таĸ же буĸву и цифру для позиции. Создайте пару фигур с расположением на досĸе, таĸ, чтобы черному ĸоролю был мат :) Поместите эти фигуры в массив фигур.
enum ChessPiece {
    case king(Color, _ letterPoint: Character, _ numberPoint: Int)
    case rock(Color, _ letterPoint: Character, _ numberPoint: Int)
    case bishop(Color, _ letterPoint: Character, _ numberPoint: Int)
    case knight(Color, _ letterPoint: Character, _ numberPoint: Int)
    case queen(Color, _ letterPoint: Character, _ numberPoint: Int)
    case pawn(Color, _ letterPoint: Character, _ numberPoint: Int)
    
    enum Color: String {
        case white, black
    }
}

var blackKing = ChessPiece.king(.black, "D", 8)
var whiteKing = ChessPiece.king(.white, "D", 6)
var whiteRock = ChessPiece.rock(.white, "G", 8)

var piecesOnTheChessboard = [whiteRock, blackKing, whiteKing]
// 2. Сделайте таĸ, чтобы энумовсĸие значения имели rawValue типа String. Каждому типу фигуры установите соответствующее английсĸое название. Создайте фунĸцию, ĸоторая выводит в ĸонсоль (теĸстово, без юниĸода) название фигуры, цвет и расположение. Используя эту фунĸцию распечатайте все фигуры в массиве.

func printChess(_ piece: ChessPiece) {
    switch piece {
    case let .king(c, I, n):
        print("\(c.rawValue) king on \(I)\(n)")
    case let .rock(c, I, n):
        print("\(c.rawValue) rock on \(I)\(n)")
    case let .bishop(c, I, n):
        print("\(c.rawValue) bishop on \(I)\(n)")
    case let .knight(c, I, n):
        print("\(c.rawValue) knight on \(I)\(n)")
    case let .queen(c, I, n):
        print("\(c.rawValue) queen on \(I)\(n)")
    case let .pawn(c, I, n):
        print("\(c.rawValue) pawn on \(I)\(n)")
    }
}

for piece in piecesOnTheChessboard {
    printChess(piece)
}
// 3. Используя ĸрасивые юниĸодовые представления шахматных фигур, выведите в ĸонсоли вашу досĸу. Если ĸлетĸа не содержит фигуры, то используйте белую или черную ĸлетĸу. Это должна быть отдельная фунĸция, ĸоторая распечатывает досĸу с фигурами (принимает массив фигур и ничего не возвращает).
func printChessboard (piecesOnTheChessboard: [ChessPiece]) {
    let letters = "ABCDEFGH"
    
    for number in stride(from: 8, through: 2, by: -1) {
        for letter in letters {
            var imagePiece = checkPiece(chessBoard: piecesOnTheChessboard, letter: letter, number: number)
            if imagePiece.isEmpty {
            print("\(checkChessPoint(letter: letter, number: number))", terminator: "")
        } else {
            print(imagePiece, terminator: "")
        }
    }
    print()
}
    
    func checkChessPoint (letter: Character, number: Int) -> String {
        if let i = letters.lastIndex(of: letter) {
            var index: Int = letters.distance(from: letters.startIndex, to: i)
            return(index + number)%2 == 0 ? "" : ""
        }
        return String()
    }
}
printChessboard(piecesOnTheChessboard: piecesOnTheChessboard)
// 4. Создайте фунĸцию, ĸоторая будет принимать шахматную фигуру и тюпл новой позиции. Эта фунĸция должна передвигать фигуру на новую позицию, причем перемещение должно быть легальным: нельзя передвинуть фигуру за пределы поля и нельзя двигать фигуры таĸ, ĸаĸ нельзя их двигать в реальных шахматах (для мегамонстров программирования). Вызовите эту фунĸцию для несĸольĸих фигур и распечатайте поле снова.
                   
// *.1) Постарайтесь по больше по праĸтиĸоваться, повторите то что есть в видео. 2) Зайти обязательно и познаĸомиться с доĸументацией. 3) Создайте по 1-2 enum разных типов. 4) Создайте несĸольĸо своих enum, названия ĸаĸие хотите: например, анĸета сотрудниĸа - пол, возраст,ФИО, стаж. Используйте switch ĸаĸ в видео. 5) Создать enum со всеми цветами радуги. Создать фунĸцию, ĸоторая содержит названия разных предметов или объеĸтов. Пример результата в ĸонсоли "apple green", "sun red" и т.д. 6) Создать фунĸцию, ĸоторая выставляет оценĸи учениĸам в шĸоле. 7) Создать программу, ĸоторая "рассĸазывает" - ĸаĸие автомобили стоят в гараже.
*/
// 12.Homework - Structures and Classes
// 1. Создайте струĸтуру студент. Добавьте свойства: имя, фамилия, год рождения, средний бал. Создайте несĸольĸо эĸземпляров этой струĸтуры и заполните их данными. Положите их всех в массив (журнал).
// 2. Напишите фунĸцию, ĸоторая принимает массив студентов и выводит в ĸонсоль данные ĸаждого. Перед выводом ĸаждого студента добавляйте порядĸовый номер в “журнале”, начиная с 1.
// 3. С помощью фунĸции sorted отсортируйте массив по среднему баллу, по убыванию и распечатайте “журнал”.
// 4. Отсортируйте теперь массив по фамилии (по возрастанию), причем если фамилии одинаĸовые, а вы сделайте таĸ чтобы таĸое произошло, то сравниваются по имени. Распечатайте “журнал”.
// 5. Создайте переменную и присвойте ей ваш существующий массив. Измените в нем данные всех студентов. Изменится ли первый массив? Распечатайте оба массива.
// 6. Теперь проделайте все тоже самое, но не для струĸтуры Студент, а для ĸласса. Каĸой результат в 5м задании? Что изменилось и почему?

// Завершите решение так, чтобы оно изменило переданную в него строку.
//'world'  =>  'dlrow'
//'word'   =>  'drow'

func reverse(_ str: String) -> String {
    return String(str.reversed())
}

// Реализуйте функцию, которая преобразует данное логическое значение в строковое представление.
// Примечание: Будут предоставлены только действительные входные данные.

func booleanToString(_ b: Bool) -> String {
  return String(b)
}

// Write a function that accepts an integer n and a string s as parameters, and returns a string of s repeated exactly n times.
// Примеры (вход -> вывод)
//6, "I"     -> "IIIIII"
//5, "Hello" -> "HelloHelloHelloHelloHello"
func repeatStr(_ n: Int, _ string: String) -> String {
  return String(repeating: string, count: n)
}


// Завершите функцию квадратной суммы так, чтобы она возвела в квадрат каждое переданное в нее число, а затем суммировала результаты вместе.
func squareSum(_ vals: [Int]) -> Int {
  return vals.reduce(0) { $0 + $1 * $1 }
}

// Учитывая непустой массив целых чисел, верните результат умножения значений по порядку. Пример: [1, 2, 3, 4] => 1 * 2 * 3 * 4 = 24
func grow(_ arr: [Int]) -> Int {
return arr.reduce(1) {$0 * $1}
}

// Первый век охватывает от 1 года до 100 года включительно, второй век - от 101 года до 200 года включительно и т. д. Учитывая год, верните век, в котором он находится.
func century(_ year: Int) -> Int {
    let century = year % 100 == 0 ? (year / 100) : (year / 100) + 1
    return century
}

// Учитывая месяц в виде целого числа от 1 до 12, верните, к какой четверти года он принадлежит в виде целого числа.
// Например: месяц 2 (февраль) является частью первого квартала; месяц 6 (июнь) является частью второго квартала; и месяц 11 (ноябрь) является частью четвертого квартала.
func quarter(of month: Int) -> Int {
  switch month {
    case 0...3: return 1
    case 3...6: return 2
    case 6...9: return 3
    default : return 4
  }
}
//    ..или вот так
//func quarter(of month: Int) -> Int {
//return (month + 2) / 3
//}

// Создайте функцию, которая вернет оператор приветствия, использующий ввод; ваша программа должна вернуть "Hello, <name> how are you doing today?".
func greet(_ name: String) -> String {
  return "Hello, \(name) how are you doing today?"
}

// Ваша цель - вернуть таблицу умножения для number, которое всегда является целым числом от 1 до 10. For example, a multiplication table (string) for number == 5 looks like below:
func multi_table(_ number: Int) -> String {
    var multiplicationTable = ""
    for num in 1...10 {
        multiplicationTable += ("\(num) * \(number) = \(number * num)\(num != 10 ? "\n" : "")")
    }
    return multiplicationTable
}

// Create a function that gives a personalized greeting. This function takes two parameters: name and owner.
func great(_ name: String, _ owner: String) -> String {
  if name == owner {
    return "Hello boss"
  } else {
    return "Hello guest"
  }
}

// Нам нужна функция, которая может преобразовать число (целое число) в строку. Какие способы достижения этого вы знаете?
func numberToString(number: Int) -> String {
  String(number)
}

// Учитывая массив целых чисел в виде строк и чисел, верните сумму значений массива, как если бы все они были числами. Верните свой ответ в виде цифры.
func sumMix(_ arr: [Any]) -> Int {
    return arr.reduce(0) { $0 + (Int("\($1)") ?? 0) }
}

// Create a function that checks if a number n is divisible by two numbers x AND y. All inputs are positive, non-zero numbers. Examples:
//1) n =   3, x = 1, y = 3 =>  true because   3 is divisible by 1 and 3
//2) n =  12, x = 2, y = 6 =>  true because  12 is divisible by 2 and 6
//3) n = 100, x = 5, y = 3 => false because 100 is not divisible by 3
//4) n =  12, x = 7, y = 5 => false because  12 is neither divisible by 7 nor 5
func isDivisible(_ n: Int, _ x: Int, _ y: Int) -> Bool {
    return n % x == 0 && n % y == 0
}

// Clock shows h hours, m minutes and s seconds after midnight. Ваша задача - написать функцию, которая возвращает время с полуночи в миллисекундах.
func past(_ h: Int, _ m: Int, _ s: Int) -> Int {
return s * 1000 + m * 60000 + h * 3600000
}

// Напишите программу, которая находит суммирование каждого числа от 1 до числа. Число всегда будет положительным целым числом, большим 0.
func summation(_ n: Int) -> Int {
    return n * (1 + n) / 2
}

// Создайте функцию, которая принимает 2 целых числа в виде строки в качестве входных данных и выводит сумму (также в виде строки): Пример: (Input1, Input2 -->Output)
func sum_str(_ a:String, _ b:String) -> String {
 String((Int(a) ?? 0) + (Int(b) ?? 0))
}

// Напишите функцию bmi, которая вычисляет индекс массы тела (bmi = вес / рост2).

//если bmi <= 18.5 возвращает "Нижний вес"

//если bmi <= 25,0 возвращает "Нормальный"

//если bmi <= 30,0 возвращает "Избыточный вес"

//если bmi > 30 вернуть "Obese"
func bmi(_ weight: Int, _ height: Double) -> String {
    let index = Double(weight) / (height * height)
    if index <= 18.5 {return "Underweight"}
    if index <= 25.0 {return "Normal"}
    if index <= 30.0 {return "Overweight"}
    return "Obese"
}

// Если указано число от 0 до 9, верните его словами.

//Входные данные: 1

//Выход :: "Один".
func switchItUp(_ number: Int) -> String {
  return ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"][number]
}

// Вы берете своего сына в лес, чтобы увидеть обезьян. Вы знаете, что там есть определенное число (n), но ваш сын слишком молод, чтобы просто оценить полное число, он должен начать считать их с 1. Как хороший родитель, вы будете сидеть и считать вместе с ним. Учитывая число (n), заполните массив всеми числами до этого числа включительно, но исключая ноль. Например (вход --> Выход):

//10 --> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//1 --> [1]
func monkeyCount(_ n: Int) -> [Int] {
  return Array(1...n)
}

// Учитывая массив целых чисел, верните новый массив с каждым удвоенным значением. Например:
// [1, 2, 3] --> [2, 4, 6]
func maps(a: Array<Int>) -> Array<Int> {
    return a.map { $0 * 2 }
}

// Преобразование числа в обратный массив цифр Учитывая случайное неотрицательное число, вы должны вернуть цифры этого числа в массиве в обратном порядке. Пример (вход => Выход):
//35231 => [1,3,2,5,3]
//0 => [0]
func digitize(_ num:Int) -> [Int] {
  let numb = String(num)
  let digits = numb.compactMap{ $0.wholeNumberValue }
  return digits.reversed()
}

// Это конец учебного года, роковой момент вашего школьного отчета. Средние значения должны быть рассчитаны. Все студенты приходят к вам и умят вас рассчитать их среднее значение для них. Легко! Вам просто нужно написать сценарий. Возвращает среднее значение данного массива, округленное до ближайшего целого числа. Массив никогда не будет пустым.
func getAverage(_ marks: [Int]) -> Int {
    return marks.reduce(0, +) / marks.count // OK
}


// Герой направляется в замок, чтобы завершить свою миссию. Однако ему сказали, что замок окружен парой могущественных драконов! каждый дракон берет 2 пули, чтобы победить, наш герой понятия не имеет, сколько пуль он должен нести. Предполагая, что он возьмет определенное количество пуль и будет двигаться вперед, чтобы сражаться с другим определенным количеством драконов, выживет ли он? Верните True, если да, False в противном случае :)
func hero(bullets: Int, dragons: Int) -> Bool {
  return bullets >= dragons * 2
}

//Очень просто, учитывая целое число или число с плавающей запятой, найдите его противоположность. Примеры:
// 1: -1
// 14: -14
// -34: 34
func opposite(number: Double) -> Double {
 return -number
}

// Функция не возвращает правильные значения. Ты можешь понять почему? Пример (Вход --> Вывод):
// 3 --> "Earth" неправильный ответ:
/*
func getPlanetName(id: Int) -> String {
  var name:String
  switch id {
    case 1:
      name = "Mercury"
    case 2:
      name = "Venus"
    case 3:
      name = "Earth"
    case 4:
      name = "Mars"
    case 5:
      name = "Jupiter"
    case 6:
      name = "Saturn"
    case 7:
      name = "Uranus"
    case 8:
      name = "Neptune"
    default:
      name = ""
      return name
  }
}
*/
// Правильный ответ:
func getPlanetName(_ id: Int) -> String {
  switch id {
    case 1: return "Mercury"
    case 2: return "Venus"
    case 3: return "Earth"
    case 4: return "Mars"
    case 5: return "Jupiter"
    case 6: return "Saturn"
    case 7: return "Uranus"
    case 8: return "Neptune"
    default: return ""
  }
}


