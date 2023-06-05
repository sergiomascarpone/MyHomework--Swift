//
//  StoreView.swift
//  BookStore(myProject)
//
//  Created by Sergio Mascarpone on 1.06.23.
//

import UIKit

class StoreView: UIViewController {
    
    let storeView: UIView = {
        let storeView = UIView()
        storeView.contentMode = .scaleAspectFill // изображение на всю вью
        storeView.translatesAutoresizingMaskIntoConstraints = false
        storeView.backgroundColor = .cyan
        return storeView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupStoreView()
        
    }
    
    func setupStoreView() {
        view.addSubview(storeView)
        storeView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        storeView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        storeView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        storeView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        storeView.backgroundColor = .black

    }
}
