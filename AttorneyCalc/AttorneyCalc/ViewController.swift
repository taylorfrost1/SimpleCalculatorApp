//
//  ViewController.swift
//  AttorneyCalc
//
//  Created by Taylor Frost on 7/22/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

let step:Float = 100

class ViewController: UIViewController {
    
    @IBOutlet weak var litigationSlider: UISlider!
    
    @IBOutlet weak var litigationNumberLabel: UILabel!
    
    @IBOutlet weak var trialSlider: UISlider!

    @IBOutlet weak var trialNumberLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.litigationNumberLabel.text = "500"
        self.trialNumberLabel.text = "500"
    }

    @IBAction func litigationSliderTapped(sender: UISlider) {
        
        
        let roundedStepValue = round(sender.value / step) * step
        sender.value = roundedStepValue
        
        let value = Int(roundedStepValue)
        
        litigationNumberLabel.text = String(value)
        
    }
    
    @IBAction func trialSliderTapped(sender: UISlider) {
        
        let roundedStepValue = round(sender.value / step) * step
        sender.value = roundedStepValue
        
        let value = Int(roundedStepValue)
        
        trialNumberLabel.text = String(value)
    
    }
    

}

