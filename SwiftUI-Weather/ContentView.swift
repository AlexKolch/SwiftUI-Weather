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
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
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
                }
                HStack {
                    VStack {
                        
                    }
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
