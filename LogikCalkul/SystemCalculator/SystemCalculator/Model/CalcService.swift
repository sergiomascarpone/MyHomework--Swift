//
//  CalcService.swift
//  SystemCalculator
//
//  Created by Sergio Mascarpone on 20.02.23.
//

import Foundation

class CalcService {
    
    // Mark: properties
    var isRunning = true
    var currentNumber = "0"
    var firstNumber  = 0.0
    var secondNumber = 0.0
    var result = ""
    var currentOperation = Operations.noAction
    var displayView: ViewController
    
    init(displayView: ViewController) {
        self.displayView = displayView
    }
    
    // Mark: methods
    
    func numberAction(number: Int) {
        if currentNumber != "0" {
            currentNumber.append(String(number))
            displayView.updateDisplay(text: currentNumber)
        } else {
            currentNumber = String(number)
            displayView.updateDisplay(text: currentNumber)
        }
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
                
                firstNumber = Double(result)!
                if Double(result)!.truncatingRemainder(dividingBy: 1) == 0 {
                    result = String(Int(Double(result)!))
                }
                currentNumber = result
                displayView.updateDisplay(text: currentNumber)
                currentOperation = .noAction
            }
        } else {
            firstNumber = Double(currentNumber) ?? 0.0
            currentNumber = ""
            displayView.updateDisplay(text: currentNumber)
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
        displayView.updateDisplay(text: "0")
    }
    func changeSign() {
        var temp = currentNumber
        if temp.contains("-") {
            let sign = ["-"]
            temp = String(temp.filter { !sign.contains(String($0)) })
            displayView.updateDisplay(text: temp)
            currentNumber = temp
        } else {
            temp = "-" + currentNumber
            displayView.updateDisplay(text: temp)
            currentNumber = temp
        }
    }
    func percent() {
        currentNumber = String(Double(currentNumber)! / 100)
        displayView.updateDisplay(text: currentNumber)
        result = currentNumber
        firstNumber = Double(result)!
    }
    func dot() {
        if currentNumber.contains(",") {
            return
        } else {
            currentNumber += ","
            displayView.updateDisplay(text: currentNumber)
        }
    }
}
