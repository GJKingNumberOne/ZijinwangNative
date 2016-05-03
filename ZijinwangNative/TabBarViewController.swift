//
//  TabBarViewController.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/3/8.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 同时改变图片跟文字的颜色
        tabBar.tintColor = UIColor.orangeColor()

        addAllChildVCs()
    }
    func addAllChildVCs(){
        let mainVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("Main") as! MainViewController
        addOneChildVC(childVC: mainVC, title: "首页", imageName: "main", selectedImageName: "main-selected")
        
        let investVC = UIStoryboard(name: "Invest", bundle: nil).instantiateViewControllerWithIdentifier("Invest") as! InvestViewController
        addOneChildVC(childVC: investVC, title: "投资", imageName: "invest", selectedImageName: "invest-selected")
        
        let personalVC = UIStoryboard(name: "Personal", bundle: nil).instantiateViewControllerWithIdentifier("Personal") as! PersonalViewController
        addOneChildVC(childVC: personalVC, title: "个人中心", imageName: "personals", selectedImageName: "personal-selected")
        
        let moreVC = UIStoryboard(name: "More", bundle: nil).instantiateViewControllerWithIdentifier("More") as! MoreViewController
        addOneChildVC(childVC: moreVC, title: "更多", imageName: "more", selectedImageName: "main-selected")
        
    }
    
 
    func addOneChildVC(childVC childVC: UIViewController, title: String, imageName: String, selectedImageName: String) {
        childVC.title = title
        childVC.tabBarItem.image = UIImage(named: imageName)
        childVC.tabBarItem.selectedImage = UIImage(named: selectedImageName)
        
        let naVC = NavigationViewController(rootViewController: childVC)
        addChildViewController(naVC)
    }
    

}
