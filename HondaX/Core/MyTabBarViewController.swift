//
//  MyTabBarViewController.swift
//  THLayout
//
//  Created by guntex01 on 6/10/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit

class MyTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupChildController()
        
        let accountButton = UIBarButtonItem(image: UIImage(named: "us"),
                                            style: .done,
                                            target: self,
                                            action: #selector(goAccount))
        self.navigationItem.rightBarButtonItem =  accountButton
        let menuButton = UIBarButtonItem(image: UIImage(named: "menu"),
                                         style: .done,
                                         target: self,
                                         action: #selector(goMenu))
        self.navigationItem.leftBarButtonItem = menuButton
        
        if self.selectedIndex == 0 {
            navigationItem.title = "Sản phẩm"
        }else if self.selectedIndex == 1 {
            navigationItem.title = "Xe của tôi"
        }else if self.selectedIndex == 2 {
            navigationItem.title = "Trang chủ"
        }else{
            navigationItem.title = "Thông báo"
        }
        
        
        
        UINavigationBar.appearance().tintColor = UIColor.red
        UITabBar.appearance().tintColor = UIColor.red
    }
    
    @objc func goAccount(){
        let acocountVC = AccountViewController()
        self.navigationController?.pushViewController(acocountVC, animated: true)
    }
    
    @objc func goMenu(){
        let menuVC = MenuViewController()
        self.navigationController?.pushViewController(menuVC, animated: true)
    }
    
    func setupChildController(){
        let productVC = ProductViewController()
        productVC.view.backgroundColor = UIColor.white
        productVC.tabBarItem = UITabBarItem(title: "Sản phẩm", image: UIImage(named: "box"), tag: 0)
        
        
        let myCarVC = MyCarViewController()
        myCarVC.view.backgroundColor = UIColor.white
        myCarVC.tabBarItem = UITabBarItem(title: "Xe của tôi", image: UIImage(named: "mycar"), tag: 1)
        myCarVC.view.backgroundColor = .cyan
        
        let homeVC = HomeViewController()
        homeVC.view.backgroundColor = .white
        homeVC.tabBarItem = UITabBarItem(title: "Trang chủ", image: UIImage(named: "home"), tag : 2)
        
        let notifiVC = NotificationViewController()
        notifiVC.view.backgroundColor = UIColor.white
        notifiVC.tabBarItem = UITabBarItem(title: "Thông báo", image: UIImage(named: "belltb"), tag: 3)
        
        self.setViewControllers([productVC, myCarVC, homeVC, notifiVC], animated: true)
    }
}
