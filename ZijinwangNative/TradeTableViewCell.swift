//
//  TradeTableViewCell.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/4/12.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class TradeTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var checkButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
