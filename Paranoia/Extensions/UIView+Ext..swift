//
//  UIView+Ext..swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 10.12.2022.
//

import Foundation
import UIKit


extension UIView {
    
    func addBackground(page: PageType) {
        // screen width and height:
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        
        let imageViewBackground = UIImageView(frame: CGRectMake(0, 0, width, height))
        switch page {
        case .startPage:
            imageViewBackground.image = Images.startBackground
        case .categoryPage:
            imageViewBackground.image = UIImage(named: "Group 2")
        }

        imageViewBackground.contentMode = UIView.ContentMode.scaleAspectFill
        
        self.addSubview(imageViewBackground)
        self.sendSubviewToBack(imageViewBackground)
    }
}
