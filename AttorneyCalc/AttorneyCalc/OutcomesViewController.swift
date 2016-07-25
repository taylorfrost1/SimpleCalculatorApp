//
//  OutcomesViewController.swift
//  AttorneyCalc
//
//  Created by Taylor Frost on 7/24/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class OutcomesViewController: UIViewController {
    
    let step2:Float = 5
    
    var recievedDamagesNumber:String!
    var recievedAttorneyNumber:String!
    var recievedLitNumber2:String!
    var recievedTrialNumber2:String!
    
    @IBOutlet weak var dispositiveSliderOutlet: UISlider!
    
    @IBOutlet weak var trialWinSliderOutlet: UISlider!
    
    @IBOutlet weak var trialLoseSliderOutlet: UISlider!
    
    @IBOutlet weak var dispositivePercentageLabel: UILabel!
    
    @IBOutlet weak var trialWinPercentageLabel: UILabel!
    
    @IBOutlet weak var trialLosePercentageLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("\(recievedDamagesNumber) is the correct damagesNumber")
        print("\(recievedAttorneyNumber) is the correct attorneyNumber")
        print("\(recievedLitNumber2) is the correct litNumber2")
        print("\(recievedTrialNumber2) is the correct trialNumber2")
        
        self.dispositivePercentageLabel.text = "0"
        self.trialWinPercentageLabel.text = "0"
        self.trialLosePercentageLabel.text = "0"

    }
    
    @IBAction func dispositiveSliderTouched(sender: UISlider) {
        let roundedStepValue = round(sender.value / step2) * step2
        sender.value = roundedStepValue
        
        let value = Int(roundedStepValue)
    
        self.dispositivePercentageLabel.text = "\(value)%"
   
    }
    
    @IBAction func winAtTrialSliderTouched(sender: UISlider) {
        let roundedStepValue = round(sender.value / step2) * step2
        sender.value = roundedStepValue
        
        let value = Int(roundedStepValue)
        
        self.trialWinPercentageLabel.text = "\(value)%"
    
    }
    
    @IBAction func loseAtTrialSliderTouched(sender: UISlider) {
        
        let roundedStepValue = round(sender.value / step2) * step2
        sender.value = roundedStepValue
        
        let value = Int(roundedStepValue)
    
        self.trialLosePercentageLabel.text = "\(value)%"
        
    }
    
    @IBAction func outcomeContinueTapped(sender: UIButton) {
        
        if dispositiveSliderOutlet.value + trialWinSliderOutlet.value + trialLoseSliderOutlet.value == 100 {
            
        performSegueWithIdentifier("thirdSegue", sender: self)
        
        
        } else {
            
            self.alertController()
            print("The segue could not be performed")
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let controller = segue.destinationViewController as? CalculationsDisplayedViewController
        
        controller?.recievedDispositivePercentage = dispositiveSliderOutlet.value.description
        controller?.recievedTrialWinPercentage = trialWinSliderOutlet.value.description
        controller?.recievedTrialLostPercentage = trialWinSliderOutlet.value.description
        controller?.recievedDamagesNumber2 = recievedDamagesNumber
        controller?.recievedAttorneyNumber2 = recievedAttorneyNumber
        controller?.recievedLitNumber3 = recievedLitNumber2
        controller?.recievedTrialNumber3 = recievedTrialNumber2
    }
    
    func alertController() {
        
        let alertController = UIAlertController(title: "Try Again!", message: "Please have your values collectively equal 100%", preferredStyle: UIAlertControllerStyle.Alert)
        
        let saveAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: {
            alert -> Void in
        })
        
        alertController.addAction(saveAction)
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }

    
    

}
