//
//  SignInHeaderView.swift
//  Thoughts
//
//  Created by Ismayil Ismayilov on 16.10.22.
//

import UIKit

class SignInHeaderView: UIView {
    
    //MARK: - UI Elements
    private lazy var headerImageView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "logo"))
        view.tintColor = .white
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    private lazy var headerLabel = createLabel(size: 20, weight: .medium, alignment: .center, numberOfLInes: 0, text: "Explore millions of articles!", textColor: .white)
    
    //MARK: - Parent Delegate
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    //MARK: - Functions
    private func setupUI() {
        addSubview(headerImageView)
        addSubview(headerLabel)
        
        headerImageView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(80)
        }
        
        headerLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(headerImageView.snp.bottom).offset(20)
            make.right.equalToSuperview().offset(-20)
        }
    }
}
