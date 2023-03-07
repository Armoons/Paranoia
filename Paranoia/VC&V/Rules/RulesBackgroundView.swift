//
//  RulesBackgroundView.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 07.03.2023.
//

import Foundation
import UIKit

class RulesBackgroundView: UIView {
    
    private let backImage: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.rulesBackground
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
        self.addSubview(backImage)
        
        backImage.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
    }
}
