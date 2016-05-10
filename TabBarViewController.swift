//
//  TabBarViewController.swift
//  countmein
//
//  Created by 华瑞金科 on 16/5/6.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addAllChildVCs()
    }

    
    func addAllChildVCs() {
        let activiteVC = UIStoryboard(name: "Activite", bundle: nil).instantiateViewControllerWithIdentifier("Activite") as! ActiviteViewController
        addOneChildVC(childVC: activiteVC, title: "活动", imageName: "", selectedImageName: "")
        
        
        let findVC = UIStoryboard(name: "Find", bundle: nil).instantiateViewControllerWithIdentifier("Find") as! FindViewController
        addOneChildVC(childVC: findVC, title: "发现", imageName: "", selectedImageName: "")
        
        
        let minevc = UIStoryboard(name: "Mine", bundle: nil).instantiateViewControllerWithIdentifier("Mine") as! MineViewController
        addOneChildVC(childVC: minevc, title: "我的", imageName: "", selectedImageName: "")
        
        
        let items = [activiteVC, findVC, minevc]
        self.viewControllers = items
        self.selectedIndex = 1
        
    }
    
    
    func addOneChildVC(childVC childVC: UIViewController, title: String, imageName: String, selectedImageName: String) {
        childVC.title = title
        childVC.tabBarItem.image = UIImage(named: imageName)
        childVC.tabBarItem.selectedImage = UIImage(named: selectedImageName)
        
        let naVC = NavigationViewController(rootViewController: childVC)
        addChildViewController(naVC)
    }


}
