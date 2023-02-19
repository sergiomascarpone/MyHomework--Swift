//
//  ViewController.swift
//  SystemCalculate
//
//  Created by Sergio Mascarpone on 17.02.23.
//

import UIKit

class ViewController: UIViewController {
    
    // Mark: Views
    private let display     = UITextField()
    private let displayView = UIView()
    private let mainVstack  = UIStackView()
    
    // Mark: Properties
    var service: CalcService?

    
    // Mark: ViewController lifecicle
    override func viewDidLoad() {
        super.viewDidLoad()
        service = CalcService(displayView: self)
        view.backgroundColor = .systemBrown
    
    }

    // Mark: ViewController methods
    func updateDisplay(text: String) {
        print(text)
    }

}

// Mark: ViewController private methods
private extension ViewController {
    func configureAppearance() {
        setupDisplayView()
        setupButtons()
        setupMainStack()
    }
    func setupMainStack() {
        mainVstack.axis = .vertical
        mainVstack.frame = CGRect(x: 0, y: 60, width: Constants.screenWidth, height: Constants.screenHeight-60)
        mainVstack.backgroundColor = .systemBlue
        self.view.addSubview(mainVstack)
    }
    func setupDisplayView() {
        
    }
    func setupButtons() {
        
    }
}
