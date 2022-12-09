//
//  StartView.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 10.12.2022.
//

import UIKit
import SnapKit

class StartView: UIView {
    
    private let titleImage: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.title
        return iv
    }()
    
    private let startButton: WhiteDefaultButton = {
        let b = WhiteDefaultButton(title: "НАЧАТЬ")
        return b
    }()
    
    private let rulesButton: WhiteDefaultButton = {
        let b = WhiteDefaultButton(title: "ПРАВИЛА")
        return b
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        self.backgroundColor = Colors.backgroundColor
        self.addBackground(page: .startPage)
        
        
        for view in [titleImage, startButton, rulesButton] {
            self.addSubview(view)
        }
        
        titleImage.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.topMargin.equalToSuperview().offset(10)
            $0.width.equalTo(257)
            $0.height.equalTo(59)
        }
        
        startButton.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(40)
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().offset(-(30+85))
        }
        
        rulesButton.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(40)
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().offset(30)
        }
    }
}
