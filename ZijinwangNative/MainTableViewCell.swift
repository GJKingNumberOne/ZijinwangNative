//
//  MainTableViewCell.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/3/9.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var bigImage: UIImageView!
//    var imageArray = ["bigDeposit", "bigFilexible", "bigStandard"]

    @IBOutlet weak var smallImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var detailLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

//        for var i = 0; i < imageArray.count; i++ {
//            let name:String = imageArray[i]
//            bigImage.image = UIImage(named: name)
//        }
        
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
