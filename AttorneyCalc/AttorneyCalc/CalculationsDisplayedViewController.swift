//
//  CalculationsDisplayedViewController.swift
//  AttorneyCalc
//
//  Created by Taylor Frost on 7/24/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class CalculationsDisplayedViewController: UIViewController {
    
    var recievedDispositivePercentage:String!
    var recievedTrialWinPercentage:String!
    var recievedTrialLostPercentage:String!
    var recievedDamagesNumber2:String!
    var recievedAttorneyNumber2:String!
    var recievedLitNumber3:String!
    var recievedTrialNumber3:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("\(recievedDispositivePercentage) is the right dispositive outcome percentage")
        
        print("\(recievedTrialWinPercentage) is the right defense win at trial percentage")
        
        print("\(recievedTrialLostPercentage) is the right defense lose at trial percentage")
        
        print("\(recievedDamagesNumber2) is the right recieved damages number")
        
        print("\(recievedAttorneyNumber2) is the right attorney fees number")
        
        print("\(recievedLitNumber3) is the right litigation costs number")
        
        print("\(recievedTrialNumber3) is the right trial costs number")


    }




}
