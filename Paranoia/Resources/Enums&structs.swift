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

enum MysicState {
    case play
    case stop
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
    static let backButtonQuestion: UIImage = UIImage(named: "backButtonQuestion_image") ?? UIImage()
    static let baloon: UIImage = UIImage(named: "baloon_image") ?? UIImage()
    static let pressIfReady: UIImage = UIImage(named: "pressIfReady_image") ?? UIImage()
    static let stranger: UIImage = UIImage(named: "stranger_image") ?? UIImage()
    static let strangerHalf: UIImage = UIImage(named: "strangerHalf_image") ?? UIImage()
    static let eye: UIImage = UIImage(named: "eye_image") ?? UIImage()
    static let bigPig: UIImage = UIImage(named: "bigPig") ?? UIImage()
    static let coolCrocodile: UIImage = UIImage(named: "coolCrocodile") ?? UIImage()
    static let flatMonster: UIImage = UIImage(named: "flatMonster") ?? UIImage()
    static let moneyBag: UIImage = UIImage(named: "moneyBag") ?? UIImage()
    static let regularMan: UIImage = UIImage(named: "regularMan") ?? UIImage()
    static let scaredDude: UIImage = UIImage(named: "scaredDude") ?? UIImage()
    static let strangeCat: UIImage = UIImage(named: "strangeCat") ?? UIImage()
    static let slideOne: UIImage = UIImage(named: "slideOne_image") ?? UIImage()
    static let slideTwo: UIImage = UIImage(named: "slideTwo_image") ?? UIImage()
    static let slideThree: UIImage = UIImage(named: "slideThree_image") ?? UIImage()
    static let slideFour: UIImage = UIImage(named: "slideFour_image") ?? UIImage()
    static let settings: UIImage = UIImage(named: "settings_image") ?? UIImage()
    static let musicPanel: UIImage = UIImage(named: "musicPanel_image") ?? UIImage()
    static let musicOff: UIImage = UIImage(named: "musicOff_image") ?? UIImage()
    static let musicOn: UIImage = UIImage(named: "musicOn_image") ?? UIImage()
    static let soundOff: UIImage = UIImage(named: "soundOff_image") ?? UIImage()
    static let soundOn: UIImage = UIImage(named: "soundOn_image") ?? UIImage()




}

