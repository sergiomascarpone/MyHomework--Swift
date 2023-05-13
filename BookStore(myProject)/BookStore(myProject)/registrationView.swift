//
//  registrationView.swift
//  BookStore(myProject)
//
//  Created by Sergio Mascarpone on 12.05.23.
//

import UIKit

class registrationView: UIViewController {
    
    //создали вью
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "viewLogo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    //создали блюр вью
    let blurView: UIVisualEffectView = {
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //создали кнопку emailNameButton
    let emailNameButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .black
        button.setTitle("First name...", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //создали кнопку passwordNameButton
    let passwordNameButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .black
        button.setTitle("Last name...", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //создали кнопку loginButton
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .red
        button.setTitle("Login", for: .normal)
        button.tintColor = .black
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupImageView()
        let blurEffect = UIBlurEffect(style: .light)
        view.addSubview(blurView)
        blurView.effect = blurEffect
        setupBlurView()
        
        blurView.contentView.addSubview(emailNameButton)
        blurView.contentView.addSubview(passwordNameButton)
        blurView.contentView.addSubview(loginButton)
        setupEmailButton()
        setupPasswordButton()
        setupLoginButton()

        
    }
    
    //настроки блюра
    fileprivate func setupBlurView() {
        blurView.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
        blurView.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
        blurView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        blurView.widthAnchor.constraint(equalToConstant: 400).isActive = true
    }

    //разместили картинку на весь экран
    fileprivate func  setupImageView() {
        view.addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    //разместили кнопку setupEmailButton
    fileprivate func setupEmailButton() {
        emailNameButton.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
        emailNameButton.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
        emailNameButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        emailNameButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
    }
    
    //разместили кнопку setupPasswordButton
    fileprivate func setupPasswordButton() {
        passwordNameButton.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
        passwordNameButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        passwordNameButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
    }
    
    //разместили кнопку setupLoginButton
    fileprivate func setupLoginButton() {
        loginButton.centerXAnchor.constraint(equalTo: blurView.centerXAnchor).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: blurView.bottomAnchor).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
       
    }
}
