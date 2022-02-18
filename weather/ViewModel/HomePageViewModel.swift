//
//  HomePageViewModel.swift
//  weather
//
//  Created by zhz on 2022/2/18.
//

import SwiftUI
class HomePageViewModel: ObservableObject {
    @Published var weatherInfo: Weather
    init() {
        self.weatherInfo = Weather(city: "beijing", summary: "sun", temperature: 1.3, humidity: 45, windSpeed: 1.8)
    }
    var appTitle: String {
        return self.weatherInfo.city
    }
}
