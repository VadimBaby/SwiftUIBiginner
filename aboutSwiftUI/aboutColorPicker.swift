//
//  aboutColorPicker.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 10.03.2023.
//

import SwiftUI

struct aboutColorPicker: View {
    @State var backgroundColor: Color = Color.white
    @State var textColor: Color = Color.black
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(backgroundColor.description)
                ColorPicker(selection: $backgroundColor, supportsOpacity: true, label: {
                    Text("Picker A Background Color")
                        .foregroundColor(textColor)
                })
                    .padding()
                    .background(Color.black.opacity(0.1).cornerRadius(10))
                    .padding(.horizontal)
                
                ColorPicker(
                    selection: $textColor,
                    supportsOpacity: true,
                    label: {
                    Text("Picker a Text Color")
                        .foregroundColor(textColor)
                })
                    .padding()
                    .background(Color.black.opacity(0.1).cornerRadius(10))
                    .padding(.horizontal)
            }
        }
    }
}

struct aboutColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        aboutColorPicker()
    }
}
