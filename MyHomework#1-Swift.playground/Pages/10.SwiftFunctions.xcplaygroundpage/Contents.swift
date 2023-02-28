
import UIKit
/*
func calculateMoney(wallet: [Int], type: Int) -> (total: Int, count: Int) {
    
    var sum = 0
    var count = 0

    for value in wallet {
        
        if (type == nil) || (type != nil && value == type) {
            sum += value
            count+=1
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
