//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Алексей Колыченков on 21.09.2023.
//
import SwiftUI

struct WeatherButton: View {
    var title: String
    var backgroundColor: Color

    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .cornerRadius(10)
    }
}

