//: [Previous](@previous)

import Foundation

1234567//243424242

// Closures: Замыкания — это автономные блоки функций, которые можно передавать и использовать в вашем коде. Замыкания в Swift аналогичны блокам в C и Objective-C, а также лямбда-выражениям в других языках программирования. Замыкания могут захватывать и хранить ссылки на любые константы и переменные из контекста, в котором они определены. Это известно как закрытие этих констант и переменных. Swift берет на себя всю работу по управлению памятью при захвате.

// Closure Expression Syntax - Синтаксис выражения замыкания имеет следующий общий вид:
/*
 { (<#parameters#>) -> <#return type#> in
   <#statements#>
}
*/

// Обьявление замыкания
let closure =
{
    print("Hello from closure!")
}
// Вызов замыкания
closure()

// Замыкание с параметром без возвращаемого значения:
var dogBark = { (name: String) in
    print("\(name) Bark!")
}
dogBark("Lessie")

// Замыкание с возвращаемым значением:
let findSquare = { (num: Int) -> (Int) in
    let square = num * num
    return square
}

print(findSquare(2))

let findSquare2: (Int) -> (Int) = { $0*$0 }

print(findSquare2(3))

// Замыкание в качестве параметра для функции:
func getPizzaPlace(search: () -> ()) {
    print("Lets go for some pizza")
    // вызов замыкания
    search()
}
// передаем замыкание в функцию
getPizzaPlace(search: {
    print("Dodo pizza is 1 km away")
})

// Захват значений из области видимости:
func someFunc(x: Int) -> (() -> Int) {
    let closure = { x } //захват x
    return closure
}

let capture1 = someFunc(x: 5)
let capture2 = someFunc(x: 8)

capture1()
capture2()

// Global functions - это замыкания, которые имеют имя и не фиксируют никаких значений.
// Nested functions - это замыкания, которые имеют имя и могут захватывать значения из включающей их функции.
// Closure expressions - это безымянные замыкания, написанные с использованием облегченного синтаксиса, который может захватывать значения из окружающего контекста.

// Выражения замыкания Swift имеют чистый, ясный стиль с оптимизацией, которая способствует использованию краткого, простого синтаксиса в распространенных сценариях. Эти оптимизации включают в себя:
// 1. Вывод типов параметров и возвращаемых значений из контекста
// 2. Неявные возвраты из замыканий с одним выражением
// 3. Сокращенные имена аргументов
// 4. Синтаксис закрытия замыкания

// Closure expressions - это способ написания встроенных замыканий с кратким и сфокусированным синтаксисом. Выражения замыкания обеспечивают несколько оптимизаций синтаксиса для написания замыканий в сокращенной форме без потери ясности или намерения.

// The Sorted Method - sorted(by:)
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)

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
