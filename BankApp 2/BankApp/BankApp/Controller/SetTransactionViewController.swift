//
//  SetTransactionViewController.swift
//  BankApp
//
//  Created by apple on 3/20/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class SetTransactionViewController: UIViewController {

    @IBOutlet weak var limitAmount: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        self.title = "Set Transaction"

        // Do any additional setup after loading the view.
    }
    

    @IBAction func setLimitAction(_ sender: UIButton) {
        
        guard let lmtAmount = limitAmount.text?.count else {
            return
        }
        
        if(lmtAmount > 0){
                
                guard let lmtAmount = self.limitAmount.text else{return}
                
                let amountToSet = Double(lmtAmount)
                
                
                trLimit = Double(amountToSet!)
                
                print(trLimit)
        }else{
            let erroralert = UIAlertController(title: "ALERT", message: "Enter Details ", preferredStyle: .alert)
            
            self.present(erroralert, animated: true) {
                
            }
            erroralert.dismiss(animated: true) {
                
            }

        }
            

        }
}
