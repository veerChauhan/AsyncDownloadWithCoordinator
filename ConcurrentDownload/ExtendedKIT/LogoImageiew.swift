//
//  LogoImageiew.swift
//  ConcurrentDownload
//
//  Created by Ravi Ranjan on 04/09/22.
//

import Foundation
import UIKit

@IBDesignable
class LogoImage: UIImageView {
    
    @IBInspectable var corerRadius : CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = corerRadius
        }
    }
}
