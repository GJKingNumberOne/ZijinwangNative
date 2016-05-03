//
//  DropDownView.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/4/18.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class DropDownView: UIView, UIGestureRecognizerDelegate{

    @IBOutlet weak var grayView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    
    var listArr:[String] = []
    var height: CGFloat!
    
    
    override func drawRect(rect: CGRect) {
        UIView.animateWithDuration(0.5, animations: animation)
        
        
        tableView.scrollEnabled = false
        
        grayView.backgroundColor = UIColor.redColor()
        
        self.userInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(DropDownView.hidenView))
        tap.delegate = self
        self.addGestureRecognizer(tap)
        
        grayView.userInteractionEnabled = true
        let tapp = UITapGestureRecognizer(target: self, action: #selector(DropDownView.haha))
        grayView.addGestureRecognizer(tapp)
        

    }
    
    
    func animation()  {
        tableView.frame = CGRectMake(0, 0, ScreenWidth, height)
    }
    
    func hidenView() {
        self.hidden = true
        
    }
    
    func haha() {
        
    }

    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceiveTouch touch: UITouch) -> Bool {
        if NSStringFromClass(touch.view!.classForCoder) == "UITableViewCellContentView"{
            return false
        }
        return true
    }
    

}

extension DropDownView: UITableViewDataSource, UITableViewDelegate {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArr.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let nib = UINib.init(nibName: "DropTableViewCell", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "dropCell")
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("dropCell") as! DropTableViewCell
        cell.textLab.text = listArr[indexPath.row]
       
        
        
        
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if indexPath.row == 0 {
            print("sadadas")
        }
        
    }
    
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50
    }
    
    
}

