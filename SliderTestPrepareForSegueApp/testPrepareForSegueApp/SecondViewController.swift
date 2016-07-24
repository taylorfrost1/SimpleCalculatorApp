//
//  SecondViewController.swift
//  testPrepareForSegueApp
//
//  Created by Taylor Frost on 7/24/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var passedNumber: String!
    
    @IBOutlet weak var firstLabel: UILabel!

    @IBOutlet weak var secondLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("\(passedNumber) is the correct number")
        
        firstLabel.text = passedNumber

        
    }
    
    
    
}
