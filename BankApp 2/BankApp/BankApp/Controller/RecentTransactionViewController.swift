//
//  RecentTransactionViewController.swift
//  BankApp
//
//  Created by apple on 3/20/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class RecentTransactionViewController: UIViewController {

    @IBOutlet weak var rtView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        self.title = "Recent Transaction"
//recentAmount
       let nib = UINib(nibName: "RecentTranctionTableViewCell", bundle: nil)
        rtView.register(nib, forCellReuseIdentifier: "recentAmount")
    }

}

extension RecentTransactionViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = rtView.dequeueReusableCell(withIdentifier: "recentAmount") as?RecentTranctionTableViewCell else {
            return UITableViewCell()
        }
        if(indexPath.row == 0){
            cell.sno.text = "SNO"
            cell.amount.text = "Amount"
            cell.accountNumber.text = "Account NO"
        }else{
            cell.sno.text = "1"
            cell.amount.text = "20000"
            cell.accountNumber.text = "0000000001"
        }
        
        
        
        
        return cell
    }
    
    
    
    
}
