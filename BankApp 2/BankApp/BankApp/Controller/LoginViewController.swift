//
//  LoginViewController.swift
//  BankApp
//
//  Created by apple on 3/19/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var userName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        
        self.userName.keyboardType = UIKeyboardType.default
        
        self.password.keyboardType = UIKeyboardType.default
        
    }
    
    @IBAction func changePasswordAction(_ sender: UIButton) {
        
        //change
        
        promptForAnswer()
        
        
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                                  
                                  //Account
                                  guard let changePasswordVc = storyBoard.instantiateViewController(identifier: "change") as? ChangePasswordViewController else{
                                      return
                                  }
                                  
                                  self.navigationController?.pushViewController(changePasswordVc, animated: true)
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        
        guard let userName = self.userName.text else{return}
        guard let password = self.password.text else{return}
        
        if(userName.count > 0 && password.count > 0){
            if(registeredUser.contains(userName)){
                      
                     // promptForAnswer()
                self.loadMainView()

                   }
                   
                   userIndex = registeredUser.firstIndex(of: userName)!
        }else{
            let erroralert = UIAlertController(title: "ALERT", message: "Enter Your Details ", preferredStyle: .alert)
                       
                       self.present(erroralert, animated: true) {
                           
                       }
                       erroralert.dismiss(animated: true) {
                           
                       }
        }
       
       
    }
    
    func promptForAnswer() {
       
        
        let ac = UIAlertController(title: "Security Question", message: "Your Favourit Color?", preferredStyle: .alert)
        ac.addTextField()

        let submitAction = UIAlertAction(title: "Submit", style: .default) { [unowned ac] _ in
            let answer = ac.textFields![0]
            
            print(answer.text!)
            // do something interesting with "answer" here
            
            if(answer.text! == "RED"){
                //let storyBoard = UIStoryboard(name: "Main", bundle: nil)
             
                 //  self.loadMainView()
                
                
                let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                
                //Account
                guard let changePasswordVc = storyBoard.instantiateViewController(identifier: "change") as? ChangePasswordViewController else{
                    return
                }
                
                self.navigationController?.pushViewController(changePasswordVc, animated: true)
               
                           
                           

            }
            
        }

        ac.addAction(submitAction)

        present(ac, animated: true)
    }
    
    
    func loadMainView(){
        guard  let delegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        delegate.loadSidepanelView()
        
    }
    
}
