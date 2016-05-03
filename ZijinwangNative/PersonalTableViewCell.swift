//
//  PersonalTableViewCell.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/4/8.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class PersonalTableViewCell: UITableViewCell {

    
    
    
    @IBOutlet weak var withdrawalButton: UIButton!
    
    
    @IBOutlet weak var topUpButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
