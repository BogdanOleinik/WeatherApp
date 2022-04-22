//
//  ViewController.swift
//  WeatherApp
//
//  Created by Олейник Богдан on 22.04.2022.
//

import UIKit

class WeatherViewController: UIViewController {

    @IBOutlet weak var weatherIconImageView: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var feelsLikeTemperatureLabel: UILabel!
    
    var networkWeatherManager = NetworkWeatherManager()
    
    @IBAction func searchPressed(_ sender: UIButton) {
        self.presentSearchAlertController(withTitle: "Enter city name", message: nil, style: .alert) { city in
            self.networkWeatherManager.fetchCurrentWeather(forCity: city)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        networkWeatherManager.delegate = self
        networkWeatherManager.fetchCurrentWeather(forCity: "London") 
    }
}

extension WeatherViewController: NetworkWeatherManagerDelegate {
    func updateInterface(_: NetworkWeatherManager, with currentWeather: CurrentWeather) {
        
    }
}
