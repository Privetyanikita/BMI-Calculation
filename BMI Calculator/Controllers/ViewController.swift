//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Admin on 18.08.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightInputUserLabel: UILabel!
    
    @IBOutlet weak var weightInputUserLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func heightSlider(_ sender: UISlider) {
        heightInputUserLabel.text = "\(String(format: "%.2f", sender.value))m"
    }

    @IBAction func weightSlider(_ sender: UISlider) {
        weightInputUserLabel.text = "\(String(format: "%.0f", sender.value))kg"
    }
    @IBAction func calculationButton(_ sender: UIButton) {
        
    }
}

