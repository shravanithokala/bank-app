//
//  LeftViewController.swift
//  BankApp
//
//  Created by apple on 3/20/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController {

    @IBOutlet weak var leftMenuView: UITableView!
    
    var contentArray = ["Edit Details","Help","Log Out"]
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.isHidden = true
        let nib = UINib(nibName: "LeftTableViewCell", bundle: nil)
        
        leftMenuView.register(nib, forCellReuseIdentifier: "leftcell")
        
        leftMenuView.separatorStyle = .none
        
    }
    

   
}

extension LeftViewController:UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = leftMenuView.dequeueReusableCell(withIdentifier: "leftcell")as? LeftTableViewCell else {
            return UITableViewCell()
        }
        
        cell.contentTitle.text = contentArray[indexPath.row]
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(indexPath.row == 2){
            
            let alert = UIAlertController(title: "Log Out", message: "Do you want to log out", preferredStyle: .alert)
            
            let ok = UIAlertAction(title: "OK", style: .default) { (act) in
                self.loadLoginView()
            }
            
            let cancel = UIAlertAction(title: "cancel", style: .default) { (act) in
                          
                      }
            
            
            alert.addAction(ok)
            alert.addAction(cancel)
            self.revealViewController().revealToggle(animated: true)
            
            self.present(alert, animated: true) {
                
            }
            
        }
    }
    
    
    func loadLoginView() {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            if let loginController =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "login") as? LoginViewController {
                let nav = UINavigationController(rootViewController: loginController)
                nav.isNavigationBarHidden = true
                appDelegate.window?.rootViewController = nav
            }
        }
    }

    
    
}
