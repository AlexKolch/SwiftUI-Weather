//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Алексей Колыченков on 21.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("myCyan")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Text("Cupertino, CA")
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .padding()
                VStack(spacing: 10.0) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)

                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }.padding(.bottom, 40)

                HStack(spacing: 20.0) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 74)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 88)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 60)
                    WeatherDayView(dayOfWeek: "FRY", imageName: "cloud.sun.fill", temperature: 76)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "sunset.fill", temperature: 68)
                }
                Spacer()

                Button {
                    print("did tapped")
                } label: {
                    Text("Change mode")
                        .frame(width: 180, height: 50)
                        .background(Color(white: 1, opacity: 0.6))
                        .cornerRadius(10)
                }.padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int

    var body: some View {
        VStack {
            Text(dayOfWeek).foregroundColor(.white).font(.system(size: 16, weight: .medium))
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
