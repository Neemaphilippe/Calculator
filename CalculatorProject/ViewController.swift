//
//  ViewController.swift
//  CalculatorProject
//
//  Created by Pursuit on 4/11/20.
//  Copyright © 2020 Neema Philippe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var displayNumber: Double = 0
    var previousDisplayNumber: Double = 0
    var operation = 0
    var doMath = false
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func calculatorNumbers(_ sender: UIButton) {
        if doMath == true {
            displayLabel.text = displayLabel.text! + String(sender.tag - 1)
            displayNumber = Double(displayLabel.text!)!
            doMath = false
            
        } else {
            displayLabel.text = displayLabel.text! + String(sender.tag - 1)
            displayNumber = Double(displayLabel.text!)!
        }
        
    }
    
    
    @IBAction func nonNumberButtons(_ sender: UIButton) {
        if displayLabel.text != nil && sender.tag != 11 && sender.tag != 16 {
            
            previousDisplayNumber = Double(displayLabel.text!)!
            operation = sender.tag
            
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
            else if sender.tag == 16 {
              
                if operation == 12 {
                    displayLabel.text = String(previousDisplayNumber / displayNumber)
                } else if operation == 13 {
                    displayLabel.text = String(previousDisplayNumber * displayNumber)
                } else if operation == 14{
                    displayLabel.text = String(previousDisplayNumber - displayNumber)
                } else if operation == 15 {
                    displayLabel.text = String(previousDisplayNumber + displayNumber)
                }
                
            } else if  sender.tag == 11 {
                displayLabel.text = nil
                previousDisplayNumber = 0
                displayNumber = 0
                operation = 0
                
            }
            
            
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

