//
//  PersonalView.swift
//  TotalBill
//
//  Created by Sergio Mascarpone on 13.03.23.
//

import UIKit

class PersonalView: UIView {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Persons"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next", size: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let backGrayView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.5154660533, green: 0.9972262494, blue: 1, alpha: 1)
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var minusButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("-", for: .normal)
        button.tintColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        button.isEnabled = false
        button.titleLabel?.font = UIFont(name: "Avenir Next", size: 60)
        button.addTarget(self, action: #selector(minusButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var plusButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("+", for: .normal)
        button.tintColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        button.titleLabel?.font = UIFont(name: "Avenir Next", size: 60)
        button.addTarget(self, action: #selector(plusButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let counterLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont(name: "Avenir Next Bold", size: 45)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var counter = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(titleLabel)
        addSubview(backGrayView)
        backGrayView.addSubview(minusButton)
        backGrayView.addSubview(plusButton)
        backGrayView.addSubview(counterLabel)
        
    }
    
    @objc func minusButtonTapped() {
        
        counter -= 1
        counterLabel.text = "\(counter)"
        
        if counter == 0 {
            minusButton.isEnabled = false
        }
    }
    
    @objc func plusButtonTapped() {
        counter += 1
        counterLabel.text = "\(counter)"
        minusButton.isEnabled = true
    }
        
        func setConstraints() {
            NSLayoutConstraint.activate([
                titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
                titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
                
                backGrayView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
                backGrayView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
                backGrayView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
                backGrayView.heightAnchor.constraint(equalToConstant: 80),
                
                minusButton.topAnchor.constraint(equalTo: backGrayView.topAnchor, constant: 0),
                minusButton.leadingAnchor.constraint(equalTo: backGrayView.leadingAnchor, constant: 0),
                minusButton.heightAnchor.constraint(equalTo: backGrayView.heightAnchor),
                minusButton.widthAnchor.constraint(equalToConstant: 80),
                
                plusButton.topAnchor.constraint(equalTo: backGrayView.topAnchor, constant: 0),
                plusButton.trailingAnchor.constraint(equalTo: backGrayView.trailingAnchor, constant: 0),
                plusButton.heightAnchor.constraint(equalTo: backGrayView.heightAnchor),
                plusButton.widthAnchor.constraint(equalToConstant: 80),
                
                counterLabel.centerYAnchor.constraint(equalTo: backGrayView.centerYAnchor),
                counterLabel.leadingAnchor.constraint(equalTo: minusButton.trailingAnchor, constant: 10),
                counterLabel.trailingAnchor.constraint(equalTo: plusButton.leadingAnchor, constant: -10)
            ])
        }
    }
