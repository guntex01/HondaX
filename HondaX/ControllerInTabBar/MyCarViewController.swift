//
//  MyCarViewController.swift
//  THLayout
//
//  Created by guntex01 on 6/10/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit

class MyCarViewController: UIViewController {
    let containerView: UIView = {
           let view = UIView()
           view.translatesAutoresizingMaskIntoConstraints = false
           view.backgroundColor = .clear
           return view
       }()
    let scrollView: UIScrollView = {
    let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .clear
        return scrollView
    }()
    
    // view1
    let view1: UIView = {
    let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
    return view
    }()
    let photoImage: UIImageView = {
    let image = UIImageView()
        image.image = UIImage(named: "iconmoto")
        image.backgroundColor = .white
        image.layer.cornerRadius = image.bounds.height/2
        image.layer.masksToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    let label36: UILabel = {
    let label = UILabel()
        label.text = "36B7-13713"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let labelJF: UILabel = {
    let label = UILabel()
        label.text = "JF791 LEAD"
        label.font = UIFont(name: "Arial", size: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let labelLead: UILabel = {
    let label = UILabel()
        label.text = "Mẫu xe: LEAD"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let labelScooter: UILabel = {
    let label = UILabel()
        label.text = "Loại xe: SCOOTER"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let labelColor: UILabel = {
    let label = UILabel()
        label.text = "Màu sắc: VÀNG NÂU BẠC"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let label125cc: UILabel = {
    let label = UILabel()
        label.text = "Dung tích xy-lanh: 125cc"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let labelBh: UILabel = {
    let label = UILabel()
        label.text = "Thông tin bảo hành: 14/05/2019 - 14/05/2022"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let CSButton: UIButton = {
        let button = UIButton()
        button.setTitle("Chính sách bảo hành", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var stackView = UIStackView()
    
    // view2
    let view2: UIView = {
    let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(red: 0.36, green: 0.84, blue: 0.71, alpha: 1.00).cgColor
        view.layer.cornerRadius = 10
    return view
    }()
    let TTLabel: UILabel = {
        let label = UILabel()
        label.text = "Thông tin kiểm tra định kỳ (PI)"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let l1: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lần 1"
        label.textAlignment = .center
        label.backgroundColor = UIColor(red: 0.00, green: 0.60, blue: 0.44, alpha: 1.00)
        return label
    }()
    let l2: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lần 2"
        label.textAlignment = .center
        label.backgroundColor = UIColor(red: 0.00, green: 0.40, blue: 0.29, alpha: 1.00)
        return label
    }()
    let l3: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lần 3"
        label.textAlignment = .center
        label.backgroundColor = UIColor(red: 0.00, green: 0.40, blue: 0.29, alpha: 1.00)
        return label
    }()
    let l4: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lần 4"
        label.textAlignment = .center
        label.backgroundColor = .orange
        return label
    }()
    let l5: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lần 5"
        label.textAlignment = .center
        label.backgroundColor = UIColor(red: 0.20, green: 1.00, blue: 0.79, alpha: 1.00)
        return label
    }()
    let l6: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lần 6"
        label.textAlignment = .center
        label.backgroundColor = UIColor(red: 0.20, green: 1.00, blue: 0.79, alpha: 1.00)
        return label
    }()
    let aView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .orange
        return view
    }()
    let bView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.00, green: 0.40, blue: 0.29, alpha: 1.00)
        return view
    }()
    let cView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .orange
        return view
    }()
    let dh: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Đúng hạn"
        return label
    }()
    let qh: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Quá hạn"
        return label
    }()
    let lkt: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lần kế tiếp"
        return label
    }()
    let laneView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.36, green: 0.84, blue: 0.71, alpha: 1.00)
        return view
    }()
    let dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Ngày hết hạn lần KTĐK tiếp theo (Lần 4: 14/11/2020)"
        label.numberOfLines = 0
        return label
    }()
     var stackView1 = UIStackView()
    
    //view3
    let view3: UIView = {
    let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(red: 0.36, green: 0.84, blue: 0.71, alpha: 1.00).cgColor
        view.layer.cornerRadius = 10
    return view
    }()
    let TTBHLabel: UILabel = {
    let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Thông tin bảo hiểm xe"
        label.textAlignment = .center
        return label
    }()
    let shieldImage: UIImageView = {
    let image = UIImageView()
        image.image = UIImage(named: "shield")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    let volumeImage: UIImageView = {
    let image = UIImageView()
        image.image = UIImage(named: "volume")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    let datetimeImage: UIImageView = {
    let image = UIImageView()
        image.image = UIImage(named: "datetime")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    let insurranceLabel: UILabel = {
    let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Bảo hiểm bắt buộc"
        return label
    }()
    let datetimeLabel: UILabel = {
    let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "08/06/2021"
        label.textAlignment = .right
        label.font = UIFont(name: "Arial", size: 14)
        label.textColor = UIColor(red: 0.36, green: 0.84, blue: 0.71, alpha: 1.00)
        return label
    }()
    let volumeLabel: UILabel = {
    let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "3 ngày"
        label.textAlignment = .right
        label.font = UIFont(name: "Arial", size: 14)
        label.textColor = UIColor(red: 0.36, green: 0.84, blue: 0.71, alpha: 1.00)
        return label
    }()
    let laneView1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.36, green: 0.84, blue: 0.71, alpha: 1.00)
        return view
    }()
    let newButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Tạo mới", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .red
        button.layer.cornerRadius = 15
        return button
    }()
    let updateButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Cập nhật", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .red
        button.layer.cornerRadius = 15
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutView3()
        autoLayoutStackView1()
        layoutView2()
        stackView1 = UIStackView()
        stackView = UIStackView()
        autoLayoutStackView()
        layoutView1()
        setupLayout()

    }
