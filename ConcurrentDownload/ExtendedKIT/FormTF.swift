//
//  FormTF.swift
//  ConcurrentDownload
//
//  Created by Ravi Ranjan on 05/09/22.
//

import Foundation
import UIKit
@IBDesignable
class FormTextView: UIView {
    
    @IBInspectable private var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = 10
        }
    }
    
    @IBInspectable private var backGroundColor: UIColor? {
        didSet {
            self.backgroundColor = backGroundColor
        }
    }
    
}
