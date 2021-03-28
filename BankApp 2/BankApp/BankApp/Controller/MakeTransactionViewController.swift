//
//  MakeTransactionViewController.swift
//  BankApp
//
//  Created by apple on 3/20/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class MakeTransactionViewController: UIViewController {

    @IBOutlet weak var transferAmount: UITextField!
    @IBOutlet weak var accountNumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        transferAmount.delegate = self
        accountNumber.delegate = self
        
        
        self.navigationController?.navigationBar.isHidden = false
        self.title = "Make Transaction"
        // Do any additional setup after loading the view.
    }
    

    @IBAction func payAction(_ sender: UIButton) {
         let totelBalance = users[userIndex].accountBalance
        
        guard let trAmount = transferAmount.text else {
            return
        }
        guard let trAccount = accountNumber.text else {
                   return
               }
        
        let amountToTransfer = Double(trAmount)
        
        guard let amountTransfer = amountToTransfer  else {
            return
        }
        
        if(trLimit > 0.0 && trAccount.count > 0 && trAmount.count > 0){
            if(amountTransfer <= trLimit ){
                finalBalance = totelBalance - amountTransfer
            }else{
                
                let erroralert = UIAlertController(title: "Alert", message: "Amount Exceed Transation Limit ", preferredStyle: .alert)
                                            
                                            self.present(erroralert, animated: true) {
                                                
                                            }
                                            erroralert.dismiss(animated: true) {
                                                
                                            }
                print("error")
            }
        }else{
            
            
            
            if(trAccount.count > 0 && trAmount.count > 0){
                finalBalance = totelBalance - amountTransfer
            }
            
            print(trAmount.count)
            if(trAccount.count == 0 && trAccount.count == 0){

                let erroralert = UIAlertController(title: "ALERT", message: "Enter Details ", preferredStyle: .alert)
                
                self.present(erroralert, animated: true) {
                    
                }
                erroralert.dismiss(animated: true) {
                    
                }
            }
            
        }
        
        print(trAmount.count)
        print(finalBalance)
        users[userIndex].accountBalance = finalBalance
        trAmountArray.append(finalBalance)
        trAccountArray.append(trAccount)
        
        print(trAccountArray)
        print(trAmountArray)
    }
    
}

extension MakeTransactionViewController:UITextFieldDelegate{
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        transferAmount.resignFirstResponder()
        
    }
    
}
