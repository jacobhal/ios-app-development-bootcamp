//
//  CalculatorLogic.swift
//  BMI Calculator
//
//  Created by Jacob Hallman on 2020-05-27.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorLogic {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let heightRounded = round(height * 100) / 100
        let weightRounded = Int(weight)
        let bmiVal = Double(weightRounded) / pow(Double(heightRounded), 2)
        bmi = getBMI(b: bmiVal)
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice..."
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.clear
    }
    
    func getBMI(b: Double) -> BMI? {
        if b < 18.5 {
            return BMI(value: b, category: BMICategory.Underweight, advice: "\(BMICategory.Underweight)", color:#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if b >= 18.5 && b < 24.9 {
            return BMI(value: b, category: BMICategory.Normal, advice: "\(BMICategory.Normal)", color:#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else if b >= 24.9 && b < 30 {
            return BMI(value: b, category: BMICategory.Overweight, advice: "\(BMICategory.Overweight)", color:#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        } else if b >= 30 {
            return BMI(value: b, category: BMICategory.Obese, advice: "\(BMICategory.Obese)", color:#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
        return nil
    }
}
