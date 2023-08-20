//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Admin on 18.08.2023.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightInputUserLabel: UILabel!
    
    @IBOutlet weak var weightInputUserLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        CalculatoinBrain.height = 1.5
        CalculatoinBrain.weight = 60
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        heightInputUserLabel.text = "\(String(format: "%.2f", sender.value))m"
        CalculatoinBrain.height = sender.value
    }

    @IBAction func weightSlider(_ sender: UISlider) {
        weightInputUserLabel.text = "\(String(format: "%.0f", sender.value))kg"
        CalculatoinBrain.weight = sender.value
    }
    
    @IBAction func calculationButton(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
}

