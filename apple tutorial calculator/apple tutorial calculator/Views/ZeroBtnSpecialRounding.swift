//
//  ZeroBtnSpecialRounding.swift
//  apple tutorial calculator
//
//  Created by Ripley Roane on 12/17/21.
//

import Foundation
import UIKit
class ZeroBorderBtn: UIButton{
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderWidth = 5
        self.clipsToBounds = true
        ;self.layer.cornerRadius = frame.width / 4
        self.layer.borderColor = UIColor(red: 1, green: 0.84, blue: 0.74, alpha: 1.0).cgColor
    }
}
