//
//  startViewController.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 10.12.2022.
//

import UIKit

class startViewController: UIViewController {
    
//    navigationController?.navigationBar.tintColor = .white
//    navigationController?.navigationBar.backIndicatorImage = UIImage(named: "backButton_image")
//    navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "backButton_image")
    
    override func loadView() {
        self.view = StartView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() {
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)
    }
}

