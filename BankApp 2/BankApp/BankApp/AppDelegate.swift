//
//  AppDelegate.swift
//  BankApp
//
//  Created by apple on 3/19/21.
//  Copyright © 2021 Apple. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

 var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
                   IQKeyboardManager.shared.enable = true
        return true
    }
}

extension AppDelegate{
    func loadSidepanelView(){
        let StoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let HomeVc = StoryBoard.instantiateViewController(withIdentifier: "DashboardViewController")as? DashboardViewController
        let HomeNav = UINavigationController(rootViewController: HomeVc!)
        let Leftvc = StoryBoard.instantiateViewController(withIdentifier: "left") as? LeftViewController
        let LeftNav = UINavigationController(rootViewController: Leftvc!)
        let Finalvc = SWRevealViewController(rearViewController: LeftNav, frontViewController: HomeNav)
        Finalvc?.rearViewRevealWidth = UIScreen.main.bounds.size.width/3 + 100
        self.window?.rootViewController = Finalvc
        
    }
    
}
