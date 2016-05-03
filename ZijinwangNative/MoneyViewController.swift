//
//  MoneyViewController.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/4/14.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class MoneyViewController: UIViewController {

    var segment = SegmentView()
    var myView: UIView!
    
    
    var itemsArray:[String] = ["投资中", "回款中","已结束"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myView = UIView(frame: CGRectMake(0, 64, ScreenWidth, 60))
        myView.backgroundColor = UIColor.whiteColor()
        segment = SegmentView(frame: CGRectMake(45, 12, ScreenWidth - 100, 36))
        segment.addItems(itemsArray)
        
            
            
        myView.addSubview(segment)
        self.view.addSubview(myView)
        
       
    }

   

}

extension MoneyViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCellWithIdentifier("moneyCell") as! MoneyTableViewCell
        tableView.separatorStyle = .None
        // 取消选中效果
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        
        
        return cell
        
    }
    
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    
}

