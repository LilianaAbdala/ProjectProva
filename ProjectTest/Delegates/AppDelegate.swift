//
//  AppDelegate.swift
//  ProjectTest
//
//  Created by Liliana Porto Abdala on 06/01/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .black
        
        window?.rootViewController = UINavigationController(rootViewController: LoginViewController())
        
        return true
    }

}


