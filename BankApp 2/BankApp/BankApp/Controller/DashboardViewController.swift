//
//  DashboardViewController.swift
//  BankApp
//
//  Created by apple on 3/19/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {

    @IBOutlet weak var accountSummary: UIButton!
    
    @IBOutlet weak var domore: UIButton!
    
    
    @IBOutlet weak var offers: UIButton!
    
    
    
    @IBOutlet weak var knowMore: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        
        
        
          self.setSidePanel()
print(userIndex)
         print("success")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func accountSummaryAction(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                                  
                                  //Account
                                  guard let offersVc = storyBoard.instantiateViewController(identifier: "Account") as? AccountSummeryViewController else{
                                      return
                                  }
                                  
                                  self.navigationController?.pushViewController(offersVc, animated: true)
    }
    
    
    @IBAction func doMoreAction(_ sender: UIButton) {
        
        //domore
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                                                
                                                
                                                guard let doMoreVc = storyBoard.instantiateViewController(identifier: "domore") as? DoMoreViewController else{
                                                    return
                                                }
                                                
                                                self.navigationController?.pushViewController(doMoreVc, animated: true)
        
        
    }
    
    
    @IBAction func offersAction(_ sender: UIButton) {
        //offers
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                                         
                                         
                                         guard let accountSummryVc = storyBoard.instantiateViewController(identifier: "offers") as? OffersOnCardViewController else{
                                             return
                                         }
                                         
                                         self.navigationController?.pushViewController(accountSummryVc, animated: true)
    }
    
    
    @IBAction func knowMoreAction(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        
        guard let queryVc = storyBoard.instantiateViewController(identifier: "query") as? QueryViewController else{
            return
        }
        
        self.navigationController?.pushViewController(queryVc, animated: true)
    }
    
    
    
    func setSidePanel(){
       // self.navigationController?.navigationBar.isHidden = false
        let menuitem = UIBarButtonItem(image: UIImage(named: "menu"), style: .plain, target: self.revealViewController(), action:#selector(SWRevealViewController.revealToggle(_:)) )
        
        self.navigationItem.leftBarButtonItem = menuitem
        self.navigationItem.leftBarButtonItem?.tintColor = UIColor.black
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        self.title = "Bank App"
        
        
        
    }
    
    
    
    
}
