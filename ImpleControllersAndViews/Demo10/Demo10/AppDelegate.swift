//
//  AppDelegate.swift
//  Demo10
//
//  Created by AUTO SERVER on 11/29/19.
//  Copyright © 2019 AUTO SERVER. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        
        var mainVC = ViewController(nibName: "ViewController", bundle: nil)
        var nav = UINavigationController(rootViewController: mainVC)
        window?.rootViewController = mainVC
        window?.makeKeyAndVisible()
        return true
    }

    // MARK: UISceneSession Lifecycle

   


}

