//
//  TabBarController.swift
//  Thoughts
//
//  Created by Ismayil Ismayilov on 17.08.22.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpControllers()
        setUpTabBarAppearance()
    }
    
    private func setUpControllers() {
        let homeVC = HomeVC()
        homeVC.title = "Home"
        
        let profileVC = ProfileVC()
        profileVC.title = "Profile"
        
        homeVC.navigationItem.largeTitleDisplayMode = .always
        profileVC.navigationItem.largeTitleDisplayMode = .always
        
        let nav1 = UINavigationController(rootViewController: homeVC)
        let nav2 = UINavigationController(rootViewController: profileVC)
        
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        
        nav1.navigationBar.barStyle = .default
        nav1.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.systemBrown]
        
        nav2.navigationBar.barStyle = .default
        nav2.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.systemBrown]
        
        nav1.tabBarItem = UITabBarItem(title: "Home",
                                       image: UIImage(systemName: "house"),
                                       tag: 1)
        
        nav2.tabBarItem = UITabBarItem(title: "Profile",
                                       image: UIImage(systemName: "person.circle"),
                                       tag: 2)
        
        let navs = [nav1, nav2]
        setViewControllers(navs, animated: true)
    }
    
    private func setUpTabBarAppearance() {
        UITabBar.appearance().barTintColor = .black
        tabBar.tintColor = .systemOrange
        tabBar.barStyle = .default
        tabBar.isTranslucent = true
        tabBar.backgroundColor = .clear
    }
}
