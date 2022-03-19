//
//  WheatherInformation.swift
//  WeatherApp
//
//  Created by 김태영 on 2022/03/19.
//

import Foundation

struct WeatherInformation: Codable {
    let weather: [Wheather]
    let temp: Temp
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case weaher
        case temp = "main"
        case name
    }
}

struct Wheather: Codable {
    let id: Int
    let main: String
    let description: String
    let icon: String
}

struct Temp: Codable {
    let temp: Double
    let feelslike: Double
    let minTemp: Double
    let maxTemp: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelslike = "feels_like"
        case minTemp = "temp_min"
        case maxTemp = "temp_max"
    }
}
