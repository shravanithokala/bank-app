//
//  DoMoreViewController.swift
//  BankApp
//
//  Created by apple on 3/19/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class DoMoreViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = false
        self.title = "Do More"

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func creditCardAction(_ sender: UIButton) {
        
        //creditcard
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        
        guard let creditCardVc = storyBoard.instantiateViewController(identifier: "creditcard") as? CreditCardViewController else{
            return
        }
        
        self.navigationController?.pushViewController(creditCardVc, animated: true)
        
        
    }
    
    
    @IBAction func utilityAction(_ sender: UIButton) {
        
        //query
        
        

    }
    
}
