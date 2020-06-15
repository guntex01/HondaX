//
//  ProductViewController.swift
//  THLayout
//
//  Created by guntex01 on 6/10/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    let topCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        layout.scrollDirection = .horizontal
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .red
        collectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: "topCell")
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.bounces = false
        return collectionView
    }()
    let centerCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        layout.scrollDirection = .vertical
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        collectionView.register(CenterCollectionViewCell.self, forCellWithReuseIdentifier: "centerCell")
        collectionView.register(SectionCollectionViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "sectionCell")
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
        collectionView.register(BottomCollectionViewCell.self, forCellWithReuseIdentifier: "bottomCell")
        collectionView.register(SectionCollectionViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "sectionCell")
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.bounces = false
        
        return collectionView
    }()
    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        return pageControl
    }()
    var images = [ImageHonda]()
    
    var timer :Timer!
    var datas = fakeData()
    var datas1 = fakeData1()
    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
       imageHonda()
        topCollectionView.delegate = self
        topCollectionView.dataSource = self
        centerCollectionView.delegate = self
        centerCollectionView.dataSource = self
        bottomCollectionView.delegate = self
        bottomCollectionView.dataSource = self
        
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(moveToNextPage), userInfo: nil, repeats: true)
        
        
    }
    func abc(){
    
    }
    @objc func moveToNextPage(){
        if self.topCollectionView.contentOffset.x < (self.topCollectionView.contentSize.width - (self.view.frame.width)){
            self.topCollectionView.contentOffset.x += self.view.bounds.width
        }
    }
    func setupLayout(){
        view.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 90).isActive = true
        containerView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        containerView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -85).isActive = true
        
        containerView.addSubview(topCollectionView)
        containerView.addSubview(centerCollectionView)
        containerView.addSubview(bottomCollectionView)
        topCollectionView.topAnchor.constraint(equalTo: self.containerView.topAnchor, constant: 0).isActive = true
        topCollectionView.leftAnchor.constraint(equalTo: self.containerView.leftAnchor, constant: 0).isActive = true
        topCollectionView.rightAnchor.constraint(equalTo: self.containerView.rightAnchor, constant: 0).isActive = true
        topCollectionView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        centerCollectionView.topAnchor.constraint(equalTo: topCollectionView.bottomAnchor, constant: 10).isActive = true
        centerCollectionView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 10).isActive = true
        centerCollectionView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 0).isActive = true
        centerCollectionView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        bottomCollectionView.topAnchor.constraint(equalTo: centerCollectionView.bottomAnchor, constant: 10).isActive = true
        bottomCollectionView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 10).isActive = true
        bottomCollectionView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 0).isActive = true
        bottomCollectionView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0).isActive = true
    }
    func imageHonda(){
        let a1 = ImageHonda(imageName: "adv")
        let a2 = ImageHonda(imageName: "kmhe")
        let a3 = ImageHonda(imageName: "brio")
        let a4 = ImageHonda(imageName: "city")
        let a5 = ImageHonda(imageName: "civic")
        let a6 = ImageHonda(imageName: "kmhonda")
        let a7 = ImageHonda(imageName: "kmoto")
        let a8 = ImageHonda(imageName: "Lead")
        let a9 = ImageHonda(imageName: "sh")
        let a10 = ImageHonda(imageName: "vario150")
        
        
        images = [a1, a2, a3, a4, a5, a6, a7, a8,a9, a10]
        
    }
}

extension ProductViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    // hàm trả về số section
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        if collectionView == centerCollectionView {
            return datas.count
        }else if collectionView == bottomCollectionView {
            return datas1.count
        }else{
            return images.count
        }
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == centerCollectionView  {
            return datas[section].motoImages.count
        }else if collectionView == bottomCollectionView {
            return datas1[section].otoImages.count
        }else{
            return images.count
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == centerCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "centerCell", for: indexPath) as! CenterCollectionViewCell
            cell.gallery = datas[indexPath.section].motoImages[indexPath.item]
            cell.onPress = { [weak self] in
                guard let strongSelf = self else { return }
                
                strongSelf.centerCollectionView.reloadData()
            }
            return cell
        }else if collectionView == bottomCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bottomCell", for: indexPath) as! BottomCollectionViewCell
            cell.ot = datas1[indexPath.section].otoImages[indexPath.item]
            cell.onPress = { [weak self] in
                guard let strongSelf = self else { return }
                
                strongSelf.bottomCollectionView.reloadData()
            }
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "topCell", for: indexPath) as! MyCollectionViewCell
            cell.image = images[indexPath.row]
            return cell
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // tính kích thước size một cạnh của item
        if collectionView == centerCollectionView {
            let size = collectionView.bounds.width/4
            return CGSize(width: size, height: size)
        }else if collectionView == bottomCollectionView {
            let size = ((collectionView.frame.size.width/4))
            return CGSize(width: size, height: size)
        }else{
            let size = ((collectionView.frame.size.height) )
            return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
        }
    }
    //khoảng cách giữa hai dòng
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == centerCollectionView {
            return 10
        }else if collectionView == bottomCollectionView{
            return 10
        }else{
            return 0
        }
    }
    //khoảng cách giưã hai cột
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == centerCollectionView {
            return 0
        }else if collectionView == bottomCollectionView {
            return 0
        }else{
            return 0
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        if collectionView == centerCollectionView {
        return CGSize(width:collectionView.frame.size.width, height: 50)
        }else if collectionView == bottomCollectionView {
        return CGSize(width:collectionView.frame.size.width, height: 50)
        }else{
        return CGSize(width:0, height:0)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if collectionView == centerCollectionView {
        let reusableview = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "sectionCell", for: indexPath) as! SectionCollectionViewCell
        reusableview.textLabel.text = datas[indexPath.section].sectionXemay
        return reusableview
        }else if collectionView == bottomCollectionView {
            let reusableview = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "sectionCell", for: indexPath) as! SectionCollectionViewCell
            reusableview.textLabel.text = datas1[indexPath.section].sectionOto
        return reusableview
        }else{
       let reusableview = collectionView.dequeueReusableCell(withReuseIdentifier: "topCell", for: indexPath) as! MyCollectionViewCell
            return reusableview
        }
    }
    
}

