//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Djordje Knezevic on 1.11.22..
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let formatedBMI = String(format: "%.1f", bmi?.value ?? 0.0)
        return formatedBMI
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor(red: 0.60, green: 1.00, blue: 1.00, alpha: 1.00))
        } else if bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor(red: 0.60, green: 1.00, blue: 0.60, alpha: 1.00))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor(red: 1.00, green: 0.60, blue: 0.60, alpha: 1.00))
        }
    }
}

