//
//  ViewController.swift
//  prework
//
//  Created by Keltoum Laghjibi on 1/29/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    // textfield
    @IBOutlet weak var myTip: UITextField!
    @IBOutlet weak var tipAmountLabel2: UILabel!
    @IBOutlet weak var totalLabel2: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double (billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
            tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        

    }
    
    // my own work! Calculate ANY tip amount!
    // action on button!
    @IBAction func newTip(_ sender: Any) {
        let bill = Double (billAmountTextField.text!) ?? 0
        
        let tipPercentages = Double (myTip.text!) ?? 0
        let theTip = tipPercentages/100
        let tip = bill * theTip
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel2.text = String(format: "$%.2f", tip)
        
        // Update Total Amount
        totalLabel2.text = String(format: "$%.2f", total)
    }
    
    @IBAction func returntofirstVC(segue:
                                   UIStoryboardSegue) {
        
    }
    
    
}

