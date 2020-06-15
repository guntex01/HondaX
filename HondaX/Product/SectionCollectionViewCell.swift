//
//  SectionCollectionViewCell.swift
//  HondaX
//
//  Created by guntex01 on 6/12/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit

class SectionCollectionViewCell: UICollectionViewCell {
     let containerView: UIView = {
               let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
               return view
           }()
        let textLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        func setupLayout(){
            addSubview(containerView)
            containerView.addSubview(textLabel)
            
            containerView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
            containerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
            containerView.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
            
            textLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0).isActive = true
            textLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 0).isActive = true
            textLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 0).isActive = true
            textLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0).isActive = true
        }
        override init(frame: CGRect) {
            super.init(frame: frame)
            
            setupLayout()
            
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
        

