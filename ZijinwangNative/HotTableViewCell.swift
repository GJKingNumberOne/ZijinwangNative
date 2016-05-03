//
//  HotTableViewCell.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/3/10.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class HotTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var animaImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        animaImage.image = UIImage(named: "animation")
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
