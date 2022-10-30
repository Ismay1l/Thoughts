//
//  SignInVC.swift
//  Thoughts
//
//  Created by Ismayil Ismayilov on 17.08.22.
//

import UIKit

class SignInVC: UITabBarController {
    
    //MARK: - UI Elements
    private lazy var headerView = SignInHeaderView()
    private lazy var emailStackView = getStackView()
    private lazy var passwordStackView = getStackView()
    private lazy var buttonStackView = getStackView()
    
    private lazy var emailTextField: TextField = {
        let field = TextField()
        let textColor = UIColor.secondaryLabel
        field.attributedPlaceholder = NSAttributedString(string: "Enter your email",
                                                         attributes: [NSAttributedString.Key.foregroundColor: textColor, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14, weight: .regular)])
        field.layer.cornerRadius = 10
        field.clipsToBounds = true
        field.layer.borderWidth = 1
        let borderColor = UIColor.white.cgColor
        field.layer.borderColor = borderColor
        field.textColor = hexStringToUIColor(hex: "231F20")
        field.font = .systemFont(ofSize: 14, weight: .semibold)
        return field
    }()
    
    private lazy var passwordTextField: TextField = {
        let field = TextField()
        let textColor = UIColor.secondaryLabel
        field.attributedPlaceholder = NSAttributedString(string: "Enter your password",
                                                         attributes: [NSAttributedString.Key.foregroundColor: textColor, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14, weight: .regular)])
        field.layer.cornerRadius = 10
        field.clipsToBounds = true
        field.layer.borderWidth = 1
        let borderColor = UIColor.white.cgColor
        field.layer.borderColor = borderColor
        field.textColor = hexStringToUIColor(hex: "231F20")
        field.font = .systemFont(ofSize: 14, weight: .semibold)
        field.isSecureTextEntry = true
        return field
    }()
    
    private lazy var signInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        button.backgroundColor = .systemGreen
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(didTapSignIn(_:)), for: .touchUpInside)
        return button
    }()
    
    private lazy var createAccountButton: UIButton = {
        let button = UIButton()
        button.setTitle("Create Account", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        button.backgroundColor = .link
        button.layer.cornerRadius = 12
        button.addTarget(self, action: #selector(didTapCreateAccount(_:)), for: .touchUpInside)
        return button
    }()

    //MARK: - Parent Delegate
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign in"
        view.backgroundColor = .systemBackground
        
//        showPremiumVC()
        configureConstraints()
        dismissKeyboardGesture()
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
    
    private func configureConstraints() {
        view.addSubview(headerView)
        view.addSubview(emailStackView)
        view.addSubview(passwordStackView)
        view.addSubview(buttonStackView)
        
        let top = view.safeAreaLayoutGuide.snp.top
        let left = view.safeAreaLayoutGuide.snp.left
        let right = view.safeAreaLayoutGuide.snp.right
        let bottom = view.safeAreaLayoutGuide.snp.bottom
        
        headerView.snp.makeConstraints { make in
            make.left.equalTo(left)
            make.right.equalTo(right)
            make.top.equalTo(top)
            make.height.equalTo(150)
        }
        
        emailStackView.addArrangedSubview(emailTextField)
        emailStackView.snp.makeConstraints { make in
            make.top.equalTo(headerView.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(25)
            make.right.equalToSuperview().offset(-25)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(emailStackView.snp.width)
        }
        
        passwordStackView.addArrangedSubview(passwordTextField)
        passwordStackView.snp.makeConstraints { make in
            make.top.equalTo(emailStackView.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(25)
            make.right.equalToSuperview().offset(-25)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(passwordStackView.snp.width)
        }
        
        buttonStackView.spacing = 16
        buttonStackView.addArrangedSubview(signInButton)
        buttonStackView.addArrangedSubview(createAccountButton)
        buttonStackView.snp.makeConstraints { make in
            make.bottom.equalTo(bottom).offset(-20)
            make.left.equalToSuperview().offset(25)
            make.right.equalToSuperview().offset(-25)
        }
        
        signInButton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(buttonStackView.snp.width)
        }
        
        createAccountButton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(buttonStackView.snp.width)
        }
    }
    
    private func dismissKeyboardGesture() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc
    private func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @objc
    private func didTapSignIn(_ sender: UIButton) {
        print("Sign in")
    }
    
    @objc
    private func didTapCreateAccount(_ sender: UIButton) {
        print("Create an account")
    }
}
