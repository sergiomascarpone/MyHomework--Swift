//
//  ViewController.swift
//  BookStore(myProject)
//
//  Created by Sergio Mascarpone on 10.05.23.
//

import UIKit

class MainViewController: UIViewController {
    
    
    /// Создание и размещение Label
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Book store"
        label.textColor = .white
        label.font = UIFont(name: "AmericanTypewriter", size: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
   

    /// Создание и размещение imageView
    let imageView: UIImageView = {
        let imageView = UIImageView(frame: UIScreen.main.bounds)
        imageView.image = UIImage(named: "viewLogo")
        imageView.contentMode = .scaleAspectFill // изображение на всю вью
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    /// Создание и размещение кнопки
    let springButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .magenta
        button.setTitle("Let`s go!", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(springButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    /// Создание и размещение кнопки
    let storeButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .magenta
        button.setTitle("Book Collection", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(storeButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var springButtonContraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setConstraints()
        
        //springButton
        springButtonContraint.constant -= view.bounds.width
    }
    
    
    //springButton
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //появление кнопки настройка
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut) {
            self.springButtonContraint.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
        }
    }
    
    
    /// Настройка обьектов
    func setupView() {
        view.backgroundColor = .gray //Цвет всей вью
        
        view.addSubview(imageView)
        view.addSubview(titleLabel)
        view.addSubview(springButton)
        view.addSubview(storeButton)
    }
    
    
    /// Открытие окна регистрации
    @objc private func springButtonTapped() {
        let registrationView = RegistrationView()
        self.present(registrationView, animated: true)
    }
    
    
    /// Открытие окна магазина
    @objc private func storeButtonTapped() {
        let StoreView = BookCollectionViewController()
        self.present(StoreView, animated: true)
    }
}

extension MainViewController {
    
    
    /// Расположение обьектов
    func setConstraints() {
        
        //springButton
        springButtonContraint = NSLayoutConstraint(item: springButton, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0)
        self.view.addConstraint(springButtonContraint)

        NSLayoutConstraint.activate([
            
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 260),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 260),
            
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor), //расположение текста по центру по оси Х
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            
            //springButton
            springButton.heightAnchor.constraint(equalToConstant: 50),
            springButton.widthAnchor.constraint(equalToConstant: 240),
            springButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -120),
            
            
            //storeButton
            storeButton.heightAnchor.constraint(equalToConstant: 50),
            storeButton.widthAnchor.constraint(equalToConstant: 240),
            storeButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            storeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)
            
    
    
    ])
      
  }
  
}

