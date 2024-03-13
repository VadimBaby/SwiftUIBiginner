//
//  aboutGradients.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 23.02.2023.
//

import SwiftUI

struct aboutGradients: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 15)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.red, .orange]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .frame(width: 300, height: 200)
            Spacer()
            RoundedRectangle(cornerRadius: 15)
                .fill(
                    RadialGradient(gradient: Gradient(colors: [.red, .orange]), center: .center, startRadius: 5, endRadius: 220)
                )
                .frame(width: 300, height: 200)
            Spacer()
            RoundedRectangle(cornerRadius: 15)
                .fill(
                    AngularGradient(gradient: Gradient(colors: [.red, .orange]), center: .center, angle: .degrees(20))
                )
                .frame(width: 300, height: 200)
        }
    }
}

struct aboutGradients_Previews: PreviewProvider {
    static var previews: some View {
        aboutGradients()
    }
}
