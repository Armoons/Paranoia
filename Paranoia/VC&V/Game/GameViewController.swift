//
//  GameViewController.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 14.12.2022.
//

import UIKit

class GameViewController: UIViewController {
    
    let gameView = GameView()
    private var needStartUI = false

    override func loadView() {
        self.view = gameView
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("---!! Game didAppear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        needStartUI ? gameView.startBackground() : nil
        needStartUI = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("---!! Game didLoad")
        
        navigationController?.navigationBar.topItem?.title = ""
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        needStartUI = true
    }
}
