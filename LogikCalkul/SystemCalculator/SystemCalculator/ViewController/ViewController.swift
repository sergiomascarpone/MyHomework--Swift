//
//  ViewController.swift
//  SystemCalculator
//
//  Created by Sergio Mascarpone on 20.02.23.
//

import UIKit

class ViewController: UIViewController {
    
    // Mark: Views
    private let display     = UITextField()
    private let displayView = UIView()
    private let mainVStack  = UIStackView()
    
    
    
    // Mark: Properties
    var service: CalcService?
    
    // Mark: ViewController lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        service = CalcService(displayView: self)
        view.backgroundColor = .systemGray
        
        configureAppearance()
        
    }
    
    // Mark: ViewController methods
    func updateDisplay(text: String) {
        print(text)
    }

}

// MArk: ViewController private methods
private extension ViewController {
    func configureAppearance() {
        setupDisplayView()
        setupBottoms()
        setupMainVStack()
    }
    func setupMainVStack() {
        mainVStack.axis = .vertical
        mainVStack.frame = CGRect(x: 0, y: 60, width: Constants.screenWidth, height: Constants.screenHeight-60)
        mainVStack.backgroundColor = .systemMint
        
        self.view.addSubview(mainVStack)
    }
    func setupDisplayView() {
        
    }
    func setupBottoms() {
        let line1 = createHStack(yPosition: 0)
        line1.addSubview(createButton(order: 0, title: "0", tag: 0))
        line1.addSubview(createButton(order: 1, title: "1", tag: 1))
        line1.addSubview(createButton(order: 2, title: "2", tag: 2))
        line1.addSubview(createButton(order: 3, title: "3", tag: 3))
        mainVStack.addSubview(line1)
        
        let line2 = createHStack(yPosition: 80 + 2)
        line2.addSubview(createButton(order: 0, title: "4", tag: 4))
        line2.addSubview(createButton(order: 1, title: "5", tag: 5))
        line2.addSubview(createButton(order: 2, title: "6", tag: 6))
        line2.addSubview(createButton(order: 3, title: "7", tag: 7))
        mainVStack.addSubview(line2)
    }
    func createButton(order: Int, title: String, tag: Int) -> UIButton {
        let button = UIButton(frame: CGRect(x: (0+Int(Constants.screenWidth/4)*order+2), y: 0, width: Int(Constants.screenWidth)/4-2, height: 80))
        
        button.setTitle(title, for: .normal)
        button.backgroundColor = .blue
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.setTitleColor(.white, for: .normal)
        
        return button
    }
    func createHStack(yPosition: Int) -> UIStackView {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.frame = CGRect(x: 0, y: yPosition, width: Int(Constants.screenWidth), height: 80)
        return stack
    }
}

