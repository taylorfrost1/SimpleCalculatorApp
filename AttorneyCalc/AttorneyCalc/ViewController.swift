//
//  ViewController.swift
//  AttorneyCalc
//
//  Created by Taylor Frost on 7/22/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

let step:Float = 100

var litNumberPicked: Int?
var trialNumberPicked: Int?

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
        
        var value = Int(roundedStepValue)
        
        litigationNumberLabel.text = String(value)

        if let litNumberPicked = litNumberPicked{
            
        value = litNumberPicked
            
        }
        
         print(value)
    }
    
    @IBAction func trialSliderTapped(sender: UISlider) {
        
        let roundedStepValue = round(sender.value / step) * step
        sender.value = roundedStepValue
        
        var value = Int(roundedStepValue)
        
        trialNumberLabel.text = String(value)
        
        if let trialNumberPicked = trialNumberPicked {
            
            value = trialNumberPicked

        }
        
        print(value)
    

    }
    
    @IBAction func continueButtonTapped(sender: UIButton) {
        
        performSegueWithIdentifier("firstSegue", sender: self)
  
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let controller = segue.destinationViewController as? AttorneyViewController
        
        controller?.recievedLitNumber = litNumberPicked
        controller?.recievedTrialNumber = trialNumberPicked
        
        print("Lit and Trial number are being passed")  
        

    }
    

}

