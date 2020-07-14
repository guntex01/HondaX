//
//  CustomTableViewCell.swift
//  HondaX
//
//  Created by guntex01 on 6/19/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    let containerView: UIView = {
    let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
    
        return view
    }()
    let photoImage: UIImageView = {
    let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    let topLabel: UILabel = {
    let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let centerLabel: UILabel = {
    let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let bottomLabel: UILabel = {
    let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    func setupLayout(){
        addSubview(containerView)
        containerView.addSubview(photoImage)
        containerView.addSubview(topLabel)
        containerView.addSubview(centerLabel)
        containerView.addSubview(bottomLabel)
        
        containerView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        containerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        containerView.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        
        photoImage.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20).isActive = true
        photoImage.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20).isActive = true
        photoImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
        photoImage.heightAnchor.constraint(equalTo: photoImage.widthAnchor, multiplier: 1).isActive = true
        
        topLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20).isActive = true
        topLabel.leftAnchor.constraint(equalTo: photoImage.rightAnchor, constant: 20).isActive = true
        topLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -20).isActive = true
        
        centerLabel.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 10).isActive = true
        centerLabel.leftAnchor.constraint(equalTo: photoImage.rightAnchor, constant: 20).isActive = true
        centerLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -20).isActive = true
        
        bottomLabel.topAnchor.constraint(equalTo: centerLabel.bottomAnchor, constant: 10).isActive = true
        bottomLabel.leftAnchor.constraint(equalTo: photoImage.rightAnchor, constant: 20).isActive = true
        bottomLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -20).isActive = true
        bottomLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -20).isActive = true
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
