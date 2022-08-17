//
//  ProfileViewController.swift
//  Thoughts
//
//  Created by Ismayil Ismayilov on 17.08.22.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let signOutButton = UIBarButtonItem(title: "Sign out",
                                            style: .done,
                                            target: self,
                                            action: #selector(didTapSignOut))
        
        navigationItem.rightBarButtonItem = signOutButton
    }
    
    @objc private func didTapSignOut() {
        print("Did tap Sign out")
    }
}
