//
//  ViewController.swift
//  Calci
//
//  Created by Nikitha Chittaluri on 1/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillAmountLabel: UILabel!
    @IBOutlet weak var BillAmountTextField: UITextField!
    @IBOutlet weak var TipAmountLabel: UILabel!
    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var TotalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(BillAmountTextField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[TipControl.selectedSegmentIndex]
        let total = bill + tip
        
        TipAmountLabel.text = String(format: "$%.2f",tip)
        TotalLabel.text = String(format: "$%.2f", total)
        
    }
    
}

