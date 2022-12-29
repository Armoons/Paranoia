//
//  WhiteDefaultButton.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 10.12.2022.
//

import UIKit

class WhiteDefaultButton: UIButton {
    
    private var fontSize: CGFloat = 0
    
    init(title: String, size: CGFloat) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.fontSize = size
        self.titleLabel?.font
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        self.layer.cornerRadius = 30
        self.backgroundColor = .white
        self.titleLabel?.font = UIFont.init(name: "Paranoia_font_by_LKA", size: fontSize)
        self.titleLabel?.textColor = .white
        self.setTitleColor(.black, for: .normal)
        
        self.snp.makeConstraints {
            $0.height.equalTo(85)
        }
    }
}
