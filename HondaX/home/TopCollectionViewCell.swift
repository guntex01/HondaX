//
//  TopCollectionViewCell.swift
//  HondaX
//
//  Created by guntex01 on 6/15/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit

class TopCollectionViewCell: UICollectionViewCell {
     // khởi tạo containerView
        let containerView: UIView = {
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.backgroundColor = UIColor.clear
            return view
        }()
        
        // khởi tạo imageView
        let photoImageView: UIImageView = {
            let imageView = UIImageView()
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.image = UIImage(named: "")
            return imageView
        }()
    let textLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.borderWidth = 1
        label.layer.borderColor = UIColor.red.cgColor
        label.layer.backgroundColor = UIColor.red.cgColor
        label.layer.cornerRadius = 10
        label.text = ""
        label.numberOfLines = 0
        label.textColor = UIColor.white
        label.textAlignment = .left
        label.font = UIFont(name: "Arial", size: 16)
        return label
    }()
        func setupLayout(){
        addSubview(containerView)
        containerView.addSubview(photoImageView)
        containerView.addSubview(textLabel)
            
        containerView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        containerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        containerView.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        
        photoImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0).isActive = true
        photoImageView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20).isActive = true
        photoImageView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -20).isActive = true
        photoImageView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -30).isActive = true
             
        textLabel.topAnchor.constraint(equalTo: photoImageView.bottomAnchor, constant:-30).isActive = true
        textLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 30).isActive = true
        textLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -30).isActive = true
            textLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
            
    }
    var image: Honda?{
                didSet{
                    if let home = image {
                        photoImageView.image = UIImage(named: home.imageName)
                        textLabel.text = home.textLB
                    }
                }
            }
            
            // khởi tạo cell
            override init(frame: CGRect) {
                super.init(frame: frame)

                setupLayout()
            }

            required init?(coder aDecoder: NSCoder) {
                fatalError("init(coder:) has not been implemented")
            }
    }
