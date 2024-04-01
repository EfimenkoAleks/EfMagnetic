//
//  AppDelegate.swift
//  EfMagnetic
//
//  Created by Aleksandr on 01.04.2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
        window = UIWindow(frame: UIScreen.main.bounds)
        
        _ = MagneticCoordinator(with: window)
        
        return true
    }
}
