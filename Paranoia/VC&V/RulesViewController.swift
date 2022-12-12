//
//  RulesViewController.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 13.12.2022.
//

import UIKit

class RulesViewController: UIViewController {
    
    private let rulesView = RulesView()
    
    override func loadView() {
        self.view = rulesView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.backIndicatorImage = Images.backButtonRules
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = Images.backButtonRules

    }
    
}
