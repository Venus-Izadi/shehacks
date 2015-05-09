//
//  AppDelegate.swift
//  borrowanegg
//
//  Created by Alexandra Luca on 5/8/15
//  Copyright (c) 2015 thoughtworks. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool{
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
      
        application.registerUserNotificationSettings(UIUserNotificationSettings(forTypes: UIUserNotificationType.Sound |
            UIUserNotificationType.Alert | UIUserNotificationType.Badge, categories: nil))
        

        if let window = window {
            window.backgroundColor = UIColor.whiteColor()
            var navigationController = UINavigationController()
            let screenSize: CGRect = UIScreen.mainScreen().bounds
            let tabBarController = UITabBarController()
             application.statusBarStyle = .LightContent
            let list = UINavigationController()
            list.pushViewController( ListViewController(), animated: false)
            let giveAway = GiveAwayViewController()
            
            let borrow = BorrowViewController()
            
            let controllers = [borrow, giveAway, list ]
            tabBarController.view.frame = screenSize
            tabBarController.viewControllers = controllers
            tabBarController.tabBar.barTintColor = UIColor(red: 0, green: 64/255, blue: 77/255, alpha: 1)
            window.rootViewController = tabBarController
            //  let firstImage = UIImage(named: &amp;quot;pie bar icon&amp;quot;)
            // let secondImage = UIImage(named: &amp;quot;pizza bar icon&amp;quot;)
            list.tabBarItem = UITabBarItem(title: "Groups", image: nil, tag: 3)
              list.tabBarItem.image =  UIImage(named:"grouptab")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
            giveAway.tabBarItem = UITabBarItem(title: "Give Away", image: nil, tag:2)
            giveAway.tabBarItem.image = UIImage(named:"givetab")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
            borrow.tabBarItem = UITabBarItem(title: "Borrow", image: nil, tag:1)
             borrow.tabBarItem.image =  UIImage(named:"borrowtab")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
            
          
            window.makeKeyAndVisible()
                  }
        return true
    }
    
   
}
