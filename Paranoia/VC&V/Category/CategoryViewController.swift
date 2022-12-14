//
//  CategoryViewController.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 11.12.2022.
//

import UIKit

class CategoryViewController: UIViewController {
    
    private let categoryView = CategoryView()
    private let gameVC = GameViewController()
    
    override func loadView() {
        self.view = categoryView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.backIndicatorImage = Images.backButtonCategory
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = Images.backButtonCategory
        
        categoryView.completion = {
            self.navigationController?.show(self.gameVC, sender: self)
        }
    }
    


}
