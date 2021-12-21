//
//  CustomizeBgView.swift
//  apple tutorial calculator
//
//  Created by Ripley Roane on 12/17/21.
//

import Foundation
import UIKit

class CustomBgView:UIView {
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor(red: 0.81, green: 0.80, blue: 0.85, alpha: 1.0)
        layer.cornerRadius = 15
        
    }
}
