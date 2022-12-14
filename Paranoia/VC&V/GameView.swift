//
//  GameView.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 14.12.2022.
//

import UIKit

class GameView: UIView {
    
    private let titleImage: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.title
        return iv
    }()
    
    private let baloonImage: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.baloon
        return iv
    }()
    
    private let strangerImage: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.baloon
        return iv
    }()
    
    private let pressImage: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.pressIfReady
        return iv
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func showQuestion() {
        
    }
    
    @objc func imageTapped(){
        self.showQuestion()
    }
    
    func setupUI() {
        self.backgroundColor = Colors.backgroundColor
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        pressImage.isUserInteractionEnabled = true
        pressImage.addGestureRecognizer(tapGestureRecognizer)

        for ui in [titleImage, baloonImage, pressImage, strangerImage] {
            self.addSubview(ui)
        }
        
        titleImage.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.topMargin.equalToSuperview().offset(10)
            $0.width.equalTo(257)
            $0.height.equalTo(59)
        }
        
        baloonImage.snp.makeConstraints{
            $0.top.equalTo(titleImage.snp.bottom).inset(5)
            $0.leadingMargin.equalToSuperview().inset(30)
            $0.height.equalTo(970)
            $0.width.equalTo(214)
        }
        
        pressImage.snp.makeConstraints{
            $0.trailing.equalToSuperview().inset(10)
            $0.bottomMargin.equalToSuperview().inset(15)
            $0.width.equalTo(275)
            $0.height.equalTo(80)
        }
        
        strangerImage.snp.makeConstraints{
            $0.topMargin.equalToSuperview().inset(20)
            $0.width.equalTo(853)
            $0.height.equalTo(915)
            $0.trailing.equalToSuperview().inset(-30)
        }
        
        baloonImage.isHidden = true
        
        
        
    }
}
