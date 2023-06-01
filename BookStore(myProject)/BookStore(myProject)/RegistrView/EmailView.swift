////
////  EmailView.swift
////  BookStore(myProject)
////
////  Created by Sergio Mascarpone on 19.05.23.
////
//
import UIKit

class EmailView: UIViewController {
  
    //создали imageView
    let imageView: UIView = {
        let imageView = UIView()
        return imageView
        //kdkfjdsfdfsd
        
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setup emailTextField
        let emailTextField = UITextField(frame: CGRect(x: 0, y: 50, width: self.view.frame.width - 70, height: 50))
        emailTextField.placeholder = " Enter email..."
        
        emailTextField.center = self.view.center
        emailTextField.resignFirstResponder()
        emailTextField.textColor = .black
        emailTextField.backgroundColor = .lightGray
        emailTextField.layer.cornerRadius = 10
        emailTextField.font = .boldSystemFont(ofSize: 20)
        emailTextField.clearButtonMode = .always
        emailTextField.returnKeyType = .next
        self.view.addSubview(emailTextField)
        
//        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideKeyboard)))
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboarfWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
//
        
        setupImageView()

    }
    
//    @objc private func hideKeyboard() {
//        self.view.endEditing(true)
//    }
//    
//    @objc private func keyboarfWillShow(notification: NSNotification) {
//        
//    }
//    
//    @objc private func keyboardWillHide() {
//        
//    }
    
    //разместили картинку на весь экран
    fileprivate func  setupImageView() {

        view.addSubview(imageView)
    }
    
}
