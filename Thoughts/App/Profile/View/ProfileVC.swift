//
//  ProfileVC.swift
//  Thoughts
//
//  Created by Ismayil Ismayilov on 17.08.22.
//

import UIKit

class ProfileVC: UIViewController {

    //MARK: - Parent Delegate
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setUpBarButtons()
    }
    
    //MARK: - Functions
    private func setUpBarButtons() {
        let signOutButton = UIBarButtonItem(title: "Sign out",
                                            style: .done,
                                            target: self,
                                            action: #selector(didTapSignOut(_:)))
        
        navigationItem.rightBarButtonItem = signOutButton
    }
    
    @objc
    private func didTapSignOut(_ sender: UIBarButtonItem) {
        print("Did tap Sign out")
    }
}
