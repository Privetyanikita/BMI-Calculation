//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Admin on 20.08.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = CalculatoinBrain.calculateBMI()
        adviceLabel.text = CalculatoinBrain.getAdvice()
        view.backgroundColor = CalculatoinBrain.getColor()
    
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
