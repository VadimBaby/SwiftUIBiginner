//
//  aboutBackgroundMaterial.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 12.03.2023.
//

import SwiftUI

struct aboutBackgroundMaterial: View {
    var body: some View {
        VStack{
            Spacer()
            
            VStack{
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(Color.black)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
                .frame(height: 350)
                .frame(maxWidth: .infinity)
                .background(
                    .ultraThinMaterial
                    // .thinMaterial // and else
                )
                .cornerRadius(15)
        }
        .ignoresSafeArea()
        .background(
            LinearGradient(
                gradient: Gradient(
                    colors: [
                        Color.red,
                        Color.orange
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .preferredColorScheme(.dark) // change the status bar color
    }
}

struct aboutBackgroundMaterial_Previews: PreviewProvider {
    static var previews: some View {
        aboutBackgroundMaterial()
    }
}
