//
//  SignInViewController.swift
//  Thoughts
//
//  Created by Ismayil Ismayilov on 17.08.22.
//

import UIKit

class SignInViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign in"
        view.backgroundColor = .systemBackground
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            if !IAPManager.shared.isPremium() {
                let vc = PayWallViewController()
                let navVC = UINavigationController(rootViewController: vc)
                self.present(navVC, animated: true)
            }
        }
    }
}
