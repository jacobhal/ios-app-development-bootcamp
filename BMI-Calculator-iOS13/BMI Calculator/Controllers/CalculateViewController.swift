//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorLogic = CalculatorLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let heightConverted = calculatorLogic.convertHeightFormat(height: sender.value)
        let height = String(format: "%.2f", heightConverted)
        heightLabel.text = "\(height)m"
        
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weightConverted = calculatorLogic.convertWeightFormat(weight: sender.value)
        weightLabel.text = "\(weightConverted)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = calculatorLogic.convertHeightFormat(height: heightSlider.value)
        let weight = calculatorLogic.convertWeightFormat(weight: weightSlider.value)
        
        calculatorLogic.calculateBMI(height: height, weight: weight)
        
        
        //        let secondVC = SecondViewController()
        //        secondVC.bmiValue = String(format: "%.0f", BMI)
        //self.present(secondVC, animated: true, completion: nil)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    // In a storyboard-based applicatio n, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorLogic.getBMIValue()
            destinationVC.bmiAdvice = calculatorLogic.getAdvice()
            destinationVC.bgColor = calculatorLogic.getColor()
        }
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}

