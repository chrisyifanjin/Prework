//
//  ViewController.swift
//  Prework
//
//  Created by Yifan Jin on 10/11/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var BillAmountTextField: UITextField!
        
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    @IBOutlet weak var TotalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(BillAmountTextField.text!) ?? 0
        
        let tipPercentage = [0.15,0.18,0.2]
        let tip = bill *
        tipPercentage[TipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        TotalLabel.text=String(format: "$%.2f",total)
    }
}

