//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var searchTextField: UITextField!
    
    var weatherManager = WeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchTextField.delegate = self
        
        // Dismiss keyboard when clicking anywhere
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }

    @IBAction func searchPressed(_ sender: UIButton) {
        searchTextField.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        // Get weather for city
        if let city = searchTextField.text {
            weatherManager.fetchWeather(cityName: city)
        }
        
        
        
        // Reset textfield
        searchTextField.text =  ""
        searchTextField.placeholder = "Search"
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        // Useful for validation
        if textField.text != "" {
            return true
        }
        
        textField.placeholder = "Type something"
        return false
    }
    
}

