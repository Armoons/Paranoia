//
//  CategoryView.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 11.12.2022.
//

import UIKit

class CategoryView: UIView {
    
    let categories = ["Приятные", "Неприятные", "Интересные", "18+"]
    
    private let niceButton: WhiteDefaultButton = {
        let b = WhiteDefaultButton(title: "Приятные")
        return b
    }()
    
    private let nastyButton: WhiteDefaultButton = {
        let b = WhiteDefaultButton(title: "Неприятные")
        return b
    }()
    
    private let insterestingButton: WhiteDefaultButton = {
        let b = WhiteDefaultButton(title: "Интересные")
        return b
    }()
    
    private let vulgarButton: WhiteDefaultButton = {
        let b = WhiteDefaultButton(title: "18+")
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        
        self.backgroundColor = Colors.backgroundColor
        self.addBackground(page: .categoryPage)
        
        for ui in [categotyStackView] {
            self.addSubview(ui)
        }
        
        for b in [niceButton, nastyButton, insterestingButton, vulgarButton] {
            categotyStackView.addArrangedSubview(b)
        }
        
        categotyStackView.snp.makeConstraints{
            $0.center.equalToSuperview()
            $0.left.right.equalToSuperview().inset(40)
        }

    }

}
