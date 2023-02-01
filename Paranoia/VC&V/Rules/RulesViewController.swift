//
//  RulesViewController.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 13.12.2022.
//

import UIKit

class RulesViewController: UIViewController {
    
    private let rulesView = RulesView()
    
    private var data: [RulesOnboardingModel] = []
    
    override func loadView() {
        self.view = rulesView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        rulesView.scrollTo(0)

        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.backIndicatorImage = Images.backButtonCategory
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = Images.backButtonRules
        
        data = [
            RulesOnboardingModel(image: Images.slideOne),
            RulesOnboardingModel(image: Images.slideTwo),
            RulesOnboardingModel(image: Images.slideThree),
            RulesOnboardingModel(image: Images.slideFour)
        ]
        
//        data = [
//            RulesOnboardingModel(
//                fLabel: "lol",
//                sLabel: "kek",
//                mImage: Images.eye,
//                backImage: Images.eye
//            ),
//            RulesOnboardingModel(
//                fLabel: "lol",
//                sLabel: "kek",
//                mImage: Images.eye,
//                backImage: Images.eye
//            ),
//            RulesOnboardingModel(
//                fLabel: "lol",
//                sLabel: "kek",
//                mImage: Images.eye,
//                backImage: Images.eye
//            )
//        ]
        
        rulesView.getPagesCount = { [weak self] in
            return self?.data.count ?? 0
        }
        
        rulesView.getPageForIndex = { [weak self] page in
            return self?.data[page]
        }
        
        rulesView.reload()
    }
}
