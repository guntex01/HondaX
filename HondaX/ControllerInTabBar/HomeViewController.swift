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
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    let topCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        layout.scrollDirection = .horizontal
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        collectionView.register(TopCollectionViewCell.self, forCellWithReuseIdentifier: "topCell")
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.bounces = false
        return collectionView
    }()
    let bottomCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        layout.scrollDirection = .vertical
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        collectionView.register(NewsCollectionViewCell.self, forCellWithReuseIdentifier: "bottomCell")
        collectionView.register(SectionCollectionViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "sectionCell")
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.bounces = false
        return collectionView
    }()
    var hondas = [Honda]()
    var datas = NewsData()
    override func viewDidLoad() {
        super.viewDidLoad()
        topCollectionView.delegate = self
        topCollectionView.dataSource = self
        bottomCollectionView.delegate = self
        bottomCollectionView.dataSource = self
        hondaImage()
        setupLayout()
    }
    func setupLayout(){
        view.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 90).isActive = true
        containerView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        containerView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -85).isActive = true
        
        containerView.addSubview(topCollectionView)
        containerView.addSubview(bottomCollectionView)
        topCollectionView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0).isActive = true
        topCollectionView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 0).isActive = true
        topCollectionView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 0).isActive = true
        topCollectionView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        bottomCollectionView.topAnchor.constraint(equalTo: topCollectionView.bottomAnchor, constant: 30).isActive = true
        bottomCollectionView.leftAnchor.constraint(equalTo:containerView.leftAnchor , constant: 10).isActive = true
        bottomCollectionView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 0).isActive = true
        bottomCollectionView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0).isActive = true
        
        
    }
    func hondaImage(){
        let k1 = Honda(imageName: "tt1", textLB: "HONDA VIETNAM LAUNCHES PROMOTION PROGRAM 'BUY HR-V, RECEIVE A GIFT RIGHT'")
        let k2 = Honda(imageName: "tt2", textLB: "Honda Vietnam participated in Vietnam Motor Show 2018 with the theme 'Challenge and Passion'")
        let k3 = Honda(imageName: "tt3", textLB: "Honda Vietnam officially launches and announces the proposed retail price of Honda Civic 2019")
        
        hondas = [k1, k2, k3]
    }
    
    
}
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        if collectionView == bottomCollectionView {
            return datas.count
        }else{
            return hondas.count
        }
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == bottomCollectionView{
            return 3
        }else{
            return hondas.count
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == bottomCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bottomCell", for: indexPath) as! NewsCollectionViewCell
            cell.km = datas[indexPath.section].NewsImages[indexPath.item]
            cell.onPress = { [weak self] in
                guard let strongSelf = self else { return }
                
                strongSelf.bottomCollectionView.reloadData()
            }
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "topCell", for: indexPath) as! TopCollectionViewCell
            cell.image = hondas[indexPath.row]
            return cell
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // tính kích thước size một cạnh của item
        if collectionView == bottomCollectionView {
            let size = ((collectionView.frame.size.width/2))
            return CGSize(width: size, height: 50)
        }else{
            let size = ((collectionView.frame.size.height) )
            return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == bottomCollectionView {
        return 100
        }else{
        return 0
    }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == bottomCollectionView {
        return 0
        }else{
        return 0
    }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        if collectionView == bottomCollectionView {
        return CGSize(width:collectionView.frame.size.width, height: 50)
        }else{
        return CGSize(width:0, height:0)
        }
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if collectionView == bottomCollectionView {
        let reusableview = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "sectionCell", for: indexPath) as! SectionCollectionViewCell
        reusableview.textLabel.text = datas[indexPath.section].sectionNews
        return reusableview
        }else{
       let reusableview = collectionView.dequeueReusableCell(withReuseIdentifier: "topCell", for: indexPath) as! TopCollectionViewCell
            return reusableview
        }
    }
}



