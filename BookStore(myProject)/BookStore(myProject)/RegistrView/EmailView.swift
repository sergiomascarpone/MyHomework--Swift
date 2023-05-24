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
    }()
    
    
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

        
    }

}
