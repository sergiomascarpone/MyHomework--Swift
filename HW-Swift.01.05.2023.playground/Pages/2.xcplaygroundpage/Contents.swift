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
