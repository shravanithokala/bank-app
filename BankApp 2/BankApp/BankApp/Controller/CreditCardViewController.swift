//
//  CreditCardViewController.swift
//  BankApp
//
//  Created by apple on 3/20/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class CreditCardViewController: UIViewController {

    @IBOutlet weak var cardNumber: UITextField!
    @IBOutlet weak var amountToPay: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

       self.navigationController?.navigationBar.isHidden = false
       self.title = "Credit Card"
    }
    

    @IBAction func amountToPayAction(_ sender: UIButton) {
        
            let totelBalance = users[userIndex].accountBalance
            
            guard let trAmount = amountToPay.text else {
                return
            }
            guard let trAccount = cardNumber.text else {
                       return
                   }
            
            let amountToTransfer = Double(trAmount)
            
            guard let amountTransfer = amountToTransfer  else {
                return
            }
            
        if(trLimit > 0.0 && trAmount.count > 0 && trAccount.count > 0){
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
                }else{

                    let erroralert = UIAlertController(title: "ALERT", message: "Enter Details ", preferredStyle: .alert)
                    
                    self.present(erroralert, animated: true) {
                        
                    }
                    erroralert.dismiss(animated: true) {
                        
                    }
                }
                
            }
            print(finalBalance)
            users[userIndex].accountBalance = finalBalance
            trAmountArray.append(finalBalance)
            trAccountArray.append(trAccount)
            
            print(trAccountArray)
            print(trAmountArray)
        
        

}


}
