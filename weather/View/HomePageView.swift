//
//  HomePageView.swift
//  weather
//
//  Created by zhz on 2022/2/18.
//

import SwiftUI

struct HomePageView: View {
    @ObservedObject private var viewmodel = HomePageViewModel()
    var body: some View {
        ScrollView{
            LazyVStack{
                Text(self.viewmodel.weatherInfo.city)
                Text(self.viewmodel.appTitle)
                Text(self.viewmodel.weatherInfo.summary)
                Text(String(self.viewmodel.weatherInfo.temperature))
            }
        }
        
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
