//
//  ViewController.swift
//  Lection3HW
//
//  Created by Sergio Mascarpone on 5.05.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var previousButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        firstNameLabel.textColor = .brown
        lastNameLabel.textColor = .brown
    }

    
    
    @IBAction func userDidTap() {
        firstNameLabel.text = "Sergey"
        lastNameLabel.text = "Bikov"
    }
    
    
    
    @IBAction func userAction() {
        firstNameLabel.text = "FirstName"
        lastNameLabel.text = "LastName"
    }
    
}






