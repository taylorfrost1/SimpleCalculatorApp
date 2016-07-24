//
//  ViewController.swift
//  testPrepareForSegueApp
//
//  Created by Taylor Frost on 7/24/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sliderOutlet: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func button(sender: UIButton) {
        

            
        
        
        performSegueWithIdentifier("firstSegue", sender: self)
        
        
    }

    @IBAction func slider(sender: UISlider) {
        
        print(sliderOutlet.value)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "firstSegue") {
            var svc = segue.destinationViewController as! SecondViewController
        
        svc.passedNumber = sliderOutlet.value.description


        }

    }
}