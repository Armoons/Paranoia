//
//  CategoryView.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 11.12.2022.
//

import UIKit

class CategoryView: UIView {
    
    var completion: (()->())?
        
    private let niceButton: WhiteDefaultButton = {
        let b = WhiteDefaultButton(title: "Приятные", size: 40)
        b.addTarget(self, action: #selector(niceTapped), for: .touchUpInside)
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    
    private let nastyButton: WhiteDefaultButton = {
        let b = WhiteDefaultButton(title: "Неприятные", size: 40)
        b.addTarget(self, action: #selector(nastyTapped), for: .touchUpInside)

        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    
    private let interestingButton: WhiteDefaultButton = {
        let b = WhiteDefaultButton(title: "Интересные", size: 40)
        b.addTarget(self, action: #selector(intesersingTapped), for: .touchUpInside)
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    
    private let vulgarButton: WhiteDefaultButton = {
        let b = WhiteDefaultButton(title: "18+", size: 40)
        b.addTarget(self, action: #selector(vulgarTapped), for: .touchUpInside)
        b.translatesAutoresizingMaskIntoConstraints = false

        return b
    }()
    
    private let categotyStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .equalSpacing
        stack.alignment = .center
        stack.spacing = 30
        return stack
    }()
    
    private let nextButton: UIButton = {
        let b = UIButton(type: .custom)
        b.addTarget(self, action: #selector(nextTapped), for: .touchUpInside)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.setImage(Images.nextArrow, for: .normal)
        return b
    }()
    
    private let titleIV: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.chooseCategory
        return iv
    }()
    
    private let titleImage: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.chooseCategory
        return iv
    }()
    
    
    private let rexImage: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.rex
        return iv
    }()
    
    private let happyImage: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.happy
        return iv
    }()
    
    private let random1Image: UIImageView = {
        let iv = UIImageView()
        iv.image = Images.random1
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @objc func nextTapped(sender: UIButton) {
        Music.shared.tapSound()
        self.completion!()
    }
    
    func tappedButton(button: WhiteDefaultButton, category: Categories) {
        print("isSelected", button.isSelected)
        
        if button.isSelected {
            Game.shared.unselectCategory(category)
            button.backgroundColor = .white
        } else {
            Game.shared.selectCategory(category)
            button.backgroundColor = .gray
        }
        button.isSelected = !button.isSelected
    }
    
    @objc func niceTapped(sender: UIButton) {
        Music.shared.tapSound()
        self.tappedButton(button: niceButton, category: .nice)
        nextButton.isEnabled = !Game.shared.isCategoryEmpty()
        Game.shared.show()
    }
    
    @objc func nastyTapped(sender: UIButton) {
        Music.shared.tapSound()
        self.tappedButton(button: nastyButton, category: .nasty)
        nextButton.isEnabled = !Game.shared.isCategoryEmpty()
        Game.shared.show()
    }
    
    @objc func intesersingTapped(sender: UIButton) {
        Music.shared.tapSound()
        self.tappedButton(button: interestingButton, category: .interesting)
        nextButton.isEnabled = !Game.shared.isCategoryEmpty()
        Game.shared.show()

    }
    
    @objc func vulgarTapped(sender: UIButton) {
        Music.shared.tapSound()
        self.tappedButton(button: vulgarButton, category: .vulgar)
        nextButton.isEnabled = !Game.shared.isCategoryEmpty()
        Game.shared.show()
    }
    
    func updateUI() {
        nextButton.isEnabled = !Game.shared.isCategoryEmpty()
        for b in [niceButton, nastyButton, interestingButton, vulgarButton] {
            if b.isSelected {
                b.isSelected = false
                b.backgroundColor = .white
            }
        }
    }
    
    func setupUI() {
        self.backgroundColor = Colors.backgroundColor
        self.addBackground(page: .categoryPage)
        
        nextButton.isEnabled = !Game.shared.isCategoryEmpty()
        
        for ui in [categotyStackView, rexImage, happyImage, random1Image, nextButton, titleIV] {
            self.addSubview(ui)
        }
        
        for b in [niceButton, nastyButton, interestingButton, vulgarButton] {
            categotyStackView.addArrangedSubview(b)
            b.snp.makeConstraints{
                $0.leading.trailing.equalToSuperview().inset(40)
            }
        }
        
        categotyStackView.snp.makeConstraints{
            $0.center.equalToSuperview()
            $0.left.right.equalToSuperview().inset(40)
        }
        
        nextButton.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(categotyStackView.snp.bottom).offset(40)
        }
        
        titleIV.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.topMargin.equalToSuperview().offset(10)
            $0.width.equalTo(241)
            $0.height.equalTo(120)
        }
    }
}
