//
//  RecordViewController.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/4/14.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class RecordViewController: UIViewController {

    
    @IBOutlet weak var typeButton: UIButton!
    
    @IBOutlet weak var allTimeButton: UIButton!
    
    var cellHeight: Int!
    
    
    var typeArray = ["全部类型", "投标", "提现", "充值", "回款", "提现手续费", "平台奖励"]
    var allTimeArray = ["所有时间", "最近7天", "最近一个月", "最近三个月"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
      
        }

    @IBAction func typeAction(sender: AnyObject) {
        
        let view = NSBundle.mainBundle().loadNibNamed("DropDown", owner: nil, options: nil).first as! DropDownView
        cellHeight = 50 * typeArray.count
        view.frame = CGRectMake(0, 109, ScreenWidth, ScreenHeight)
        view.listArr = typeArray
        view.height = CGFloat(cellHeight)
        
        self.view.addSubview(view)
        
    }

    @IBAction func timeAction(sender: AnyObject) {
        
        let view = NSBundle.mainBundle().loadNibNamed("DropDown", owner: nil, options: nil).first as! DropDownView
        cellHeight = 50 * allTimeArray.count
        view.frame = CGRectMake(0, 109, ScreenWidth, ScreenHeight)
        view.listArr = allTimeArray
        view.height = CGFloat(cellHeight)
        
        self.view.addSubview(view)
        
    }

}

extension RecordViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
 
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("recordCell") as! RecordTableViewCell
        tableView.separatorStyle = .None
        // 取消选中效果
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        
        
        
        return cell
        
    }
    

    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 5
    }


}