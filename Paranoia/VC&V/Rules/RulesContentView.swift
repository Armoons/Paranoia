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
    
    private let eyeImage: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.eye
        return iv
    }()
        
    private let firstLabel: UILabel = {
        let label = UILabel()
        label.attributedText = NSMutableAttributedString()
//            .bold("Паранойя - ")
            .normal("Паранойя - игра, благодарая которой Вы можете узнать все мыслишки своих друзей")
//            .normal("своих друзей")

        label.textColor = .white
        label.textAlignment = .center
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
        
        for ui in [titleImage, firstLabel, eyeImage] {
            self.addSubview(ui)
        }
        
        titleImage.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().inset(10)
            $0.height.equalTo(69)
            $0.width.equalTo(217)
        }
        
        firstLabel.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.width.equalToSuperview()
            $0.top.equalTo(titleImage.snp.bottom).offset(15)
        }
        
        eyeImage.snp.makeConstraints{
            $0.top.equalTo(firstLabel.snp.bottom).offset(15)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(88)
            $0.width.equalTo(213)
        }
    }
}
