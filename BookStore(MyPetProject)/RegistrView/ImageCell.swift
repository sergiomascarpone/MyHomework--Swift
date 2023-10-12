//
//  ImageCell.swift
//  BookStore(MyPetProject)
//
//  Created by Sergio Mascarpone on 12.07.23.
//

import UIKit

class ImageCell: UITableViewCell {
    
    
    var videoImageView  = UIImageView()
    var videoTitleLabel = UILabel()
    var videoNameLabel  = UILabel()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(videoImageView)
        addSubview(videoTitleLabel)
        addSubview(videoNameLabel)

        
        configureImageView()
        configureTitleLabel()
        configureNameLabel()
        setImageConstraints()
        setTitleLabelConstraints()
        setNameLabelConstraints()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func set(video: Image) {
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
        videoNameLabel.text  = video.name
    }
    
    
    func configureImageView() {
        videoImageView.layer.cornerRadius = 10
        videoImageView.clipsToBounds      = true
    }
    
    
    func configureTitleLabel() {
        videoTitleLabel.numberOfLines             = 0
        videoTitleLabel.adjustsFontSizeToFitWidth = true
        
    }
    
    func configureNameLabel() {
        videoNameLabel.numberOfLines             = 0
        videoNameLabel.adjustsFontSizeToFitWidth = true
        
    }
    
    //настройка и размещение Image в таблице.
    func setImageConstraints() {
        videoImageView.translatesAutoresizingMaskIntoConstraints                                                = false
        videoImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive                                = true
        videoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive                  = true
        videoImageView.heightAnchor.constraint(equalToConstant: 80).isActive                                    = true
        videoImageView.widthAnchor.constraint(equalTo: videoImageView.heightAnchor, multiplier: 16/16).isActive  = true
    }

    //настройка и размещение Title в таблице.
    func setTitleLabelConstraints() {
        videoTitleLabel.translatesAutoresizingMaskIntoConstraints                                               = false
        videoTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -20).isActive                = true
        videoTitleLabel.leadingAnchor.constraint(equalTo: videoImageView.trailingAnchor, constant: 20).isActive = true
        videoTitleLabel.heightAnchor.constraint(equalToConstant: 80).isActive                                   = true
        videoTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive              = true
    }
    
    //настройка и размещение Name в таблице.
    func setNameLabelConstraints() {
        videoNameLabel.translatesAutoresizingMaskIntoConstraints                                                = false
        videoNameLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 30).isActive                  = true
        videoNameLabel.leadingAnchor.constraint(equalTo: videoImageView.trailingAnchor, constant: 20).isActive  = true
        videoNameLabel.heightAnchor.constraint(equalToConstant: 80).isActive                                    = true
        videoNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive               = true
    }
}
