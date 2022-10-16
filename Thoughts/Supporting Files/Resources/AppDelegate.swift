//
//  AppDelegate.swift
//  Thoughts
//
//  Created by Ismayil Ismayilov on 17.08.22.
//

import UIKit
import Firebase

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        //TODO: -  Update VC to sign in VC if not signed in
        
        FirebaseApp.configure()
        
        let vc: UIViewController
        
        if AuthManager.shared.isSignedIn {
            vc = TabBarController()
        } else {
            let signInVC = SignInVC()
            signInVC.navigationItem.largeTitleDisplayMode = .always
            let navigationVC = UINavigationController(rootViewController: signInVC)
            navigationVC.navigationBar.prefersLargeTitles = true
            vc = navigationVC
        }
        
        
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

//    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//        // Called when a new scene session is being created.
//        // Use this method to select a configuration to create the new scene with.
//        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
//    }
//
//    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
//        // Called when the user discards a scene session.
//        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//    }


}

