//
//  StartViewController.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 11.12.2022.
//

import UIKit

class StartViewController: UIViewController {
    
    private let startView = StartView()
    private let categoryVC = CategoryViewController()
//    navigationController?.navigationBar.tintColor = .white
//    navigationController?.navigationBar.backIndicatorImage = UIImage(named: "backButton_image")
//    navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "backButton_image")
    
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
                print("b")
            }
        }
    }
}
