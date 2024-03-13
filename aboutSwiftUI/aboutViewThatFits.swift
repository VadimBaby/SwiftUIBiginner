//
//  aboutViewThatFits.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 10.12.2023.
//

import SwiftUI

struct aboutViewThatFits: View {
    var body: some View {
        ZStack {
            Color.red
            
            ViewThatFits(in: .horizontal) {
                Text("This is some text that i would like to display to the user")
                Text("This is some text that i would like to display")
                Text("This is some text")
            }
        }
        .frame(height: 100)
        .padding(10)
        .font(.headline)
    }
}

#Preview {
    aboutViewThatFits()
}
