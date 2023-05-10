//
//  ViewController.swift
//  BookStore(myProject)
//
//  Created by Sergio Mascarpone on 10.05.23.
//

import UIKit

class MainViewController: UIViewController {
    
    let titleLabel: UILabel = { //Создание и размещение вью
        let label = UILabel()
        label.text = "Book store"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Bold", size: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setConstraints()
      
    }
    
    func setupView() { //Настройка обьектов
        view.backgroundColor = .gray //Цвет всей вью
        
        view.addSubview(titleLabel)
    }

}

extension MainViewController {
    
    func setConstraints() { //Расположение обьектов
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    
    
    
    
    
    
    ])
  }
}
