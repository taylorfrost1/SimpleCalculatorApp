//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Taylor Frost on 7/16/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isTypingNumber = false
    
    var firstNumber = 0
    
    var secondNumber = 0
    
    var operation = ""

    @IBOutlet weak var calculatorDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    

    
    @IBAction func numberTapped(sender: AnyObject) {
        
        let number = sender.currentTitle
        
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + String(number)
        } else {
            
            calculatorDisplay.text  = number
            
            isTypingNumber = true
            
        }
        
    }
    
    @IBAction func calculationTapped(sender: AnyObject) {
        
        isTypingNumber = false
        
        firstNumber = calculatorDisplay.
        
        
    }
    
    @IBAction func equalsTapped(sender: AnyObject) {
        
    }

}