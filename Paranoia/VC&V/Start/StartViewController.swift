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

        
        let launchedBefore = UserDefaults.standard.bool(forKey: "launchedBefore")
        if launchedBefore  {
            print("Not first launch.")
        } else {
            print("First launch, setting UserDefault.")
            UserDefaults.standard.set(true, forKey: "launchedBefore")
            Music.shared.music(.play)
        }
        
        UserDefaults.standard.bool(forKey: "Music") ? Music.shared.music(.play) : nil
        
        
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        startView.hideSettings()
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
