//
//  PersonalViewController.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/3/8.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class PersonalViewController: UIViewController {

    
    var segment: UISegmentedControl!
    var buttonName = ["理财账户","基金账户"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addSegment()
        
    }

    func addSegment() {
        segment = UISegmentedControl.init(items: buttonName)
        segment.frame = CGRectMake(0, 0, 160, 28)
        segment.tintColor = UIColor(red: 255/255, green: 188/255, blue: 62/255, alpha: 1)
        segment.selectedSegmentIndex = 0
        self.navigationItem.titleView = segment
    }
    

}

extension PersonalViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
        let cell = tableView.dequeueReusableCellWithIdentifier("personalCell") as! PersonalTableViewCell
        cell.topUpButton.borderColor = UIColor(red: 255/255, green: 188/255, blue: 62/255, alpha: 1)
        cell.withdrawalButton.borderColor = UIColor(red: 255/255, green: 188/255, blue: 62/255, alpha: 1)
        return cell
        } else {
            let  cell = tableView.dequeueReusableCellWithIdentifier("moreButtonCell") as! MoreButtonTableViewCell
            cell.controller = self
            
            
            return cell
            
        }
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 1 {
            return 270
        } else {
            return 67
        }
    }
    
}

