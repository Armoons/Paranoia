//
//  RuleLabel.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 19.12.2022.
//

import UIKit

class RuleLabel: UILabel {

    
    init(text: String) {
        super.init(frame: .zero)
        self.text = text

    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.font = UIFont.systemFont(ofSize: 35)
        self.textColor = .white
        self.textAlignment = .center
        self.numberOfLines = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
