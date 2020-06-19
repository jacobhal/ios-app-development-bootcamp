//
//  WeatherData.swift
//  Clima
//
//  Created by Jacob Hallman on 2020-06-19.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
    let temp_min: Double
    let temp_max: Double
    let pressure: Int
    let humidity: Int
    let feels_like: Double
}

struct Weather: Decodable {
    let description: String
}
