//
//  TrainingsplanAnlegenViewController.swift
//  Pump4
//
//  Created by Marcel Spindler on 30.04.16.
//  Copyright © 2016 Marcel Spindler. All rights reserved.
//

import UIKit

class TrainingsplanAnlegenViewController: UIViewController {

    @IBOutlet weak var planNameTextField: UITextField!

    @IBOutlet weak var fehlerLabel: UILabel!
    @IBAction func weiterButtonAction(sender: UIButton) {
        if planNameTextField.text!.isEmpty {
            fehlerLabel.hidden = false
            
        }
        else{
            
        }

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        fehlerLabel.hidden = true
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if identifier == "neuerPlan"{
            if planNameTextField.text!.isEmpty == true{
                return false
            }
    }
        return true
}
}