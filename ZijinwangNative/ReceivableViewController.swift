//
//  ReceivableViewController.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/4/14.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class ReceivableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   

}

extension ReceivableViewController: UITableViewDataSource, UITableViewDelegate{

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCellWithIdentifier("receivableCell") as! ReceivableTableViewCell
        tableView.separatorStyle = .None
        // 取消选中效果
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        
        
        
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 5
    }
    
    
}