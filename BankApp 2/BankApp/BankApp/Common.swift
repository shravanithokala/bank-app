//
//  Common.swift
//  BankApp
//
//  Created by apple on 3/21/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation

var registeredUser:[String] = ["Sai","Ravi","John"]

var users:[UserDetails] = [UserDetails(name: "Sai", password: "sai123", accountType: "Savings Account", accountBalance: 10000.0, accountNumber: "0000000001"),UserDetails(name: "Ravi", password: "ravi123", accountType: "Current Account", accountBalance: 12000.0, accountNumber: "0000000002"),UserDetails(name: "John", password: "john123", accountType: "Savings Account", accountBalance: 10000.0, accountNumber: "0000000003")]

var userIndex:Int = 0

var trAccountArray :[String] = [String]()

var trAmountArray:[Double] = [Double]()

var finalBalance:Double = 0

var trLimit:Double = 0


