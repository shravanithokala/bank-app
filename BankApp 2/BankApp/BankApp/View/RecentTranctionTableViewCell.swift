//
//  RecentTranctionTableViewCell.swift
//  BankApp
//
//  Created by apple on 3/20/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class RecentTranctionTableViewCell: UITableViewCell {

    @IBOutlet weak var sno: UILabel!
    
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var accountNumber: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
