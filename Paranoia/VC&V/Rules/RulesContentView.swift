//
//  RulesContentView.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 13.12.2022.
//

import Foundation
import UIKit

class RulesContentView: UIView {
    
    private let titleImage: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.rulesTitle
        return iv
    }()
    
    private let questionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 35)
        label.textColor = .white
        label.textAlignment = .right
        label.text = ""
        label.numberOfLines = 0
        return label
    }()
      
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false

        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupUI() {
        
        self.backgroundColor = .green
        
        for ui in [titleImage] {
            self.addSubview(ui)
        }
        
//        questionLabel.snp.makeConstraints{
//            $0.centerX.equalToSuperview()
//            $0.top.equalToSuperview().inset(10)
//        }
        
        titleImage.snp.makeConstraints{
            $0.centerX.equalToSuperview()
//            $0.leading.equalToSuperview().inset(10)
//            $0.trailing.equalToSuperview().inset(10)
            $0.top.equalToSuperview().inset(10)
//            $0.height.equalTo(69)
//            $0.width.equalTo(titleImage.snp.height).multipliedBy(217 / 69)
        }
    }
}
