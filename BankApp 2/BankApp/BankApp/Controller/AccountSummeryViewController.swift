//
//  AccountSummeryViewController.swift
//  BankApp
//
//  Created by apple on 3/19/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class AccountSummeryViewController: UIViewController {

    @IBOutlet weak var accountType: UITextField!
    
    @IBOutlet weak var accountBalanceLbl: UILabel!
    
    @IBOutlet weak var accountBalance: UILabel!
    
    @IBOutlet weak var makeTransaction: UIButton!
    
    
    @IBOutlet weak var setTransaction: UIButton!
    
    
    @IBOutlet weak var recentTransaction: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = false
        self.title = "Account Summery"
        
        self.accountBalanceLbl.isHidden = true
        self.accountBalance.isHidden = true
        self.makeTransaction.isHidden = true
        self.setTransaction.isHidden = true
        self.recentTransaction.isHidden = true


        finalBalance = users[userIndex].accountBalance
        
        self.accountBalance.text = finalBalance.description
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.accountBalance.text = finalBalance.description
    }
    
    @IBAction func accountTypeAction(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Account Type", message: "", preferredStyle: UIAlertController.Style.actionSheet)
        
        let savingsAccount = UIAlertAction(title: "Savings Account", style: UIAlertAction.Style.default) { (sa) in
            print(sa.title!)
            if(sa.title! == users[userIndex].accountType ){
                self.accountType.text = sa.title
                self.accountBalanceLbl.isHidden = false
                self.accountBalance.isHidden = false
                self.makeTransaction.isHidden = false
                self.setTransaction.isHidden = false
                self.recentTransaction.isHidden = false
            }else{
                print("error")
                let erroralert = UIAlertController(title: "Alert", message: " Select correct account Type ", preferredStyle: .alert)
                                            
                                            self.present(erroralert, animated: true) {
                                                
                                            }
                                            erroralert.dismiss(animated: true) {
                                                
                                            }
            }
           
        }
        let currentAccount = UIAlertAction(title: "Current Account", style: UIAlertAction.Style.default) { (sa) in
            print(sa.title!)
            if(sa.title! == users[userIndex].accountType ){
                self.accountType.text = sa.title
                self.accountBalanceLbl.isHidden = false
                self.accountBalance.isHidden = false
                self.makeTransaction.isHidden = false
                self.setTransaction.isHidden = false
                self.recentTransaction.isHidden = false
            }else{
                print("error")
                let erroralert = UIAlertController(title: "Alert", message: " Select correct account Type ", preferredStyle: .alert)
                                                           
                                                           self.present(erroralert, animated: true) {
                                                               
                                                           }
                                                           erroralert.dismiss(animated: true) {
                                                               
                                                           }
            }
           
        }
        alert.addAction(savingsAccount)
        alert.addAction(currentAccount)
        
        self.present(alert, animated: true) {
            
        }
    }
    
    
    @IBAction func makeTransactionAction(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        
        guard let makeTrVc = storyBoard.instantiateViewController(identifier: "maketr") as? MakeTransactionViewController else{
            return
        }
        
        self.navigationController?.pushViewController(makeTrVc, animated: true)
    }
    
    
    @IBAction func setTransactionLimitaction(_ sender: UIButton) {
        
        //settransaction
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
               
               
               guard let setTrVc = storyBoard.instantiateViewController(identifier: "settransaction") as? SetTransactionViewController else{
                   return
               }
               
               self.navigationController?.pushViewController(setTrVc, animated: true)
    }
    

    @IBAction func recentTransactionaction(_ sender: UIButton) {
        //recent
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        
        guard let recentTrVc = storyBoard.instantiateViewController(identifier: "recent") as? RecentTransactionViewController else{
            return
        }
        
        self.navigationController?.pushViewController(recentTrVc, animated: true)
    }
}
extension AccountSummeryViewController:UITextFieldDelegate{
    
    
    
}
