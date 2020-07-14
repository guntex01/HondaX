//
//  NewsCollectionViewCell.swift
//  HondaX
//
//  Created by guntex01 on 6/15/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit

class NewsCollectionViewCell: UICollectionViewCell {
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
               imageView.backgroundColor = .white
               return imageView
           }()
           let textLabel: UILabel = {
               let label = UILabel()
               label.translatesAutoresizingMaskIntoConstraints = false
               label.text = ""
               label.textColor = .black
               label.textAlignment = .left
               label.numberOfLines = 0
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
               
               photoImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10).isActive = true
               photoImageView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 10).isActive = true
               photoImageView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -10).isActive = true
               photoImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
               
               textLabel.topAnchor.constraint(equalTo: photoImageView.bottomAnchor, constant: 5).isActive = true
               textLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 10).isActive = true
               textLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -10).isActive = true
           }
           var onPress: (() -> Void)?
              var isLongPress: Bool = false
             var km: News? {
                  didSet {
                      if let promotion = km {
                          photoImageView.image = promotion.image
                          isLongPress = promotion.isSelect
                          textLabel.text = promotion.text
                          if isLongPress {
                              photoImageView.transform = CGAffineTransform.init(scaleX: 0.8, y: 0.8)
                              
                          }
                      }
                  }
              }
             override func awakeFromNib() {
                      super.awakeFromNib()
                      let longGesture = UILongPressGestureRecognizer(target: self, action: #selector(onLong))
                      photoImageView.isUserInteractionEnabled = true
                      photoImageView.addGestureRecognizer(longGesture)
                  }
                  override init(frame: CGRect) {
                      super.init(frame: frame)
                      
                      setupLayout()
                      
                  }
                  
                  required init?(coder: NSCoder) {
                      fatalError("init(coder:) has not been implemented")
                  }
                  
                  @objc func onLong(){
                      print("a")
                      onPress?()
                  }
}
