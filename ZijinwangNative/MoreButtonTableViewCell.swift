//
//  MoreButtonTableViewCell.swift
//  ZijinwangNative
//
//  Created by 华瑞金科 on 16/4/8.
//  Copyright © 2016年 华瑞金科. All rights reserved.
//

import UIKit

class MoreButtonTableViewCell: UITableViewCell {

    
    @IBOutlet weak var moneyView: UIView!
    @IBOutlet weak var receivableView: UIView!
    @IBOutlet weak var recordView: UIView!
    @IBOutlet weak var invitationView: UIView!
    @IBOutlet weak var envelopeView: UIView!
    @IBOutlet weak var bankCardView: UIView!
    var navigation: NavigationViewController!
    var controller: UIViewController!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let moneyTap = UITapGestureRecognizer(target: self, action: #selector(MoreButtonTableViewCell.moneyTapAction))
        moneyView.addGestureRecognizer(moneyTap)
        let receivableTap = UITapGestureRecognizer(target: self, action: #selector(MoreButtonTableViewCell.receivableTapAction))
        receivableView.addGestureRecognizer(receivableTap)
        let recordTap = UITapGestureRecognizer(target: self, action: #selector(MoreButtonTableViewCell.recordTapAction))
        recordView.addGestureRecognizer(recordTap)
        let invitationTap = UITapGestureRecognizer(target: self, action: #selector(MoreButtonTableViewCell.invitationTapAction))
        invitationView.addGestureRecognizer(invitationTap)
        let envelopeTap = UITapGestureRecognizer(target: self, action: #selector(MoreButtonTableViewCell.envelopeTapAction))
        envelopeView.addGestureRecognizer(envelopeTap)
        let bankCardTap = UITapGestureRecognizer(target: self, action: #selector(MoreButtonTableViewCell.bankCardTapAction))
        bankCardView.addGestureRecognizer(bankCardTap)
    }
    
    func moneyTapAction() {
        let moneyVC = UIStoryboard.init(name: "Personal", bundle: nil).instantiateViewControllerWithIdentifier("money") as! MoneyViewController
        controller.navigationController?.pushViewController(moneyVC, animated: true)
    }
    func receivableTapAction() {
        let receivableVC = UIStoryboard.init(name: "Personal", bundle: nil).instantiateViewControllerWithIdentifier("receivable") as! ReceivableViewController
        controller.navigationController?.pushViewController(receivableVC, animated: true)
    }
    func recordTapAction() {
        let recordVC = UIStoryboard.init(name: "Personal", bundle: nil).instantiateViewControllerWithIdentifier("record") as! RecordViewController
        controller.navigationController?.pushViewController(recordVC, animated: true)
    }
    func invitationTapAction() {
        let invitationVC = UIStoryboard.init(name: "Personal", bundle: nil).instantiateViewControllerWithIdentifier("invitation") as! InvitationViewController
        controller.navigationController?.pushViewController(invitationVC, animated: true)
    }
    func envelopeTapAction() {
        let envelopeVC = UIStoryboard.init(name: "Personal", bundle: nil).instantiateViewControllerWithIdentifier("envelope") as! EnvelopeViewController
        controller.navigationController?.pushViewController(envelopeVC, animated: true)
    }
    func bankCardTapAction() {
        let bankCardVC = UIStoryboard.init(name: "Personal", bundle: nil).instantiateViewControllerWithIdentifier("bankCard") as! BankCardViewController
        controller.navigationController?.pushViewController(bankCardVC, animated: true)
    }
    
    
}
