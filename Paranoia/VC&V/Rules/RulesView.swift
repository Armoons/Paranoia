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
        
        for ui in [scrollView] {
            self.addSubview(ui)
        }
        scrollView.snp.makeConstraints{
            $0.edges.equalTo(safeAreaLayoutGuide)
        }
        
        scrollView.addSubview(contentView)
        
        contentView.snp.makeConstraints{
            $0.width.top.bottom.centerX.equalToSuperview()
        }
        


    }
}
