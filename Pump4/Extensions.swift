//
//  Extensions.swift
//  Pump4
//
//  Created by Marcel Spindler on 29.04.16.
//  Copyright © 2016 Marcel Spindler. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}

extension UILabel {
    func setupLabel(label: UILabel) {
        label.textColor = UIColor.whiteColor()
        label.layer.borderWidth = 2.0
        label.layer.borderColor = UIColor.whiteColor().colorWithAlphaComponent(0.7).CGColor
        label.layer.cornerRadius = 5.0
        label.layer.shadowRadius = 3.0
        label.layer.shadowColor = UIColor.whiteColor().CGColor
        label.layer.shadowOpacity = 0.3
    }
}


