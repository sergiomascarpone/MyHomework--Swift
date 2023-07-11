
import UIKit

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

var varFunc: (Int, Int, Int, Int) -> Void

varFunc = { a, b, c, d in
    // a + b
}

enum CompassPoint: String {
    case north, south, east, west
}

var value = CompassPoint.north

var rawValue = value.rawValue

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

//switch Planet.saturn {
//case .earth:
//   print(value)
//    default:
//  break
//}
print(Planet.uranus.rawValue)

//

//varFunc = { return $0 + $1 }
//
//varFunc = { $0 + $1 }
//
//var result = [12, 2, 3].reduce(0) { a, b in
//    return a + b
//}

/*
func calculateMoney(wallet: [Int], type: Int) -> (total: Int, count: Int) {
    
    var sum = 0
    var count = 0

    for value in wallet {
        
        if (type == nil) || (type != nil && value == type) {
            sum += value
            count +=1
        }
    }
  return (sum, count)
}

let wallet = [100, 20, 33, 1, 4, 7, 99, 3, 3, 1, 1, 4]

let money = calculateMoney(wallet: wallet, type: 3)

money
*/

let name = "Dima"
let name2 = "Anna"

func sayHello(to: String) {
    print("Hello, \(to)!")
}
sayHello(to: name)
sayHello(to: name2)
sayHello(to: "Ivan")


let apples = 3
let lemons = 10

func addTwoNumbers(itemOne: Int, itemTwo: Int) {
    let sum = itemOne + itemTwo
    print(sum)
}
addTwoNumbers(itemOne: apples, itemTwo: lemons)


func returnSumOfTwoNumbers(itemOne: Int, itemTwo: Int) -> String {
    let sum = itemOne + itemTwo
    return "The sum is \(sum)" //- интерполяция строки
}
let myFruit = returnSumOfTwoNumbers(itemOne: apples, itemTwo: lemons)
myFruit


func askSiri(question: String) {
    if question == "Hi" {
        print("Hi, how can I help you?")
    } else if question == "What is the capital of Great Britain?" {
        print("London is the capital of Great Britain")
    } else if question == "What is the temperature outside?" {
        print("It is 20 degrees")
    } else if question == "What is your name?" {
        print("My name is Siri")
    } else {
        print("Sorry, I did not understand you")
    }
}

askSiri(question: "What is your name?")
askSiri(question: "Hi")
askSiri(question: "Who is Dan?")

func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}
print(greetAgain(person: "Anna"))

// Функции без параметров: - Функции не обязаны определять входные параметры.
func sayHelloWorld() -> String {
    return "hello, world"
}
print(sayHelloWorld())

// Функции с несколькими параметрами: - Функции могут иметь несколько входных параметров, которые записываются в круглых скобках функции, разделенных запятыми.
/*
func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person, alreadyGreeted: <#Bool#>)
    }
}
print(greet(person: "Tim", alreadyGreeted: true))
*/

// Функции без возвращаемых значений: - Функции не обязаны определять тип возвращаемого значения.
func greet(person: String) {
    print("Hello, \(person)!")
}
greet(person: "Dave")

// 1.Функции с несколькими возвращаемыми значениями: - Вы можете использовать тип кортежа в качестве типа возвращаемого значения, чтобы функция возвращала несколько значений как часть одного составного возвращаемого значения.
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

// 2. Чтобы безопасно обрабатывать пустой массив, напишите функцию с необязательным возвращаемым типом кортежа и возвращайте значение, когда массив пуст:minMax(array:)nil
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

// Функции с неявным возвратом: - Если все тело функции представляет собой одно выражение, функция неявно возвращает это выражение.
func greeting(for person: String) -> String {
    "Hello, " + person + "!"
}
print(greeting(for: "Dave"))
// Prints "Hello, Dave!"

func anotherGreeting(for person: String) -> String {
    return "Hello, " + person + "!"
}
print(anotherGreeting(for: "Dave"))

// Метки аргументов функций и имена параметров: - Каждый параметр функции имеет как метку аргумента , так и имя параметра . Метка аргумента используется при вызове функции; каждый аргумент записывается в вызове функции с меткой аргумента перед ним. Имя параметра используется при реализации функции. По умолчанию параметры используют имя своего параметра в качестве метки аргумента.
func someFunction(firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
someFunction(firstParameterName: 1, secondParameterName: 2)

// Указание меток аргументов: - Вы пишете метку аргумента перед именем параметра, разделенную пробелом. Вот вариант функции greet(person:), которая принимает имя человека и родной город и возвращает приветствие:
func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))

// Вариативные параметры: - Вариативный параметр принимает ноль или более значений указанного типа. Вы используете переменный параметр, чтобы указать, что параметру может быть передано различное количество входных значений при вызове функции. Запишите переменные параметры, вставив три символа точки ( ...) после имени типа параметра. Значения, переданные вариативному параметру, доступны в теле функции в виде массива соответствующего типа. Например, вариативный параметр с именем numbersи типом Double...доступен в теле функции в виде константного массива с именем numbersтипа [Double]. В приведенном ниже примере вычисляется среднее арифметическое (также известное как среднее ) для списка чисел любой длины:
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
// returns 3.0, which is the arithmetic mean of these five numbers
arithmeticMean(3, 8.25, 18.75)
// returns 10.0, which is the arithmetic mean of these three numbers

// Входные параметры: - Параметры функции являются константами по умолчанию. Попытка изменить значение параметра функции из тела этой функции приводит к ошибке времени компиляции. Это означает, что вы не можете изменить значение параметра по ошибке. Если вы хотите, чтобы функция изменяла значение параметра, и вы хотите, чтобы эти изменения сохранялись после завершения вызова функции, вместо этого определите этот параметр как входной параметр. Пример: Вот пример функции с именем , которая имеет два входных целочисленных параметра с именами и :swapTwoInts(_:_:)ab
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

// Вложенные функции: - Вложенные функции по умолчанию скрыты от внешнего мира, но по-прежнему могут вызываться и использоваться закрывающей их функцией. Охватывающая функция также может возвращать одну из своих вложенных функций, чтобы разрешить использование вложенной функции в другой области.
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}
var currentValue = -4
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero now refers to the nested stepForward() function
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")


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








