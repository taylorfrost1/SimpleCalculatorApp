//
//  SecondViewController.swift
//  TestPrepareForSegueApp
//
//  Created by Taylor Frost on 7/24/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var toPass:String!

    @IBOutlet weak var labelPassedData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelPassedData.text = toPass


    }
    
    


}
