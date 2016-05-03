//
//  AboutViewController.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/4/12.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var detail: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        detail.text = "　　自金网系均瑶集团旗下华瑞金融科技有限公司建设和运营的互联网金融资产交易服务平台,智力与味客户提供优质、安全、便捷的金融理财信息服务.自金网与众多金融投资机构、金融交易所、优质实业资产企业等都有广泛的合作.管理团队主要来自于各大银行、互联网金融等金融机构,具备丰富的互联网及金融从业经验.自金网,是您安全理财的最佳选择."
        
    }

    
   

}

extension AboutViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("aboutCell") as! AboutTableViewCell
        
        
        
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 15
    }
    
    
    
    
}

