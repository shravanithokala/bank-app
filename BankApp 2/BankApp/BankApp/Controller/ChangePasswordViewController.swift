//
//  ChangePasswordViewController.swift
//  BankApp
//
//  Created by apple on 3/23/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class ChangePasswordViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var enterPassword: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
         self.navigationController?.navigationBar.isHidden = false
    }
    
    
    
    @IBAction func changePassword(_ sender: UIButton) {
        
        print(userIndex)
        users[userIndex].password = self.confirmPassword.text!
        
        print(users[userIndex].password)
        
        let name = users[userIndex].name
        let accountType = users[userIndex].accountType
        let accountBalance = users[userIndex].accountBalance
        let accountNumber = users[userIndex].accountNumber
        guard let password = self.confirmPassword.text else{return}
        
//        UserDetails(name: "John", password: "john123", accountType: "Savings Account", accountBalance: 10000.0, accountNumber: "0000000003")
        users.remove(at: userIndex)
        
        users.insert(UserDetails(name: name, password: password, accountType: accountType, accountBalance: accountBalance, accountNumber: accountNumber), at: userIndex)
        
        let erroralert = UIAlertController(title: "Success", message: "Your New Password is\(users[userIndex].password) ", preferredStyle: .alert)
        
        self.present(erroralert, animated: true) {
            
        }
        erroralert.dismiss(animated: true) {
            
        }
        
    }
    
    

}
