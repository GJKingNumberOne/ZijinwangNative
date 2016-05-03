//
//  MainViewController.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/3/8.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var image: UIImageView!
    var array = ["新手专享", "热门推荐"]
    var bigImageArray = ["bigDeposit.png", "bigFilexible.png", "bigStandard.png"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = ""
        image = UIImageView()
        image.frame = CGRectMake(0, 0, 80, 30)
        image.image = UIImage(named: "title")
        self.navigationItem.titleView = image
    }



}

extension MainViewController: UITableViewDataSource, UITableViewDelegate{
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 5
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if  section == 4 {
            return 2
        } else if section == 0{
        return 1
        } else {
            return 1
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if indexPath.section == 3 {
            let cell = tableView.dequeueReusableCellWithIdentifier("rookieCell") as! RookieTableViewCell
            return cell
        } else if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("mainCell") as! MainTableViewCell
            let name: String = bigImageArray[0]
            cell.bigImage.image = UIImage(named: name)
            cell.smallImage.image = UIImage(named: "deposit")
            cell.titleLabel.text = "定存宝"
            cell.detailLabel.text = "稳定安全理财计划"
            
            return cell
        } else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCellWithIdentifier("mainCell") as! MainTableViewCell
            let name: String = bigImageArray[1]
            cell.bigImage.image = UIImage(named: name)
            cell.smallImage.image = UIImage(named: "filexible")
            cell.titleLabel.text = "灵活宝"
            cell.detailLabel.text = "灵活理财更自由"
            
            return cell
        
        
        
        } else if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCellWithIdentifier("mainCell") as! MainTableViewCell
            let name: String = bigImageArray[2]
            cell.bigImage.image = UIImage(named: name)
            cell.smallImage.image = UIImage(named: "standard")
            cell.detailLabel.text = "灵活理财更自由"
            cell.titleLabel.text = "散标投资"
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("hotCell") as! HotTableViewCell
            return cell
        }
        
        
    }
    
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if section == 3 {
        let view = UIView(frame: CGRectMake(0, 0, self.view.bounds.width, 50))
        view.backgroundColor = UIColor.clearColor()
        let label = UILabel(frame: CGRectMake(0, 0, self.view.bounds.width * 0.5, 50))
        label.text = "  新手专享"
        label.textColor = UIColor.redColor()
        
        let labels = UILabel(frame: CGRectMake(self.view.bounds.width * 0.5, 0, self.view.bounds.width * 0.5 - 10, 50))
        labels.text = "现金红包 + 超高收益"
            labels.textAlignment = NSTextAlignment.Right
            labels.textColor = UIColor.grayColor()
        
        view.addSubview(label)
        view.addSubview(labels)
            return view
        }else if section == 4 {
            let view = UIView(frame: CGRectMake(0, 0, self.view.bounds.width, 50))
            view.backgroundColor = UIColor.clearColor()
            let label = UILabel(frame: CGRectMake(0, 0, self.view.bounds.width * 0.5, 50))
            label.text = "  热门推荐"
            label.textColor = UIColor.redColor()
            
            let labels = UILabel(frame: CGRectMake(self.view.bounds.width * 0.5, 0, self.view.bounds.width * 0.5 - 10, 50))
            labels.text = "1元起投 随时提取"
            labels.textAlignment = NSTextAlignment.Right
            labels.textColor = UIColor.grayColor()
            
            view.addSubview(label)
            view.addSubview(labels)
            return view
        }
        else {
            let view = UIView(frame: CGRectMake(0, 0, self.view.bounds.width, 10))
            return view
            
        }
    
        
    
        
        
    }
    
    
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 3{
            return 205
        }else if indexPath.section == 4{
            return 141
        }
        return 80
        
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 || section == 1 || section == 2 {
            return 10
            
        } else {
            
            return 50
            
        }
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    
}
