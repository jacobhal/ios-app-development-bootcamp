//
//  CalculatorLogic.swift
//  BMI Calculator
//
//  Created by Jacob Hallman on 2020-05-27.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    var bmiValue = "0.0"
    var bmi: Double?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = Double(round(weight)) / pow(Double(round(100*height)) / 100, 2)
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi ?? 0.0)
    }
}
