//
//  ImageCell.swift
//  BookStore(myProject)
//
//  Created by Sergio Mascarpone on 27.06.23.
//

import UIKit

class ImageCell: UITableViewCell {
    
    var videoImageView  = UIImageView()
    var imageTitleLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(videoImageView)
        addSubview(imageTitleLabel)
        
        configureImageView()
        configureTitleLable()
        setImageConstraints()
        setTitleLabelConstraints()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configureImageView() {
        videoImageView.layer.cornerRadius = 10
        videoImageView.clipsToBounds      = true
    }
    
    
    func configureTitleLable() {
        imageTitleLabel.numberOfLines             = 0
        imageTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    
    func setImageConstraints() {
        videoImageView.translatesAutoresizingMaskIntoConstraints                                               = false
        videoImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive                               = true
        videoImageView.leadingAnchor.constraint(equalTo: leftAnchor, constant: 12).isActive                    = true
        videoImageView.heightAnchor.constraint(equalToConstant: 80).isActive                                   = true
        videoImageView.widthAnchor.constraint(equalTo: videoImageView.heightAnchor, multiplier: 16/9).isActive = true
    }
    
    func setTitleLabelConstraints() {
        imageTitleLabel.translatesAutoresizingMaskIntoConstraints                                               = false
        imageTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive                               = true
        imageTitleLabel.leadingAnchor.constraint(equalTo: videoImageView.trailingAnchor, constant: 20).isActive = true
        imageTitleLabel.heightAnchor.constraint(equalToConstant: 80).isActive                                   = true
        imageTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive              = true
    }
}
