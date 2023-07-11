//
//  ViewController.swift
//  Lekcion6-View
//
//  Created by Sergio Mascarpone on 8.05.23.
//

import UIKit

class ViewController: UIViewController {
    
    let mySwitch2 = UISwitch()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button
        self.button.frame = CGRect(x: 100, y: 500, width: 200, height: 100)
        self.button.backgroundColor = UIColor.green
        self.button.setTitle("ok", for: .normal)
        self.button.setTitle("Кнопка нажата", for: .highlighted)
        
        self.view.addSubview(self.button)
       
        //Создали Лэйбл
        let labelRect = CGRect(x: 100, y: 50, width: 1000, height: 200)
        let label = UILabel(frame:labelRect)
        label.text = "Book Store"
        label.font = UIFont(name: label.font.fontName, size: 40)
        label.textColor = .black
        view.addSubview(label)
        
        class userButton: UIButton {
            var color: UIColor = .black
            let touchDownAlpha: CGFloat = 0.3
            
            func setup() {
                backgroundColor = .clear
                layer.backgroundColor = color.cgColor
                
                layer.cornerRadius = 6
                clipsToBounds = true
            }
        }
        self.mySwitch2.frame = CGRect.zero
        
        self.mySwitch2.center = self.view.center
        self.view.addSubview(self.mySwitch2)
        
        //off
        self.mySwitch2.tintColor = UIColor.green
        
        //Рычаг
        self.mySwitch2.thumbTintColor = UIColor.blue
        
        //on
        self.mySwitch2.onTintColor = UIColor.lightGray
        
        self.mySwitch2.addTarget(self, action: #selector(isOn(target:)), for: .valueChanged)
    }
    
    @objc func isOn(target: UISwitch) {
        if target.isOn {
            self.button.isUserInteractionEnabled = false
        } else {
            self.button.isUserInteractionEnabled = true
        }
    }
}

