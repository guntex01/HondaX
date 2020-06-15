//
//  HomeViewController.swift
//  THLayout
//
//  Created by guntex01 on 6/10/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    let containerView: UIView = {
           let view = UIView()
           view.backgroundColor = .red
           return view
       }()
    let topCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        layout.scrollDirection = .horizontal
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .yellow
        collectionView.register(TopCollectionViewCell.self, forCellWithReuseIdentifier: "topCell")
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.bounces = false
        return collectionView
    }()
    var hondas = [Honda]()
    override func viewDidLoad() {
        super.viewDidLoad()
        topCollectionView.delegate = self
        topCollectionView.dataSource = self
        
        view.backgroundColor = UIColor.green
       }
    func setupLayout(){
        view.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 90).isActive = true
        containerView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        containerView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -85).isActive = true
        
        containerView.addSubview(topCollectionView)
        topCollectionView.topAnchor.constraint(equalTo: self.containerView.topAnchor, constant: 0).isActive = true
        topCollectionView.leftAnchor.constraint(equalTo: self.containerView.leftAnchor, constant: 0).isActive = true
        topCollectionView.rightAnchor.constraint(equalTo: self.containerView.rightAnchor, constant: 0).isActive = true
        topCollectionView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
    
    }
    func hondaImage(){
        let k1 = Honda(imageName: "kmhe", text: "aglalghalglalglglahdklgsklgklshglseiheihgksklghdkjhsjd")
        let k2 = Honda(imageName: "kmhe", text: "jghwhogioweiorjgoijwriojgiowjiogjiowjioetgjwiojtiojwiotj")
        let k3 = Honda(imageName: "kmhe", text: "adgadkghakjhgkshfkhhfkdhfjksdhjfkhsdjkfhjskhfkjshfjkshfjk")
        
        hondas = [k1, k2, k3]
    }
   

}
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return hondas.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "topCell", for: indexPath) as! TopCollectionViewCell
        cell.image = hondas[indexPath.row]
        return cell
    }
    


}
