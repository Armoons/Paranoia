//
//  ViewController2.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 07.12.2022.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 196/255, green: 145/255, blue: 172/255, alpha: 1)
        self.view.addBackground(page: .startPage)
        
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.backIndicatorImage = UIImage(named: "backButton_image")
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "backButton_image")
    }
    

    @IBAction func butt(_ sender: Any) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
