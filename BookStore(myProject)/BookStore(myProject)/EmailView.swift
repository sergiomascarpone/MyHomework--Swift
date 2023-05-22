//
//  EmailView.swift
//  BookStore(myProject)
//
//  Created by Sergio Mascarpone on 19.05.23.
//

import UIKit

class EmailView: UIViewController {
    
    var regView: UIImageView {
        let regView = UIImageView()
        regView.translatesAutoresizingMaskIntoConstraints = false
        regView.contentMode = .scaleAspectFill
        return regView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupRegView()
    }
    
    
    func setupRegView() {
        view.backgroundColor = .white
        
        
        
    }
}
