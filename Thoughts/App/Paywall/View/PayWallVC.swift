//
//  PayWallVC.swift
//  Thoughts
//
//  Created by Ismayil Ismayilov on 22.08.22.
//

import UIKit

class PayWallVC: UIViewController {
    
    //MARK: - Variables
    private let headerView = PayWallHeaderView()
    private let descriptionVIew = PayWallDescriptionView()
    
    //MARK: - UI Elements
    private lazy var subscribeButton: UIButton = {
        let button = UIButton()
        button.setTitle("Subscribe", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(didTapClose(_:)), for: .touchUpInside)
        button.layer.masksToBounds = true
        return button
    }()
    
    private lazy var restoreButton: UIButton = {
        let button = UIButton()
        button.setTitle("Restore Purchases", for: .normal)
        button.setTitleColor(UIColor.link, for: .normal)
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(didTapClose(_:)), for: .touchUpInside)
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
    
    
    //MARK: - Parent Delegate
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Thoughts Premium"
        view.backgroundColor = .systemBackground
        
        configureConstraints()
        setUpCloseButton()
    }
    
    //MARK: - Functions
    private func configureConstraints() {
        view.addSubview(headerView)
        view.addSubview(descriptionVIew)
        view.addSubview(subscribeButton)
        view.addSubview(restoreButton)
        view.addSubview(termsView)
        
        let top = view.safeAreaLayoutGuide.snp.top
        let left = view.safeAreaLayoutGuide.snp.left
        let right = view.safeAreaLayoutGuide.snp.right
        let bottom = view.safeAreaLayoutGuide.snp.bottom
        
        headerView.snp.makeConstraints { make in
            make.left.equalTo(left)
            make.top.equalTo(top)
            make.width.equalTo(view.width)
            make.height.equalTo(view.height / 3.2)
        }
        
        descriptionVIew.snp.makeConstraints { make in
            make.left.equalTo(left)
            make.right.equalTo(right)
            make.top.equalTo(headerView.snp.bottom)
            make.bottom.equalTo(subscribeButton.snp.top)
        }
        
        termsView.snp.makeConstraints { make in
            make.left.equalTo(left).offset(5)
            make.right.equalTo(right).offset(-5)
            make.bottom.equalTo(bottom).offset(-10)
            make.height.equalTo(100)
        }
        
        restoreButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(termsView.snp.top).offset(-20)
        }
        
        subscribeButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(restoreButton.snp.top).offset(-10)
            make.width.equalTo(view.width - 50)
            make.height.equalTo(50)
        }
    }
    
    private func setUpCloseButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close,
                                                            target: self,
                                                            action: #selector(didTapClose(_ :)))
    }
    
    @objc
    private func didTapClose(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
}
