//
//  ViewController.swift
//  AttorneyCalculator
//
//  Created by Taylor Frost on 7/17/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var thirdTextField: UITextField!
    @IBOutlet weak var fourthTextField: UITextField!
    @IBOutlet weak var fifthTextField: UITextField!
    @IBOutlet weak var sixthTextField: UITextField!
    @IBOutlet weak var seventhTextField: UITextField!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstLabel.hidden = true
        secondLabel.hidden = true
        thirdLabel.hidden = true
        
        
        
    }
    
    @IBAction func firstButtonTapped(sender: UIButton) {
        
        firstLabel.hidden = false
        secondLabel.hidden = false
        thirdLabel.hidden = false
        
        let firstValue = Double(firstTextField.text!)
        let secondValue = Double(secondTextField.text!)
        let thirdValue = Double(thirdTextField.text!)
        let fourthValue = Double(fourthTextField.text!)
        let fifthValue = Double(fifthTextField.text!)
        let sixthValue = Double(sixthTextField.text!)
        let seventhValue = Double(seventhTextField.text!)
        
        
        let firstVariable = Double(fourthValue! + fifthValue!)
        let secondVariable = Double(sixthValue! * seventhValue!)
        let thirdVariable = Double(firstVariable + secondVariable)
        
        secondLabel.text = "\(firstVariable)"
        
        
        
        
        
        
        
        
        
        
    }
    



}

