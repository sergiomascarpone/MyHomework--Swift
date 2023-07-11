//
//  main.swift
//  LogikCalkul
//
//  Created by Sergio Mascarpone on 16.02.23.
//

import Foundation
// Mark: enum with operation types
enum Operations {
    case noAction
    case addition
    case substraction
    case multiplikation
    case division
}

//Mark: variables
var isRunning = true
var currentNumber = "0"
var firstNumber  = 0.0
var secondNumber = 0.0
var result = ""
var currentOperation = Operations.noAction

//Mark: program points
func runLoop() {
    while isRunning {
        start()
    }
}

func start() {
    print("Do you want to make calculation?")
    print("Enter \"yes\" or \"no\"i")
    let answer = readLine()
    if answer == "yes" {
       updateDisplay(text: "Enter first number:")
        let firstEnter: String = readLine()!
        currentNumber = firstEnter
        updateDisplay(text: "Enter operation tipe (+ - / *):")
        let operationEnter: String = readLine()!
        switch operationEnter {
        case "+":
            addition()
        case "-":
            substraction()
        case "/":
            division()
        case "*":
            multiplikation()
        default:
            break
        }
        updateDisplay(text: "Enter second number:")
        let secondEnter: String = readLine()!
        currentNumber = secondEnter
        makeResult()
        acAction()
    } else {
        finish()
    }
}

func finish() {
    print("Programm is ended.")
    isRunning = false
}

//Mark: functions
func updateDisplay(text: String) {
    print(text)
}
func makeCalculation(operation: Operations) {
    if currentOperation != .noAction {
        if currentNumber != "" {
            secondNumber = Double(currentNumber) ?? 0.0
            switch operation {
            case .addition:
                result = String(firstNumber + secondNumber)
            case .substraction:
                result = String(firstNumber - secondNumber)
            case .division:
                result = String(firstNumber / secondNumber)
            case .multiplikation:
                result = String(firstNumber * secondNumber)
            default:
                break
            }
        }
    } else {
        firstNumber = Double(currentNumber) ?? 0.0
        currentNumber = ""
        updateDisplay(text: currentNumber)
        currentOperation = operation
    }
    print(
"""
\n
current number = \(currentNumber)
first = \(firstNumber)
second = \(secondNumber)
result = \(result)
\n
""")
}
func addition() {
    makeCalculation(operation: .addition)
}
func substraction() {
    makeCalculation(operation: .substraction)
}
func division() {
    makeCalculation(operation: .division)
}
func multiplikation() {
    makeCalculation(operation: .multiplikation)
}
func makeResult() {
    makeCalculation(operation: currentOperation)
}
func acAction() {
     currentNumber = ""
     firstNumber  = 0.0
     secondNumber = 0.0
     result = ""
     currentOperation = Operations.noAction
    updateDisplay(text: currentNumber)
}


//Mark: programm flow
print("SimpleCalc program.")
print("Welcome to simpleCalc")
runLoop()
