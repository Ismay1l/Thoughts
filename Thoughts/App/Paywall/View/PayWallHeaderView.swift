//
//  PayWallHeaderView.swift
//  Thoughts
//
//  Created by Ismayil Ismayilov on 22.08.22.
//

import UIKit
import SnapKit

class PayWallHeaderView: UIView {
    
    //MARK: - UI Elements
    private lazy var headerImageView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "ic_crown"))
        view.tintColor = .white
        view.contentMode = .scaleAspectFit
        return view
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
        backgroundColor = .systemPink
        clipsToBounds = true
        addSubview(headerImageView)
        
        headerImageView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.width.equalTo(110)
        }
    }
}
