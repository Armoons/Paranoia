//
//  Enums&structs.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 10.12.2022.
//

import Foundation
import UIKit

enum PageType {
    case startPage
    case categoryPage
}

enum Categories {
    case nice
    case nasty
    case interesting
    case vulgar
}

enum startViewButtons {
    case startButton
    case rulesButton
}

struct Colors {
    static let backgroundColor = UIColor(red: 196/255, green: 145/255, blue: 172/255, alpha: 1)
}

struct Images {
    static let title: UIImage = UIImage(named: "title_image") ?? UIImage()
    static let rex: UIImage = UIImage(named: "rex_image") ?? UIImage()
    static let random1: UIImage = UIImage(named: "random1_image") ?? UIImage()
    static let happy: UIImage = UIImage(named: "happy_image") ?? UIImage()
    static let nextArrow: UIImage = UIImage(named: "nextArrow_image") ?? UIImage()
    static let chooseCategory: UIImage = UIImage(named: "chooseCategory_image") ?? UIImage()
    static let backButtonRules: UIImage = UIImage(named: "backButtonRules_image") ?? UIImage()
    static let backButtonCategory: UIImage = UIImage(named: "backButton_image") ?? UIImage()
    static let rulesTitle: UIImage = UIImage(named: "rulesTitle_image") ?? UIImage()

    


    



}

