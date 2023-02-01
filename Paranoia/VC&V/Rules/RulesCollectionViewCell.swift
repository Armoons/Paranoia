//
//  RulesCollectionViewCell.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 31.01.2023.
//

import UIKit
import SnapKit

class RulesCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "RulesCollectionViewCell"
    private var imageV = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        self.addSubview(imageV)
        
        imageV.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(10)
            $0.top.equalToSuperview()
            
        }
    }
    
    func setup(_ slide: RulesOnboardingModel) {
        self.imageV.image = slide.image
        
//        topLabel.text = slide.fLabel
//        bottomLabel.text = slide.sLabel
//        middleImage.image = slide.mImage
//        backgroundImage.image = slide.backImage
    }

}
