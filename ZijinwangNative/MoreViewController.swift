//
//  MoreViewController.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/3/8.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController {

    @IBOutlet weak var tradePassword: UIView!
    
    @IBOutlet weak var loginPassword: UIView!
    
    
    var titleArray = ["个人风险偏好", "客服", "反馈", "关于"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "更多"
        
        addPasswordPush()
       
    }

    func addPasswordPush() {
        let  tradeTap = UITapGestureRecognizer(target: self, action: #selector(MoreViewController.tradeTapAction))
        tradePassword.addGestureRecognizer(tradeTap)
        
        let loginTap = UITapGestureRecognizer(target: self, action: #selector(MoreViewController.loginTapAction))
        loginPassword.addGestureRecognizer(loginTap)
        
    }
    
    func tradeTapAction() {
        let tradeVC = UIStoryboard.init(name: "More", bundle: nil).instantiateViewControllerWithIdentifier("trade") as! TradePasswordViewController
        navigationController?.pushViewController(tradeVC, animated: true)
        
    }
    
    func loginTapAction() {
        let  loginVC = UIStoryboard.init(name: "More", bundle: nil).instantiateViewControllerWithIdentifier("login") as! LoginPasswordViewController
        navigationController?.pushViewController(loginVC, animated: true)
        
    }
    
}


extension MoreViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCellWithIdentifier("moreCell") as! MoreTableViewCell
        
        cell.titleLabel.text = titleArray[indexPath.row]
        
        if indexPath.row == 1 {
            cell.phoneLabel.hidden = false

        } else {
            cell.phoneLabel.hidden = true
        }
        
        
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if  indexPath.row == 1 {
            let alert = UIAlertView(title: "", message: "400-756-6888", delegate: self, cancelButtonTitle: "取消", otherButtonTitles: "呼叫")
            alert.show()
        } else if indexPath.row == 2 {
            let feedBackVC = UIStoryboard.init(name: "More", bundle: nil).instantiateViewControllerWithIdentifier("feedBack") as! FeedbackViewController
            navigationController?.pushViewController(feedBackVC, animated: true)
        } else if indexPath.row == 3{
            let  aboutVC = UIStoryboard.init(name: "More", bundle: nil).instantiateViewControllerWithIdentifier("about") as! AboutViewController
            navigationController?.pushViewController(aboutVC, animated: true)
            
        }
    }
    
    
}

extension MoreViewController: UIAlertViewDelegate{
    
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        if buttonIndex == 1 {
            let phone = "tel://4007566888"
            let url: NSURL = NSURL(string: phone)!
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
}

