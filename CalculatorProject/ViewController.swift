//
//  ViewController.swift
//  CalculatorProject
//
//  Created by Pursuit on 4/11/20.
//  Copyright © 2020 Neema Philippe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var displayNumber: Double = 0;
    var previousDisplayNumber: Double = 0;
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func calculatorNumbers(_ sender: UIButton) {
        
        displayLabel.text = displayLabel.text! + String(sender.tag-1)
        displayNumber = Double(displayLabel.text!)!
        
        
    }
    
    
    @IBAction func nonNumberButtons(_ sender: UIButton) {
        if displayLabel.text != nil && sender.tag != 11 && sender.tag != 16 {
            
            previousDisplayNumber = Double(displayLabel.text!)!
            
            //Operations:
            if sender.tag == 12 {
                displayLabel.text = "/"
            }
            if sender.tag == 13 {
                displayLabel.text = "X"
            }
            if sender.tag == 14 {
                displayLabel.text = "-"
            }
            if sender.tag == 15 {
                displayLabel.text = "+"
            }
            
            
            
            
        }
        
        
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

