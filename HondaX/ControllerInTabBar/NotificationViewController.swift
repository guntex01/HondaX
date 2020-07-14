//
//  NotificationViewController.swift
//  THLayout
//
//  Created by guntex01 on 6/10/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController {
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    let tabelView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    override func viewDidLoad() {
           super.viewDidLoad()
        
        setupLayout()
//        tabelView.delegate = self
//        tabelView.dataSource = self
         

       }
    func setupLayout(){
        view.addSubview(containerView)
        
        containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 90).isActive = true
        containerView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        containerView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -85).isActive = true
    
        containerView.addSubview(tabelView)
        tabelView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0).isActive = true
        tabelView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 0).isActive = true
        tabelView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 0).isActive = true
        tabelView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0).isActive = true
    }
}
