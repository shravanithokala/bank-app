//
//  UserModel.swift
//  BankApp
//
//  Created by apple on 3/21/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation



struct UserDetails {
    var name:String
    var password:String
    var accountType:String
    var accountBalance:Double
    var accountNumber:String
    
}


struct TransactionDetails {
    var accountNumber:String
    var amount:String
}
