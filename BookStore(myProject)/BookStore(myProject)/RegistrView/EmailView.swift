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
    
//    /// Создание и размещение Label
//    let titleLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Book store"
//        label.textColor = .white
//        label.font = UIFont(name: "AmericanTypewriter", size: 40)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    
    //создали imageView
    let imageView: UIView = {
        let imageView = UIView()
        imageView.backgroundColor = .cyan
        return imageView
    }()
    
//    private var emailNameButtonContraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setup emailTextField
        let emailTextField = UITextField(frame: CGRect(x: 0, y: 50, width: self.view.frame.width - 70, height: 50))
        emailTextField.placeholder = " Enter email..."
        
        emailTextField.center = self.view.center
        emailTextField.resignFirstResponder()
        emailTextField.textColor = .black
        emailTextField.backgroundColor = .cyan
        emailTextField.layer.cornerRadius = 10
        emailTextField.font = .boldSystemFont(ofSize: 20)
        self.view.addSubview(emailTextField)
        
        
        setupImageView()

    }
    
    //разместили картинку на весь экран
    fileprivate func  setupImageView() {

        view.addSubview(imageView)
        imageView.backgroundColor = .cyan

        view.addSubview(imageView)

    }
   
}
//extension EmailView {
//
//
//    func setConstraints() {
//
//
//        NSLayoutConstraint.activate([
//
//            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
//            titleLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
//            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
//            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)
//
//        ])
//    }
//
//}
