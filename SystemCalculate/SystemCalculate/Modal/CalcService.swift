//
//  CalcService.swift
//  SystemCalculate
//
//  Created by Sergio Mascarpone on 19.02.23.
//

import Foundation

class CalcService {
    
    //Mark: properties
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
    
    //Mark: methods
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
}
