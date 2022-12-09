//
//  StartView.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 10.12.2022.
//

import UIKit

class StartView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        self.backgroundColor = Colors.backgroundColor
        self.addBackground(page: .startPage)
        
//        navigationController?.navigationBar.tintColor = .white
//        navigationController?.navigationBar.backIndicatorImage = UIImage(named: "backButton_image")
//        navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "backButton_image")

    }

}
