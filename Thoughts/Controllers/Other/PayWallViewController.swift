//
//  PayWallViewController.swift
//  Thoughts
//
//  Created by Ismayil Ismayilov on 22.08.22.
//

import UIKit

class PayWallViewController: UIViewController {
    
   private let headerView = PayWallHeaderView()
    
    private lazy var buyButton: UIButton = {
        let button = UIButton()
        button.setTitle("Subscribe", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        return button
    }()
    
    private lazy var restoreButton: UIButton = {
        let button = UIButton()
        button.setTitle("Restore Purchases", for: .normal)
        button.setTitleColor(UIColor.link, for: .normal)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        return button
    }()
    
    private lazy var termsView: UITextView = {
        let view = UITextView()
        view.isEditable = false
        view.textAlignment = .center
        view.font = .systemFont(ofSize: 14)
        view.textColor = .secondaryLabel
        view.text = "This is an auto-renewable Subscriptions. It will be charged to your iTunes account before each pay period. You can cancel anytime by going into you Settings > Subscriptions. Restore purchases if previously subscribed."
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Thoughts Premium"
        view.backgroundColor = .systemBackground
        
        configureConstraints()
        setUpCloseButton()
    }
    
    private func configureConstraints() {
        
        view.addSubview(headerView)
        view.addSubview(buyButton)
        view.addSubview(restoreButton)
        view.addSubview(termsView)
        
        headerView.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.width.equalTo(view.width)
            make.height.equalTo(view.height / 3.2)
        }
        
        termsView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(5)
            make.right.equalToSuperview().offset(-5)
            make.bottom.equalToSuperview().offset(-10)
            make.height.equalTo(100)
        }
        
        restoreButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(termsView.snp.top).offset(-20)
        }
        
        buyButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(restoreButton.snp.top).offset(-10)
            make.width.equalTo(view.width - 50)
            make.height.equalTo(50)
        }
    }
    
    private func setUpCloseButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close,
                                                            target: self,
                                                            action: #selector(didTapClose))
    }
    
    @objc private func didTapClose() {
        dismiss(animated: true)
    }
}
