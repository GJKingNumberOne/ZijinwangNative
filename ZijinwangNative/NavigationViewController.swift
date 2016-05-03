//
//  NavigationViewController.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/3/8.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        interactivePopGestureRecognizer!.delegate = self

    }

//    override func pushViewController(viewController: UIViewController, animated: Bool) {
//        if viewControllers.count > 0 {
//            let backBtn = UIBarButtonItem(title: "", style: .Bordered, target: self, action: nil)
//            navigationBar.topItem?.backBarButtonItem = backBtn
//            
//            viewController.hidesBottomBarWhenPushed = true
//        }
//        super.pushViewController(viewController, animated: animated)
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//extension NavigationViewController: UIGestureRecognizerDelegate {
//    func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool {
//        if viewControllers.count > 1 {
//            return true
//        }
//        return false
//    }
//}
//
//extension NavigationViewController: UIAlertViewDelegate {
//    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
//        if buttonIndex == 0 {
//            popViewControllerAnimated(true)
//        }
//    }
//}
