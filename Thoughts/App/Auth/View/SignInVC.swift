//
//  SignInVC.swift
//  Thoughts
//
//  Created by Ismayil Ismayilov on 17.08.22.
//

import UIKit

class SignInVC: UITabBarController {

    //MARK: - Parent Delegate
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign in"
        view.backgroundColor = .systemBackground
        
        showPremiumVC()
    }
    
    //MARK: - Functions
    private func showPremiumVC() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            if !IAPManager.shared.isPremium() {
                let vc = PayWallVC()
                let navVC = UINavigationController(rootViewController: vc)
                self.present(navVC, animated: true)
            }
        }
    }
}
