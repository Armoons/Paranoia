//
//  GameViewController.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 14.12.2022.
//

import UIKit

class GameViewController: UIViewController {
    
    let gameView = GameView()
    
    override func loadView() {
        self.view = gameView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.topItem?.title = ""


    }

}
