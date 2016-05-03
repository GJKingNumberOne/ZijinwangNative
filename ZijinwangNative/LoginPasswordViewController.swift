//
//  LoginPasswordViewController.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/4/12.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class LoginPasswordViewController: UIViewController {

    var titleArray = ["原密码", "新密码"]
    var placeholderArr = ["请输入原始登录密码", "至少8位数字字母组合"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func forgotPasswordAction(sender: AnyObject) {
        let resetPasswordVC = UIStoryboard.init(name: "More", bundle: nil).instantiateViewControllerWithIdentifier("resetPassword") as! ResetPasswordViewController
        navigationController?.pushViewController(resetPasswordVC, animated: true)
    }
    
}

extension LoginPasswordViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("loginCell") as! LoginPasswordTableViewCell
        cell.titleLabel.text = titleArray[indexPath.row]
        cell.textfield.placeholder = placeholderArr[indexPath.row]
        
        if  indexPath.row == 0 {
            cell.checkButton.hidden = true
        }
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if section == 0{
            let view = UIView(frame: CGRectMake(0, 0, self.view.bounds.width, 40))
            view.backgroundColor = UIColor.clearColor()
            let label = UILabel(frame: CGRectMake(15, 0, self.view.bounds.width, 40))
            label.text = "请输入原密码后,在设置新密码"
            label.textColor = UIColor.grayColor()
            label.font = UIFont.systemFontOfSize(12)
            
            
            view.addSubview(label)
            return view
            
        }
        
        return nil
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
}

