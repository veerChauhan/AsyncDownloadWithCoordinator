//
//  CoenerButton.swift
//  ConcurrentDownload
//
//  Created by Ravi Ranjan on 04/09/22.
//

import Foundation
import UIKit
@IBDesignable
class CornerButton : UIButton {
    
    @IBInspectable private var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
}
