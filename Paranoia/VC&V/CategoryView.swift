//
//  CategoryView.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 11.12.2022.
//

import UIKit

class CategoryView: UIView {
        
    private let niceButton: WhiteDefaultButton = {
        let b = WhiteDefaultButton(title: "Приятные")
        b.addTarget(self, action: #selector(niceTapped), for: .touchUpInside)
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    
    private let nastyButton: WhiteDefaultButton = {
        let b = WhiteDefaultButton(title: "Неприятные")
        b.addTarget(self, action: #selector(nastyTapped), for: .touchUpInside)

        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    
    private let interestingButton: WhiteDefaultButton = {
        let b = WhiteDefaultButton(title: "Интересные")
        b.addTarget(self, action: #selector(intesersingTapped), for: .touchUpInside)
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    
    private let vulgarButton: WhiteDefaultButton = {
        let b = WhiteDefaultButton(title: "18+")
        b.addTarget(self, action: #selector(vulgarTapped), for: .touchUpInside)
        b.translatesAutoresizingMaskIntoConstraints = false

        return b
    }()
    
    private let categotyStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .equalSpacing
        stack.alignment = .center
        stack.spacing = 40
        return stack
    }()
    
    private let nextButton: UIButton = {
        let b = UIButton(type: .custom)
        b.addTarget(self, action: #selector(nextTapped), for: .touchUpInside)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.setImage(Images.nextArrow, for: .normal)

        return b
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

    }
        
    
    func tappedButton(button: WhiteDefaultButton, category: Categories) {
        button.isSelected ? Game.shared.unselectCategory(category) : Game.shared.selectCategory(category)
        button.isSelected = !button.isSelected

    }
    
    
    @objc func niceTapped(sender: UIButton) {
        self.tappedButton(button: niceButton, category: .nice)
        Game.shared.show()
    }
    
    @objc func nastyTapped(sender: UIButton) {
        self.tappedButton(button: nastyButton, category: .nasty)
        Game.shared.show()

    }
    
    @objc func intesersingTapped(sender: UIButton) {
        self.tappedButton(button: interestingButton, category: .interesting)
        Game.shared.show()

    }
    
    @objc func vulgarTapped(sender: UIButton) {
        self.tappedButton(button: vulgarButton, category: .vulgar)
        Game.shared.show()
    }
    
    func setupUI() {
        self.backgroundColor = Colors.backgroundColor
        self.addBackground(page: .categoryPage)
        
        for ui in [categotyStackView, rexImage, happyImage, random1Image, nextButton, titleImage] {
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
        
        titleImage.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.topMargin.equalToSuperview().offset(10)
            $0.width.equalTo(titleImage.snp.height).multipliedBy(188 / 94)

        }
        //896 374
        //414 96
//        rexImage.snp.makeConstraints{
//            $0.leading.equalToSuperview()
//            $0.bottom.equalToSuperview()
//            $0.topMargin.equalToSuperview().inset(heightOfView * 2/3)
//            $0.width.equalTo(rexImage.snp.height).multipliedBy(96/374)
//
//        }

    }

}
