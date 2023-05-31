//
//  ViewController.swift
//  gesterView
//
//  Created by Sergio Mascarpone on 29.05.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var GesterView: GesterView! {
        didSet {
            let recognizer = UITapGestureRecognizer(target: self, action: #selector(didTap(_:)))
            
            GesterView.addGestureRecognizer(recognizer)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTap(_ sender: UITapGestureRecognizer) {
        print("tap")
    }
    
}

