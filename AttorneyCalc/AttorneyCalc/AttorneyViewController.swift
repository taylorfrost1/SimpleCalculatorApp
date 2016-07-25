//
//  AttorneyViewController.swift
//  AttorneyCalc
//
//  Created by Taylor Frost on 7/23/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class AttorneyViewController: UIViewController {
  
    var recievedLitNumber: String!
    var recievedTrialNumber: String!
    
    @IBOutlet weak var damagesSliderOutlet: UISlider!
    @IBOutlet weak var attorneySliderOutlet: UISlider!
    
    @IBOutlet weak var damagesLabelOutlet: UILabel!
    @IBOutlet weak var attorneyLabelOutlet: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("\(recievedLitNumber) is the correct litNumber")
        print("\(recievedTrialNumber) is the correct trialNumber")
        
        self.damagesLabelOutlet.text = "500"
        self.attorneyLabelOutlet.text = "500"
        
   }
    
    @IBAction func damagesSliderTouched(sender: UISlider) {
        
        let roundedStepValue = round(sender.value / step) * step
        sender.value = roundedStepValue
        
        let value = Int(roundedStepValue)
        
        self.damagesLabelOutlet.text = String(value)
        
    }
    
    @IBAction func attorneySliderTouched(sender: UISlider) {
        
        let roundedStepValue = round(sender.value / step) * step
        sender.value = roundedStepValue
        
        let value = Int(roundedStepValue)
        
        self.attorneyLabelOutlet.text = String(value)
   
    }
    
    @IBAction func continueButtonTapped(sender: UIButton) {
      performSegueWithIdentifier("secondSegue", sender: self)
     
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let controller = segue.destinationViewController as? OutcomesViewController
        
        controller?.recievedDamagesNumber = damagesSliderOutlet.value.description
        controller?.recievedAttorneyNumber = attorneySliderOutlet.value.description
        controller?.recievedLitNumber2 = recievedLitNumber
        controller?.recievedTrialNumber2 = recievedTrialNumber
    }
    
    

}
