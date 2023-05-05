//
//  ViewController.swift
//  Lection5
//
//  Created by Sergio Mascarpone on 4.05.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myLabel = UILabel()
        myLabel.text = "Hello Sergey!"
        myLabel.textColor = .orange
        myLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
        myView.addSubview(myLabel)
        
    }

    @IBAction func changeColor(_ sender: UIButton) {
        
        myView.backgroundColor = sender.backgroundColor
    }
    
}

