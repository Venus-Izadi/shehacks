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
        if let window = window {
            window.backgroundColor = UIColor.whiteColor()
            var navigationController = UINavigationController()
            let screenSize: CGRect = UIScreen.mainScreen().bounds
            let tabBarController = UITabBarController()
            
            let list = UINavigationController()
            list.pushViewController( ListViewController(), animated: false)
            let giveAway = GiveAwayViewController()
            
            let borrow = BorrowViewController()
            
            let controllers = [borrow, giveAway, list ]
            tabBarController.view.frame = screenSize
            tabBarController.viewControllers = controllers
            
            window.rootViewController = tabBarController
            //  let firstImage = UIImage(named: &amp;quot;pie bar icon&amp;quot;)
            // let secondImage = UIImage(named: &amp;quot;pizza bar icon&amp;quot;)
            list.tabBarItem = UITabBarItem(title: "List", image: nil, tag: 3)
            giveAway.tabBarItem = UITabBarItem(title: "Give Away", image: nil, tag:2)
            borrow.tabBarItem = UITabBarItem(title: "Borrow", image: nil, tag:1)
            
            window.makeKeyAndVisible()
        }
        return true
    }

}
