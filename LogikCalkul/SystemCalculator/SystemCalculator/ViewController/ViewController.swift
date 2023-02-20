//
//  ViewController.swift
//  SystemCalculator
//
//  Created by Sergio Mascarpone on 20.02.23.
//

import UIKit

class ViewController: UIViewController {
    
    // Mark: Properties
    var service: CalcService?
    
    // Mark: ViewController lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        service = CalcService(displayView: self)
        view.backgroundColor = .systemGray
    }
    // Mark: ViewController methods
    func updateDisplay(text: String) {
        print(text)
    }

}

