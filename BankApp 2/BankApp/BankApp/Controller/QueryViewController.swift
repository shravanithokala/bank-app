//
//  QueryViewController.swift
//  BankApp
//
//  Created by apple on 3/20/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class QueryViewController: UIViewController {

    @IBOutlet weak var queryDetails: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

       self.navigationController?.navigationBar.isHidden = false
       self.title = "Query"
    }
    

    @IBAction func submitAction(_ sender: UIButton) {
        if(queryDetails.text?.count != 0){
            let submitalert = UIAlertController(title: "Alert", message: "Your Query Submitted Successfully ", preferredStyle: .alert)
                   
                   self.present(submitalert, animated: true) {
                       
                   }
                   submitalert.dismiss(animated: true) {
                       
                   }
        }else{
            print("error")
            
            
            let erroralert = UIAlertController(title: "ERROR", message: "Enter Your Query ", preferredStyle: .alert)
            
            self.present(erroralert, animated: true) {
                
            }
            erroralert.dismiss(animated: true) {
                
            }
        }
        
    }
    
}
