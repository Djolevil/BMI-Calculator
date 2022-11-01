//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Djordje Knezevic on 1.11.22..
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float = 0.0
    
    func getBMIValue() -> String {
        let formatedBMI = String(format: "%.1f", bmi)
        return formatedBMI
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / pow(height, 2)
    }
    
    
}

