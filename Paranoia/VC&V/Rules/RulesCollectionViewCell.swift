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
    private var backImageV = UIImageView()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        self.addSubview(imageV)
        self.addSubview(backImageV)
        self.sendSubviewToBack(backImageV)
        
        self.clipsToBounds = true
        
        imageV.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        
        backImageV.snp.makeConstraints{
            $0.center.equalToSuperview()
        }
    }
    
    func setup(_ slide: RulesOnboardingModel) {
        self.imageV.image = slide.image
        self.backImageV.image = slide.backgroundImage
        
//        topLabel.text = slide.fLabel
//        bottomLabel.text = slide.sLabel
//        middleImage.image = slide.mImage
//        backgroundImage.image = slide.backImage
    }

}
