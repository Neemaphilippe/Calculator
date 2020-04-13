//
//  ViewController.swift
//  CalculatorProject
//
//  Created by Pursuit on 4/11/20.
//  Copyright © 2020 Neema Philippe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func calculatorNumbers(_ sender: UIButton) {
        
        displayLabel.text = displayLabel.text! + String(sender.tag-1)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

