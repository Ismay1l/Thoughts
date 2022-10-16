//
//  PayWallDescriptionView.swift
//  Thoughts
//
//  Created by Ismayil Ismayilov on 22.08.22.
//

import UIKit

class PayWallDescriptionView: UIView {
    
    //MARK: - UI Elements
    private lazy var descriptorLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 22, weight: .medium)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = "Join Thoughts Premium to read unlimited articles!"
        return label
    }()
    
    private lazy var priceLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .thin)
        label.textAlignment = .center
        label.numberOfLines = 1
        label.text = "$4.99 / month"
        return label
    }()
    
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
        clipsToBounds = true
        configureConstraints()
    }
    
    private func configureConstraints() {
        addSubview(descriptorLabel)
        addSubview(priceLabel)
        
        descriptorLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalToSuperview()
            make.width.equalTo(width - 40)
            make.height.equalTo(height/2)
        }
        
        priceLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(descriptorLabel.snp.bottom).offset(20)
            make.width.equalTo(width - 40)
            make.height.equalTo(height/2)
        }
    }
}
