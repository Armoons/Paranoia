//
//  WhiteDefaultButton.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 10.12.2022.
//

import UIKit

class WhiteDefaultButton: UIButton {
    
    init(title: String) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        self.layer.cornerRadius = 30
        self.backgroundColor = .white
        self.titleLabel?.font = UIFont.systemFont(ofSize: 37)
        self.titleLabel?.textColor = .white
        self.setTitleColor(.black, for: .normal)
        
        self.snp.makeConstraints {
            $0.height.equalTo(85)
        }
    }
}
