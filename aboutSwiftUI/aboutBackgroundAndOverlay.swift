//
//  aboutBackgroundAndOverlay.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 25.02.2023.
//

import SwiftUI

struct aboutBackgroundAndOverlay: View {
    var body: some View {
        VStack(spacing: 100){
            Text("Hello")
                .foregroundColor(.white)
                .background(
                    // Color.red
                   // AngularGradient(gradient: Gradient(colors: [Color.red, Color.orange]), center: .center, angle: .degrees(25))
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing)
                        )
                        .frame(width: 100, height: 100, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.orange, Color.red]), startPoint: .leading, endPoint: .trailing)
                        )
                        .frame(width: 120, height: 120, alignment: .center)
                )
            
            Circle()
                .fill(.pink)
                .frame(width: 100, height: 100)
                .overlay(
                    Text("1")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                )
                .background(
                    Circle()
                        .fill(.purple)
                        .frame(width: 110, height: 110)
                )
            
            Rectangle()
                .frame(width: 100, height: 100)
                .overlay(
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 50, height: 50)
                    , alignment: .topLeading
                )
                .background(
                    Rectangle()
                        .fill(.red)
                        .frame(width: 150, height: 150)
                    , alignment: .bottomTrailing
                )
            
            Image(systemName: "heart.fill")
                .font(.system(size: 30))
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.red, Color.orange]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                        )
                        .frame(width: 80, height: 80)
                        .shadow(
                            color: .orange.opacity(0.5),
                            radius: 10,
                            x: 0,
                            y: 10)
                        .overlay(
                            Circle()
                                .fill(.blue)
                                .frame(width: 30, height: 30)
                                .overlay(
                                    Text("5")
                                        .foregroundColor(.white)
                                )
                                .shadow(
                                    color: .orange.opacity(0.5),
                                    radius: 10,
                                    x: 5,
                                    y: 5)
                            , alignment: .bottomTrailing
                        )
                )
        }
    }
}

struct aboutBackgroundAndOverlay_Previews: PreviewProvider {
    static var previews: some View {
        aboutBackgroundAndOverlay()
    }
}
