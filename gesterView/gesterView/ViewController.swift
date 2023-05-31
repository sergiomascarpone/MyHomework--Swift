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
            let recognizer = UITapGestureRecognizer(target: GesterView, action: #selector(GesterView.didTap))
            recognizer.numberOfTapsRequired = 3
            GesterView.addGestureRecognizer(recognizer)
            
            //подписались на все уведомления...
            GesterView.delegate = self
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

extension ViewController: GestureDelegate {
    func didTap(_ view: GesterView) {
        print("Delegate didTap")
    }
}
