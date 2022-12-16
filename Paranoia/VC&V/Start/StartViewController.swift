//
//  StartViewController.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 11.12.2022.
//

import UIKit

class StartViewController: UIViewController {
    
    private let startView = StartView()
    private let rulesVC = RulesViewController()
    private let categoryVC = CategoryViewController()
    
    override func loadView() {
        self.view = startView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        startView.completion = { type in
            switch type {
            case .startButton:
                self.navigationController?.show(self.categoryVC, sender: self)
            case .rulesButton:
                self.navigationController?.show(self.rulesVC, sender: self)
            }
        }
    }
}
