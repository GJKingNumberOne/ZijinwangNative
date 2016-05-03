//
//  TradePasswordViewController.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/4/12.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class TradePasswordViewController: UIViewController {

    var titleArray = ["交易密码", "验证码　"]
    var textPlaceholderArray = ["6位纯数字密码", "请输入短信验证码"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

            }
    @IBAction func popAction(sender: AnyObject) {
        
        navigationController?.popViewControllerAnimated(true)
        
    }

    

}

extension TradePasswordViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("tradeCell") as! TradeTableViewCell
        cell.textField.placeholder = textPlaceholderArray[indexPath.row]
        cell.titleLabel.text = titleArray[indexPath.row]
        if  indexPath.row == 1 {
            cell.checkButton.setTitle("获取验证码", forState: .Normal)
            cell.checkButton.setTitleColor(UIColor(red: 255/255, green: 188/255, blue: 62/255, alpha: 1), forState: .Normal)
            cell.checkButton.borderWidth = 1
            cell.checkButton.cornerRadius = 3
            cell.checkButton.borderColor = UIColor(red: 255/255, green: 188/255, blue: 62/255, alpha: 1)
        }
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if section == 0{
        let view = UIView(frame: CGRectMake(0, 0, self.view.bounds.width, 40))
        view.backgroundColor = UIColor.clearColor()
        let label = UILabel(frame: CGRectMake(20, 0, self.view.bounds.width, 40))
        label.text = "交易密码将投资取现等,保护您的资产安全"
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


