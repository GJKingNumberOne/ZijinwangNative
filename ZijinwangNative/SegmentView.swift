//
//  SegmentView.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/4/14.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class SegmentView: UIView {

    var segment: UISegmentedControl!
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    func addItems(items: [AnyObject]?) {
        segment = UISegmentedControl(items: items)
        segment.frame = CGRectMake(0, 0, frame.size.width, frame.size.height)
        segment.selectedSegmentIndex = 0
        segment.tintColor = rgba(255, g: 188, b: 25, a: 1)
//        segment.backgroundColor = UIColor.redColor()
        self.addSubview(segment)

        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
