//
//  ViewController.swift
//  calc
//
//  Created by 903-21i on 09.05.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    var currentNumberStr = ""
    var number1 = 0
    
    var operation = ""
    var isOperationPressed = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touch1(_ sender: Any) {
        if isOperationPressed {
            currentNumberStr = ""
            isOperationPressed = false
        }
        currentNumberStr += "1"
        label.text = currentNumberStr
    }
    
    @IBAction func touch2(_ sender: Any) {
        if isOperationPressed {
            currentNumberStr = ""
            isOperationPressed = false
        }
        currentNumberStr += "2"
        label.text = currentNumberStr
    }
    
    @IBAction func touch3(_ sender: Any) {
        if isOperationPressed {
            currentNumberStr = ""
            isOperationPressed = false
        }
        currentNumberStr += "3"
        label.text = currentNumberStr
        
    }
    
    @IBAction func plus(_ sender: Any) {
        isOperationPressed = true
        if operation.isEmpty {
            number1 = Int(currentNumberStr)!
            operation = "+"
        } else {
            let number2 = Int(currentNumberStr)!
            if operation == "+" {
                let sum = number1 + number2
                currentNumberStr = String(sum)
            }
            label.text = currentNumberStr
            operation = "+"
        }
    }
    
}

