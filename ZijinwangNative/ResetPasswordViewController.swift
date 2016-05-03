//
//  ResetPasswordViewController.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/4/13.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class ResetPasswordViewController: UIViewController {

    var titleArray = [["手机号", "验证码"], ["新密码"]]
    var placeholder = [["请输入已注册手机号", "输入验证码"], ["至少8位数字字母组合"]]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   

}

extension ResetPasswordViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 2 : 1
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCellWithIdentifier("resetPasswordCell") as! ResetPasswordTableViewCell
        cell.titleLabel.text = titleArray[indexPath.section][indexPath.row]
        cell.textfield.placeholder = placeholder[indexPath.section][indexPath.row]
        
        if  indexPath.section == 0 && indexPath.row == 0 {
            cell.checkButton.hidden = true
        } else if indexPath.section == 0 && indexPath.row == 1 {
            cell.checkButton.setTitle("获取验证码", forState: .Normal)
            cell.checkButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            cell.checkButton.backgroundColor = UIColor(red: 222/255, green: 223/255, blue: 225/255, alpha: 1)
            cell.checkButton.borderWidth = 1
            cell.checkButton.cornerRadius = 3
            cell.checkButton.borderColor = UIColor(red: 222/255, green: 223/255, blue: 225/255, alpha: 1)
        }
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
}
