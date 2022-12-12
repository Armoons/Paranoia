//
//  RulesView.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 13.12.2022.
//

import UIKit

class RulesView: UIView {
    
    private let contentView = RulesContentView()
    
    private let scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.backgroundColor = .cyan

        return sv
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
        
        scrollView.addSubview(contentView)
        
        for ui in [scrollView] {
            self.addSubview(ui)
        }
                
        scrollView.snp.makeConstraints{
            $0.leading.trailing.equalToSuperview()
            $0.top.equalTo(self.safeAreaLayoutGuide.snp.top)
            $0.bottom.equalTo(self.safeAreaLayoutGuide.snp.bottom)
            
        }

    }
}
