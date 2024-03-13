//
//  aboutBorder.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 13.03.2023.
//

import SwiftUI

struct aboutBorder: View {
    var body: some View {
        VStack{
            Button(action: {}, label: {
                Text("Custom Button 1")
                    .frame(height: 40)
                    .frame(maxWidth: .infinity)
            })
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 30))
            .padding(.horizontal)
            
            Button("Button Title 2"){
                
            }
            .frame(height: 55)
            .buttonStyle(.plain)
            
            Button("Button Title 3"){
                
            }
            .frame(height: 55)
            .buttonStyle(.bordered)
            
            Button("Button Title 4"){
                
            }
            .frame(height: 55)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title 5"){
                
            }
            .frame(height: 55)
            .buttonStyle(.borderless)
        }
    }
}

struct aboutBorder_Previews: PreviewProvider {
    static var previews: some View {
        aboutBorder()
    }
}
