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
 

*/



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


