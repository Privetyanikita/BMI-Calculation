//
//  Logic.swift
//  BMI Calculator
//
//  Created by Admin on 19.08.2023.
//

import UIKit

struct CalculatoinBrain {
    static var height: Float?
    static var weight: Float?
    
    
    static let advice = ["Eat less pies!", "Eat more pies!", "You are perfect!"]
    
    static func calculateBMI() -> String {
        let bmi = weight! / (height! * height!)
        return String(format: "%.1f", bmi)
    }
    
    static func getAdvice() -> String {
        let bmi = weight! / (height! * height!)
        if bmi < 18.5 {
            return advice[1]
        } else if bmi < 24.9 {
            return advice[2]
        } else {
            return advice[0]
        }
    }
    
    static func getColor() -> UIColor {
        let bmi = weight! / (height! * height!)
        if bmi < 18.5 {
            return UIColor.cyan
        } else if bmi < 24.9 {
            return UIColor.systemGreen
        } else {
            return UIColor.orange
        }
    }

}
