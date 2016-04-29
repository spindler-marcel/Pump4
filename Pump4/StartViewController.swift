//
//  ViewController.swift
//  Pump4
//
//  Created by Marcel Spindler on 29.04.16.
//  Copyright © 2016 Marcel Spindler. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var startTrainingButtonOutlet: UIButton!
    @IBOutlet weak var startRunningButtonOutlet: UIButton!
    @IBOutlet weak var startTrainingLabel: UILabel!
    @IBOutlet weak var startRunningLabel: UILabel!
    
    var runningImage = UIImage(named: "Laufen")
    var trainingImage = UIImage(named: "Training")
    
    func setup() {
        startRunningButtonOutlet.setImage(runningImage, forState: .Normal)
        startTrainingButtonOutlet.setImage(trainingImage, forState: .Normal)
        startRunningLabel.setupLabel(startRunningLabel)
        startTrainingLabel.setupLabel(startTrainingLabel)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
}

