//
//  aboutColor.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 23.02.2023.
//

import SwiftUI

struct aboutColor: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                // Color.primary
                // Color.secondary
                // Color(UIColor.secondarySystemBackground) // Color is for SwiftUI and UIColor is for KitUI
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            //.shadow(radius: 30)
            .shadow(color: Color("CustomColor").opacity(0.4), radius: 10, x: -20, y: -20)
    }
}

struct aboutColor_Previews: PreviewProvider {
    static var previews: some View {
        aboutColor()
    }
}
