//
//  ViewController.swift
//  Lection3
//
//  Created by Sergio Mascarpone on 2.05.23.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var userButton: UIButton!
    @IBOutlet weak var titleTextLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        titleTextLabel.text = "Good moorning"
        titleTextLabel.textColor = UIColor.red
        
        
    }


    @IBAction func userDidTap() {
        titleTextLabel.text! = "Умница какой"
    }
}





