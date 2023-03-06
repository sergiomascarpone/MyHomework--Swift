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

