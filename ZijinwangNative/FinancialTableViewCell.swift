//
//  FinancialTableViewCell.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/4/8.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class FinancialTableViewCell: UITableViewCell {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var Interest: UILabel!
    
    
    @IBOutlet weak var dateLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
