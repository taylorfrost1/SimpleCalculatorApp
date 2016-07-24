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
    
    var recievedLitNumber: Int?
    var recievedTrialNumber: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        testLabel.text = String(recievedLitNumber)
    
        
        
        
    }

}
