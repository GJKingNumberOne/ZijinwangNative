//
//  FeedbackViewController.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/4/12.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class FeedbackViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var textView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.separatorStyle = .None
        
        textView.delegate = self
        
        textView.text = "请输入您的反馈"
        textView.textColor = UIColor.grayColor()
        
        
        
        // Do any additional setup after loading the view.
    }

   

}

extension FeedbackViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("feedBackCell") as! FeedBackTableViewCell
        cell.selectionStyle = .None
        return cell
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
}


extension FeedbackViewController: UITextViewDelegate {
    
    
    func textViewDidBeginEditing(textView: UITextView) {
        if textView.text.characters.count > 0 && textView.text == "请输入您的反馈"{
            textView.textColor = UIColor.blackColor()
            textView.text = ""
        }
    }
    
    
    
    func textViewDidEndEditing(textView: UITextView) {
        if textView.text.characters.count == 0 {
            textView.text = "请输入您的反馈";
            textView.textColor = UIColor.lightGrayColor()
        }
    }
}




