//
//  CurrentWeatherData.swift
//  WeatherApp
//
//  Created by Олейник Богдан on 22.04.2022.
//

import Foundation

struct CurrentWeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
    let feelslike: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelslike = "feels_like"
    }
}

struct Weather: Codable {
    let id: Int
}
