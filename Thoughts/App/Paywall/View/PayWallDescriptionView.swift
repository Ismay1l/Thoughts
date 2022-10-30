//
//  PayWallDescriptionView.swift
//  Thoughts
//
//  Created by Ismayil Ismayilov on 22.08.22.
//

import UIKit

class PayWallDescriptionView: UIView {
    
    //MARK: - UI Elements
    private lazy var descriptorLabel = createLabel(size: 22, weight: .medium, alignment: .center, numberOfLInes: 0, text: "Join Thoughts Premium to read unlimited articles!", textColor: .white)
    
    private lazy var priceLabel = createLabel(size: 18, weight: .thin, alignment: .center, numberOfLInes: 1, text: "$4.99 / month", textColor: .white)
    
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
            make.top.equalToSuperview().offset(40)
            make.right.equalToSuperview().offset(-20)
        }
        
        priceLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(descriptorLabel.snp.bottom).offset(20)
            make.right.equalToSuperview().offset(-20)
        }
    }
}
