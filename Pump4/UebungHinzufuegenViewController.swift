//
//  UebungHinzufuegenViewController.swift
//  Pump4
//
//  Created by Marcel Spindler on 30.04.16.
//  Copyright © 2016 Marcel Spindler. All rights reserved.
//

import UIKit

class UebungHinzufuegenViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var muskelgruppen = ["Brust", "Rücken", "Beine", "Schultern", "Bizeps", "Trizeps", "Nacken", "Unterarme"]
    var saveDelegate: ((String, String) ->())?
    var selectedMuskelgruppe = "Brust"

    @IBOutlet weak var uebungNameTextField: UITextField!
    @IBOutlet weak var fehlerLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBAction func uebungHinzufuegenButtonAction(sender: UIButton) {
        if uebungNameTextField.text!.isEmpty {
            fehlerLabel.hidden = false
        }
        else{
            let neueUebung = uebungNameTextField.text
            if saveDelegate != nil && neueUebung != nil {
                
                saveDelegate!(neueUebung!, selectedMuskelgruppe)
                
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView.dataSource = self
        self.pickerView.delegate = self
        self.hideKeyboardWhenTappedAround()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        fehlerLabel.hidden = true
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return muskelgruppen.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return muskelgruppen[row]
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch row{
        case 0:
            selectedMuskelgruppe = "Brust"
        case 1:
            selectedMuskelgruppe = "Rücken"
        case 2:
            selectedMuskelgruppe = "Beine"
        case 3:
            selectedMuskelgruppe = "Schultern"
        case 4:
            selectedMuskelgruppe = "Bizeps"
        case 5:
            selectedMuskelgruppe = "Trizeps"
        case 6:
            selectedMuskelgruppe = "Nacken"
        case 7:
            selectedMuskelgruppe = "Unterarme"
        default:
            break
        }
    }
    

    }
    
    