//    override func viewDidLayoutSubviews() {
//           photoImage.layer.cornerRadius = photoImage.bounds.height/2
//           photoImage.layer.masksToBounds = true
//           photoImage.layer.borderWidth = 1
//           photoImage.layer.borderColor = UIColor.white.cgColor
//    }
    func autoLayoutStackView(){
        
        stackView.addArrangedSubview(labelLead)
        stackView.addArrangedSubview(label125cc)
        stackView.addArrangedSubview(labelColor)
        stackView.addArrangedSubview(labelScooter)
        stackView.addArrangedSubview(labelBh)
        labelBh.numberOfLines = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 0
    }
    func autoLayoutStackView1() {
    stackView1.addArrangedSubview(l1)
    stackView1.addArrangedSubview(l2)
    stackView1.addArrangedSubview(l3)
    stackView1.addArrangedSubview(l4)
    stackView1.addArrangedSubview(l5)
        stackView1.addArrangedSubview(l6)
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        stackView1.axis = .horizontal
        stackView1.distribution = .fillEqually
        stackView1.spacing = 1
    
    }
    func setupLayout(){
        view.addSubview(scrollView)
        
        scrollView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 90).isActive = true
        scrollView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        scrollView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -85).isActive = true
        
        scrollView.addSubview(containerView)
        containerView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0).isActive = true
        containerView.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 0).isActive = true
        containerView.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: 1200).isActive = true
        containerView.widthAnchor.constraint(equalToConstant: 414).isActive = true
       
        containerView.addSubview(view1)
        view1.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 30).isActive = true
        view1.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20).isActive = true
        view1.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -20).isActive = true
        view1.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        containerView.addSubview(view2)
        view2.topAnchor.constraint(equalTo: view1.bottomAnchor, constant: 20).isActive = true
        view2.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20).isActive = true
        view2.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -20).isActive = true
        view2.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        containerView.addSubview(view3)
        view3.topAnchor.constraint(equalTo: view2.bottomAnchor, constant: 20).isActive = true
        view3.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20).isActive = true
        view3.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -20).isActive = true
        view3.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    func layoutView1(){
        view1.addSubview(photoImage)
        view1.addSubview(label36)
        view1.addSubview(labelJF)
        view1.addSubview(stackView)
        view1.addSubview(CSButton)
        
        photoImage.topAnchor.constraint(equalTo: view1.topAnchor, constant: 50).isActive = true
        photoImage.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: 20).isActive = true
        photoImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        photoImage.heightAnchor.constraint(equalTo: photoImage.widthAnchor, multiplier: 1).isActive = true
        
        label36.topAnchor.constraint(equalTo: photoImage.bottomAnchor, constant: 20).isActive = true
        label36.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: 20).isActive = true
        label36.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        labelJF.topAnchor.constraint(equalTo: view1.topAnchor, constant: 20).isActive = true
        labelJF.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: 140).isActive = true
        labelJF.rightAnchor.constraint(equalTo: view1.rightAnchor, constant: -20).isActive = true
        
        stackView.topAnchor.constraint(equalTo: labelJF.bottomAnchor, constant: 10).isActive = true
        stackView.rightAnchor.constraint(equalTo: view1.rightAnchor, constant: -20).isActive = true
        stackView.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: 140).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 130).isActive = true
        
        CSButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 0).isActive = true
        CSButton.leftAnchor.constraint(equalTo: view1.leftAnchor, constant: 100).isActive = true
        CSButton.rightAnchor.constraint(equalTo: view1.rightAnchor, constant: -20).isActive = true
        CSButton.bottomAnchor.constraint(equalTo: view1.bottomAnchor, constant: -30).isActive = true
    }
    func layoutView2(){
        view2.addSubview(TTLabel)
        view2.addSubview(stackView1)
        view2.addSubview(aView)
        view2.addSubview(dh)
        view2.addSubview(bView)
        view2.addSubview(qh)
        view2.addSubview(cView)
        view2.addSubview(lkt)
        view2.addSubview(laneView)
        view2.addSubview(dateLabel)
        
        
        TTLabel.topAnchor.constraint(equalTo: view2.topAnchor, constant: 20).isActive = true
        TTLabel.leftAnchor.constraint(equalTo: view2.leftAnchor, constant: 20).isActive = true
        TTLabel.rightAnchor.constraint(equalTo: view2.rightAnchor, constant: -20).isActive = true
    
        stackView1.topAnchor.constraint(equalTo: TTLabel.bottomAnchor, constant: 20).isActive = true
        stackView1.leftAnchor.constraint(equalTo: view2.leftAnchor, constant: 20).isActive = true
        stackView1.rightAnchor.constraint(equalTo: view2.rightAnchor, constant: -20).isActive = true
        stackView1.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        aView.topAnchor.constraint(equalTo: stackView1.bottomAnchor, constant: 10).isActive = true
        aView.leftAnchor.constraint(equalTo: view2.leftAnchor, constant: 30).isActive = true
        aView.widthAnchor.constraint(equalToConstant: 10).isActive = true
        aView.heightAnchor.constraint(equalTo: aView.widthAnchor, multiplier: 1).isActive = true
        
        dh.topAnchor.constraint(equalTo: stackView1.bottomAnchor, constant: 10).isActive = true
        dh.leftAnchor.constraint(equalTo: aView.rightAnchor, constant: 5).isActive = true
        dh.heightAnchor.constraint(equalToConstant: 10).isActive = true
        
        bView.topAnchor.constraint(equalTo: stackView1.bottomAnchor, constant: 10).isActive = true
        bView.leftAnchor.constraint(equalTo: dh.rightAnchor, constant: 20).isActive = true
        bView.widthAnchor.constraint(equalToConstant: 10).isActive = true
        bView.heightAnchor.constraint(equalTo: bView.widthAnchor, multiplier: 1).isActive = true
        
        qh.topAnchor.constraint(equalTo: stackView1.bottomAnchor, constant: 10).isActive = true
        qh.leftAnchor.constraint(equalTo: bView.rightAnchor, constant: 5).isActive = true
        qh.heightAnchor.constraint(equalToConstant: 10).isActive = true
        
        cView.topAnchor.constraint(equalTo: stackView1.bottomAnchor, constant: 10).isActive = true
        cView.leftAnchor.constraint(equalTo: qh.rightAnchor, constant: 20).isActive = true
        cView.widthAnchor.constraint(equalToConstant: 10).isActive = true
        cView.heightAnchor.constraint(equalTo: cView.widthAnchor, multiplier: 1).isActive = true
        
        lkt.topAnchor.constraint(equalTo: stackView1.bottomAnchor, constant: 10).isActive = true
        lkt.leftAnchor.constraint(equalTo: cView.rightAnchor, constant: 5).isActive = true
        lkt.heightAnchor.constraint(equalToConstant: 10).isActive = true
        
        laneView.topAnchor.constraint(equalTo: qh.bottomAnchor, constant: 20).isActive = true
        laneView.leftAnchor.constraint(equalTo: view2.leftAnchor, constant: 20).isActive = true
        laneView.rightAnchor.constraint(equalTo: view2.rightAnchor, constant: -20).isActive = true
        laneView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        dateLabel.topAnchor.constraint(equalTo: laneView.bottomAnchor, constant: 10).isActive = true
        dateLabel.leftAnchor.constraint(equalTo: view2.leftAnchor, constant: 20).isActive = true
        dateLabel.rightAnchor.constraint(equalTo: view2.rightAnchor, constant: -20).isActive = true
        dateLabel.bottomAnchor.constraint(equalTo: view2.bottomAnchor, constant: -10).isActive = true
    }
    func layoutView3(){
        view3.addSubview(TTBHLabel)
        view3.addSubview(shieldImage)
        view3.addSubview(insurranceLabel)
        view3.addSubview(datetimeImage)
        view3.addSubview(datetimeLabel)
        view3.addSubview(volumeImage)
        view3.addSubview(volumeLabel)
        view3.addSubview(laneView1)
        view3.addSubview(newButton)
        view3.addSubview(updateButton)
        
        TTBHLabel.topAnchor.constraint(equalTo: view3.topAnchor, constant: 20).isActive = true
        TTBHLabel.leftAnchor.constraint(equalTo: view3.leftAnchor, constant: 20).isActive = true
        TTBHLabel.rightAnchor.constraint(equalTo: view3.rightAnchor, constant: -20).isActive = true
        
        shieldImage.topAnchor.constraint(equalTo: TTBHLabel.bottomAnchor, constant: 20).isActive = true
        shieldImage.leftAnchor.constraint(equalTo: view3.leftAnchor, constant: 10).isActive = true
        shieldImage.widthAnchor.constraint(equalToConstant: 30).isActive = true
        shieldImage.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        insurranceLabel.topAnchor.constraint(equalTo: TTBHLabel.bottomAnchor, constant: 30).isActive = true
        insurranceLabel.leftAnchor.constraint(equalTo: shieldImage.rightAnchor, constant: 5).isActive = true
        insurranceLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        datetimeImage.topAnchor.constraint(equalTo: TTBHLabel.bottomAnchor, constant: 20).isActive = true
        datetimeImage.leftAnchor.constraint(equalTo: insurranceLabel.rightAnchor, constant: 20).isActive = true
        datetimeImage.widthAnchor.constraint(equalToConstant: 15).isActive = true
        datetimeImage.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        datetimeLabel.topAnchor.constraint(equalTo: TTBHLabel.bottomAnchor, constant: 20).isActive = true
        datetimeLabel.leftAnchor.constraint(equalTo: datetimeImage.rightAnchor, constant: 40).isActive = true
        datetimeLabel.rightAnchor.constraint(equalTo: view3.rightAnchor, constant: -10).isActive = true
        
        volumeImage.topAnchor.constraint(equalTo: datetimeImage.bottomAnchor, constant: 10).isActive = true
        volumeImage.leftAnchor.constraint(equalTo: insurranceLabel.rightAnchor, constant: 20).isActive = true
        volumeImage.widthAnchor.constraint(equalToConstant: 15).isActive = true
        volumeImage.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        volumeLabel.topAnchor.constraint(equalTo: datetimeLabel.bottomAnchor, constant: 2).isActive = true
        volumeLabel.leftAnchor.constraint(equalTo: volumeImage.rightAnchor, constant: 40).isActive = true
        volumeLabel.rightAnchor.constraint(equalTo: view3.rightAnchor, constant: -10).isActive = true
        
        laneView1.topAnchor.constraint(equalTo: insurranceLabel.bottomAnchor, constant: 20).isActive = true
        laneView1.leftAnchor.constraint(equalTo: view3.leftAnchor, constant: 20).isActive = true
        laneView1.rightAnchor.constraint(equalTo: view3.rightAnchor, constant: -20).isActive = true
        laneView1.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        newButton.topAnchor.constraint(equalTo: laneView1.bottomAnchor, constant: 20).isActive = true
        newButton.leftAnchor.constraint(equalTo: view3.leftAnchor, constant: 40).isActive = true
        newButton.widthAnchor.constraint(equalToConstant: 130).isActive = true
        newButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        updateButton.topAnchor.constraint(equalTo: laneView1.bottomAnchor, constant: 20).isActive = true
        updateButton.leftAnchor.constraint(equalTo: newButton.rightAnchor, constant: 30).isActive = true
        updateButton.rightAnchor.constraint(equalTo: view3.rightAnchor, constant: -40).isActive = true
        updateButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
}
