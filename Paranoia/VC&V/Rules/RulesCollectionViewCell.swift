//
//  RulesCollectionViewCell.swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 31.01.2023.
//

import UIKit

class RulesCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "RulesCollectionViewCell"
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var middleImage: UIImageView!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(_ slide: RulesOnboardingModel) {
        topLabel.text = slide.fLabel
        bottomLabel.text = slide.sLabel
        middleImage.image = slide.mImage
        backgroundImage.image = slide.backImage
    }

}
