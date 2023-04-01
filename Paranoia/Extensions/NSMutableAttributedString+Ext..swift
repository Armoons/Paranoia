//
//  NSMutableAttributedString+Ext..swift
//  Paranoia
//
//  Created by Stepanyan Arman  on 19.12.2022.
//

import Foundation
import UIKit

extension NSMutableAttributedString {
    var fontSize:CGFloat { return 37 }
//    var boldFont:UIFont { return UIFont(name: "Gilroy-Bold", size: fontSize)! }
    var normalFont:UIFont { return UIFont(name: "paranoia font final", size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)}
    
//    func bold(_ value:String) -> NSMutableAttributedString {
//
//        let attributes:[NSAttributedString.Key : Any] = [
//            .font : boldFont
//        ]
//
//        self.append(NSAttributedString(string: value, attributes:attributes))
//        return self
//    }
    
    func normal(_ value:String) -> NSMutableAttributedString {
        
        let attributes:[NSAttributedString.Key : Any] = [
            .font : normalFont,
        ]
        
        self.append(NSAttributedString(string: value, attributes:attributes))
        return self
    }
}
