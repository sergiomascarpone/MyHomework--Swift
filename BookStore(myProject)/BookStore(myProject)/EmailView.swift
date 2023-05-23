////
////  EmailView.swift
////  BookStore(myProject)
////
////  Created by Sergio Mascarpone on 19.05.23.
////
//
import UIKit

class EmailView: UIViewController {
//
//    var regView: UIImageView {
//        let regView = UIImageView()
//        regView.translatesAutoresizingMaskIntoConstraints = false
//        regView.contentMode = .scaleAspectFill
//        return regView
//    }
//
//    var emailTextField: UITextField {
//        let textField = UITextField()
//        textField.borderStyle = .roundedRect
//        textField.placeholder = "Enter email"
//        textField.backgroundColor = .black
//        textField.font = UIFont(name: "AmericanTypewriter", size: 40)
//        return textField
//    }
//
////    var passwordTextField: UITextField {
////        let textField1 = UITextField()
////        textField1.borderStyle = .roundedRect
////        textField1.placeholder = "Enter password"
////        textField1.backgroundColor = .black
////        return textField1
////    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setupRegView()
//        setupEmailTextField()
////        setupPasswordTextField()
//
//    }
//
//    func setupRegView() {
//        view.backgroundColor = .gray
//    }
//
//    func setupEmailTextField() {
//        view.addSubview(emailTextField)
//        print("lookoko")
//    }
//
//
////    func setupPasswordTextField() {
////        view.addSubview(passwordTestField)
////        print("okokolkl")
////    }
//}


//
//  registrationView.swift
//  BookStore(myProject)
//
//  Created by Sergio Mascarpone on 12.05.23.
//

//import UIKit
//
//class registrationView: UIViewController {
    
    //создали вью
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "viewLogo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    var emailTextField: UITextField {
        let textField = UITextField()
        textField.placeholder = "Enter email"
        return textField
    }
    
    private var emailNameButtonContraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //passwordNameButton
        
        setupImageView()
        setupTextField()

        

//        blurView.contentView.addSubview(passwordNameButton)
//        blurView.contentView.addSubview(loginButton)
//        setupPasswordButton()
//        setupLoginButton()
        
       // emailNameButtonContraint.constant -= view.bounds.width
    }

    //разместили картинку на весь экран
    fileprivate func  setupImageView() {
        view.addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    fileprivate func setupTextField() {
        view.addSubview(emailTextField)
        emailTextField.backgroundColor = .white
    }

}
