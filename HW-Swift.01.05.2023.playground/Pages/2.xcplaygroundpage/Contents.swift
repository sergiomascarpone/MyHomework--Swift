/*
1. Почитать доку по swift  про типы данных.
2. С помощью функции "print" вывести все используемые диапазоны.
3. Создать константы (Int) (Double) (Float) c разными числами отличными от 0.
4. Создать константы
 1) Int - сумма всех трех
 2) Float - сумма всех трех
 3) Double - сумма всех трех
5. Создать условие если сумма Int меньше суммы Doubl, то вывести "Double точнее"
*/

let constInt = 5
let constDouble = 5.66
let constFloat: Float = -3.9

let SumOfConstsDouble = Double(constInt) + constDouble + Double(constFloat)
let SumOfConstsInt = constInt + Int(constDouble) + Int(constFloat)
let SumOfConstsFloat = Float(constInt) + Float(constDouble) + constFloat

if Double(constInt) > constDouble {
    print("Double is more accurate")
} else {
    print("Int is more accurate")
}
