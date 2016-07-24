//
//  AttorneyViewController.swift
//  AttorneyCalc
//
//  Created by Taylor Frost on 7/23/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class AttorneyViewController: UIViewController {
    
    @IBOutlet weak var testLabel: UILabel!
    
    var recievedLitNumber: String!
    var recievedTrialNumber: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("\(recievedLitNumber) is the correct litNumber")
        print("\(recievedTrialNumber) is the correct trialNumber")
        
        testLabel.text = recievedLitNumber
        

    
        
        
        
    }

}
