//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by Олейник Богдан on 22.04.2022.
//

import Foundation

struct CurrentWeather {
    let cityName: String
    let temperature: Double
    var temperatureString: String {
        "\(temperature.rounded())"
    }
    let feelsLikeTemperature:Double
    var feelsLiketemperatureString: String {
        "\(feelsLikeTemperature.rounded())"
    }
    let conditionCode: Int
    
    init?(currentWeatherData: CurrentWeatherData) {
        cityName = currentWeatherData.name
        temperature = currentWeatherData.main.temp
        feelsLikeTemperature = currentWeatherData.main.feelslike
        conditionCode = currentWeatherData.weather.first!.id
    }
}
