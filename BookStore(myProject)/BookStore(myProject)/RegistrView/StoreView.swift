//
//  StoreView.swift
//  BookStore(myProject)
//
//  Created by Sergio Mascarpone on 1.06.23.
//

import UIKit

class StoreView: UIViewController {
    
    var storeView: UIView {
        let storeView = UIView()
        storeView.contentMode = .scaleAspectFill // изображение на всю вью
        storeView.translatesAutoresizingMaskIntoConstraints = false
        storeView.backgroundColor = .cyan
        return storeView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupStoreView()
        
    }
    
    func setupStoreView() {
        view.addSubview(storeView)
        storeView.backgroundColor = .black

    }
}
