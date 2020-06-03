//
//  BMI.swift
//  BMI Calculator
//
//  Created by Jacob Hallman on 2020-05-27.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

enum BMICategory {
    case Underweight
    case Normal
    case Overweight
    case Obese
}

struct BMI {
    let value: Double
    let category: BMICategory
    let advice: String
    let color: UIColor
}
