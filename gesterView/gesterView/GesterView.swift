//
//  GesterView.swift
//  gesterView
//
//  Created by Sergio Mascarpone on 31.05.23.
//

import UIKit

//обьявление протокола
protocol GestureDelegate: class {
    func didTap(_ view: GesterView)
}

class GesterView: UIView {
    
   weak var delegate: GestureDelegate?
    
   @objc
   func didTap() {
       delegate?.didTap(self)
    }
}
