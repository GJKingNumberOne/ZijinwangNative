//
//  InvestViewController.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/3/8.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class InvestViewController: UIViewController {
    
    var segment: UISegmentedControl!
    var buttonName = ["理财","基金"]
    var flexibleArray = ["增信RR", "灵活zz"]
    var depositArray = ["定存05", "Dingcunbao"]
    var flexibleInterestArray = ["11", "6"]
    var depositInterestArray = ["9", "12"]
    var flexibleDateArray = ["1个月", "2个月"]
    var depositDateArray = ["5个月", "12个月"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segment = UISegmentedControl.init(items: buttonName)
        segment.frame = CGRectMake(0, 0, 160, 28)
        segment.tintColor = UIColor(red: 255/255, green: 188/255, blue: 62/255, alpha: 1)
        segment.selectedSegmentIndex = 0
        self.navigationItem.titleView = segment
    }
    
  
}

extension InvestViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return flexibleArray.count
        } else if section == 1{
            return depositArray.count
        } else {
            return 0
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("financialCell") as! FinancialTableViewCell
        
        if indexPath.section == 0 {
            cell.titleLabel.text = flexibleArray[indexPath.row]
            cell.Interest.text = flexibleInterestArray[indexPath.row]
            cell.dateLabel.text = flexibleDateArray[indexPath.row]
        } else if indexPath.section == 1{
            cell.titleLabel.text = depositArray[indexPath.row]
            cell.Interest.text = depositInterestArray[indexPath.row]
            cell.dateLabel.text = depositDateArray[indexPath.row]
        }
        
        
        return cell
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if section == 0 {
            
            let view = UIView(frame: CGRectMake(0, 0, self.view.bounds.width, 50))
            view.backgroundColor = UIColor.clearColor()
            let label = UILabel(frame: CGRectMake(0, 0, self.view.bounds.width * 0.5, 50))
            label.text = "  灵活宝"
            label.textColor = UIColor.blueColor()
            let labels = UILabel(frame: CGRectMake(self.view.bounds.width * 0.5, 0, self.view.bounds.width * 0.5 - 10, 50))
            labels.text = "1元起投 随时提取"
            labels.textAlignment = NSTextAlignment.Right
            labels.textColor = UIColor.grayColor()
            
            view.addSubview(label)
            view.addSubview(labels)
            
        return view
        } else if section == 1{
            let view = UIView(frame: CGRectMake(0, 0, self.view.bounds.width, 50))
            view.backgroundColor = UIColor.clearColor()
            let label = UILabel(frame: CGRectMake(0, 0, self.view.bounds.width * 0.5, 50))
            label.text = "  定存宝"
            label.textColor = UIColor.purpleColor()
            let labels = UILabel(frame: CGRectMake(self.view.bounds.width * 0.5, 0, self.view.bounds.width * 0.5 - 10, 50))
            labels.text = "稳定收入最低风险"
            labels.textAlignment = NSTextAlignment.Right
            labels.textColor = UIColor.grayColor()
            
            
            view.addSubview(labels)
            view.addSubview(label)
            
            return view
        } else {
            let view = UIView(frame: CGRectMake(0, 0, self.view.bounds.width, 50))
            view.backgroundColor = UIColor.clearColor()
            let label = UILabel(frame: CGRectMake(0, 0, self.view.bounds.width * 0.5, 50))
            label.text = "  散标理财"
            label.textColor = UIColor.greenColor()
            let labels = UILabel(frame: CGRectMake(self.view.bounds.width * 0.5, 0, self.view.bounds.width * 0.5 - 10, 50))
            labels.text = "稳定收入最低风险"
            labels.textAlignment = NSTextAlignment.Right
            labels.textColor = UIColor.grayColor()
            
            
            view.addSubview(labels)
            view.addSubview(label)
            
            return view
        }
        
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    
}
