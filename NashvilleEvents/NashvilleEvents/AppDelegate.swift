//
//  AppDelegate.swift
//  NashvilleEvents
//
//  Created by Christopher Constable on 6/10/16.
//
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        // Model-View-Controller MVC
        // ("massive view controller")
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        let viewController = ViewController()
        window?.rootViewController = UINavigationController(rootViewController: viewController)
        window?.makeKeyAndVisible()
        
        return true
    }
}
