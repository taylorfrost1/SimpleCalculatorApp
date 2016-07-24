//
//  ViewController.swift
//  TestPrepareForSegueApp
//
//  Created by Taylor Frost on 7/24/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "segueTest") {
            var svc = segue.destinationViewController as! SecondViewController;
            
            svc.toPass = textField.text
            
        }
    }
    
    @IBAction func button(sender: UIButton) {
        
        performSegueWithIdentifier("segueTest", sender: self)
    }
    


}

