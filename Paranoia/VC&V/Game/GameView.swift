//
//  GameView.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 14.12.2022.
//

import UIKit

class GameView: UIView {
    
    private var numberOfBackgrounds = 0
    
    private let titleImage: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.title
        return iv
    }()
    
    private let readyTapView: UIView = {
        let v = UIView()
        return v
    }()
    
    private let backgroundView: UIView = {
        let v = UIView()
        return v
    }()
    
    private let baloonImage: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.baloon
        return iv
    }()
    
    private let pressImage: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.pressIfReady
        return iv
    }()

    private let questionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.init(name: "Paranoia_font_by_LKA", size: 35)
        label.textColor = .white
        label.textAlignment = .right
        label.numberOfLines = 0
        return label
    }()
    
    private let nextOneButton: UIButton = {
        let b = UIButton(type: .custom)
        b.addTarget(self, action: #selector(nextQuestionTapped), for: .touchUpInside)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.setImage(Images.nextArrow, for: .normal)
        return b
    }()
    
    private let background1: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.regularMan
        iv.isHidden = true
        return iv
    }()
    
    private let background2: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.flatMonster
        iv.isHidden = true
        return iv
    }()

    private let background3: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.strangeCat
        iv.isHidden = true
        return iv
    }()
    
    private let background4: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.strangerHalf
        iv.isHidden = true
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        startBackground()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getQuestion() {
        let questionText = Game.shared.selectQuestion()
        self.questionLabel.text = questionText
    }
    
    @objc func startTapped(){
        Music.shared.tapSound()
        questionBackground()
        getQuestion()
    }
    
    @objc func nextQuestionTapped(){
        Music.shared.tapSound()
        startBackground()
    }
    
    func questionBackground() {
        
        let backgrounds = [background1, background2, background3, background4]
        
        backgrounds[numberOfBackgrounds].isHidden = false

        for show in [questionLabel, nextOneButton] {
            show.isHidden = false
        }
        
        for hide in [baloonImage, pressImage, readyTapView] {
            hide.isHidden = true
        }
    }
    
    func startBackground() {
        
        let backgrounds = [background1, background2, background3, background4]
        
        backgrounds[numberOfBackgrounds].isHidden = true
        numberOfBackgrounds =  (numberOfBackgrounds + 1) % 4
        
        for show in [baloonImage, pressImage, readyTapView] {
            show.isHidden = false
        }
        
        for hide in [backgroundView, nextOneButton, questionLabel] {
            hide.isHidden = true
        }
    }
    
    func setupUI() {
        self.backgroundColor = Colors.backgroundColor
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(startTapped))
        readyTapView.addGestureRecognizer(tapGestureRecognizer)

        for ui in [titleImage, baloonImage, pressImage, questionLabel, nextOneButton, readyTapView, backgroundView, background1, background2, background3, background4] {
            self.addSubview(ui)
        }
        
        for i in [background1, background2, background3, background4] {
            self.sendSubviewToBack(i)
        }
        
        background1.snp.makeConstraints{
            $0.top.equalTo(titleImage.snp.bottom).inset(-10)
            $0.right.equalToSuperview().inset(-20)
        }
        
        background2.snp.makeConstraints{
            $0.left.equalToSuperview().inset(-50)
            $0.bottom.equalTo(questionLabel.snp.top).inset(-50)
        }
        
        background3.snp.makeConstraints{
            $0.left.equalToSuperview().inset(-50)
            $0.top.equalTo(titleImage.snp.bottom).inset(20)
        }
        
        readyTapView.snp.makeConstraints{
            $0.edges.equalToSuperview()
            $0.width.equalToSuperview()
        }
        
        backgroundView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        
        background4.snp.makeConstraints{
            $0.topMargin.equalToSuperview().inset(20)
            $0.leading.equalToSuperview()
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
        
        questionLabel.snp.makeConstraints{
            $0.trailing.leading.equalToSuperview().inset(20)
            $0.bottom.equalTo(nextOneButton.snp_topMargin).inset(-40)
        }
        
        nextOneButton.snp.makeConstraints{
            $0.bottomMargin.equalToSuperview().inset(30)
            $0.trailing.equalToSuperview().inset(30)
            $0.height.equalTo(50)
            $0.width.equalTo(84)
        }
    }
}
