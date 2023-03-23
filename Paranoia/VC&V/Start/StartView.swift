//
//  StartView.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 10.12.2022.
//

import UIKit
import SnapKit

class StartView: UIView {
    
    var mainButtonTapped: ((startViewButtons)->())?
    var musicButtonTapped: (() -> ())?
    var soundButtonTapped: (() -> ())?
    
    private let titleImage: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.title
        return iv
    }()
    
    private let musicIV = UIImageView()
    private let soundIV = UIImageView()
    
    private let musicLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.init(name: "Paranoia_font_by_LKA", size: 23)
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = "МУЗЫКА:"
        return label
    }()
    
    private let soundLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.init(name: "Paranoia_font_by_LKA", size: 23)
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = "ЗВУК:"
        return label
    }()
    
    private let settingsIV: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.settings
        return iv
    }()
    
    private let musicPanelIV: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.musicPanel
        return iv
    }()
    
    private let startButton: WhiteDefaultButton = {
        let b = WhiteDefaultButton(title: "НАЧАТЬ", size: 50)
        return b
    }()
    
    private let rulesButton: WhiteDefaultButton = {
        let b = WhiteDefaultButton(title: "ПРАВИЛА", size: 50)
        return b
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func startTapped(sender: UIButton) {
        Music.shared.tapSound()
        mainButtonTapped!(startViewButtons.startButton)
    }
    
    @objc func rulesTapped(sender: UIButton) {
        Music.shared.tapSound()
        mainButtonTapped!(startViewButtons.rulesButton)
    }
    
    @objc func musicTapped() {
        print("musicTapped")
        updateMusicIcon(.yes)
        musicButtonTapped!()
    }
    
    @objc func soundTapped() {
        print("soundTapped")
        updateSoundIcon(.yes)
        soundButtonTapped!()
    }
    
    @objc func settingsTapped() {
        Music.shared.tapSound()
        
        UIView.animate(withDuration: 0.5, delay: 0) {
            for ui in [self.musicPanelIV, self.soundIV, self.musicIV, self.musicLabel, self.soundLabel] {
                ui.alpha = (ui.alpha + 1).truncatingRemainder(dividingBy: 2)
            }
        }
    }
    
    func hideSettings() {
        for ui in [self.musicPanelIV, self.soundIV, self.musicIV, self.musicLabel, self.soundLabel] {
            ui.alpha = 0
        }
    }
    
    func updateMusicIcon(_ reverse: iconReverse) {
        switch reverse {
        case .yes:
            if Music.shared.isMusicActive(){
                musicIV.image = Images.musicOff
            } else {
                musicIV.image = Images.musicOn
            }
        case .no:
            if !Music.shared.isMusicActive(){
                musicIV.image = Images.musicOff
            } else {
                musicIV.image = Images.musicOn
            }
        }
        
    }
    
    func updateSoundIcon(_ reverse: iconReverse) {
        switch reverse {
        case .yes:
            if Music.shared.isSoundActive(){
                soundIV.image = Images.soundOff
            } else {
                soundIV.image = Images.soundOn
            }
        case .no:
            if !Music.shared.isSoundActive(){
                soundIV.image = Images.soundOff
            } else {
                soundIV.image = Images.soundOn
            }
        }
    }
    
    private func setupUI() {
        
        updateSoundIcon(.no)
        updateMusicIcon(.no)
      
        
        startButton.addTarget(self, action: #selector(startTapped), for: .touchUpInside)
        rulesButton.addTarget(self, action: #selector(rulesTapped), for: .touchUpInside)
        
        let settingsGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(settingsTapped))
        settingsIV.isUserInteractionEnabled = true
        settingsIV.addGestureRecognizer(settingsGestureRecognizer)
        
        let soundGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(soundTapped))
        soundIV.isUserInteractionEnabled = true
        soundIV.addGestureRecognizer(soundGestureRecognizer)
        
        let musicGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(musicTapped))
        musicIV.isUserInteractionEnabled = true
        musicIV.addGestureRecognizer(musicGestureRecognizer)
        
        self.backgroundColor = Colors.backgroundColor
        self.addBackground(page: .startPage)
        
        for view in [titleImage, startButton, rulesButton, settingsIV, musicPanelIV, soundIV, musicIV, musicLabel, soundLabel] {
            self.addSubview(view)
        }
        
        titleImage.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.topMargin.equalToSuperview().offset(10)
            $0.width.equalTo(257)
            $0.height.equalTo(59)
        }
        
        startButton.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(40)
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().offset(-(30+85))
        }
        
        rulesButton.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview().inset(40)
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().offset(30)
        }
        
        settingsIV.snp.makeConstraints{
            $0.right.equalToSuperview().inset(5)
            $0.bottom.equalToSuperview().inset(20)
            $0.width.equalTo(55)
            $0.height.equalTo(59)
        }
        
        musicPanelIV.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.right.equalTo(settingsIV.snp.left).inset(-5)
            $0.bottom.equalToSuperview().inset(27)
            $0.height.equalTo(45)
        }
        
        musicLabel.snp.makeConstraints{
            $0.left.equalTo(musicPanelIV.snp.left).inset(14)
            $0.centerY.equalTo(musicPanelIV)
        }
        
        soundIV.snp.makeConstraints{
            $0.right.equalTo(musicPanelIV.snp.right).inset(14)
            $0.centerY.equalTo(musicPanelIV)
        }
        
        musicIV.snp.makeConstraints{
            $0.left.equalTo(musicLabel.snp.right).inset(-6)
            $0.centerY.equalTo(musicPanelIV)
        }
        
        soundLabel.snp.makeConstraints{
            $0.right.equalTo(soundIV.snp.left).inset(-6)
            $0.centerY.equalTo(musicPanelIV)
        }
    }
}
