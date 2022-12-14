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
      
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupUI() {
        
        for ui in [titleImage] {
            self.addSubview(ui)
        }
        
        titleImage.snp.makeConstraints{
            $0.center.equalToSuperview()
//            $0.topMargin.equalToSuperview().offset(10)
//            $0.width.equalTo(titleImage.snp.height).multipliedBy(217 / 69)
        }
    }
}
