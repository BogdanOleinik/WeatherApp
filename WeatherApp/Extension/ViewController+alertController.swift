//
//  ViewController+alertController.swift
//  WeatherApp
//
//  Created by Олейник Богдан on 22.04.2022.
//

import UIKit

extension WeatherViewController {
    func presentSearchAlertController(withTitle title: String?, message: String?, style: UIAlertController.Style, completionHandler: @escaping (String) -> Void) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        alert.addTextField { textField in
            let cities = ["Kiev", "Paris", "New York", "Viena", "Stambul"]
            textField.placeholder = cities.randomElement()
        }
        let search = UIAlertAction(title: "Search", style: .default) { action in
            let textField = alert.textFields?.first
            guard let cityName = textField?.text else { return }
            if cityName != "" {
//                self.networkWeatherManager.fetchCurrentWeather(forCity: cityName)
                let city = cityName.split(separator: " ").joined(separator: "%20")
                completionHandler(city)
            }
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(search)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
}
