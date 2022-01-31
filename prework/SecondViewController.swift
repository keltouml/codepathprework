//
//  SecondViewController.swift
//  prework
//
//  Created by Keltoum Laghjibi on 1/31/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    let arrayTip = ["8%", "10%", "12%", "14%", "16%", "20%"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func generateButton(_ sender: UIButton) {
        
        let randomtip = Int.random(in:0...(arrayTip.count-1))
        label.text = arrayTip[randomtip]
    }

}
