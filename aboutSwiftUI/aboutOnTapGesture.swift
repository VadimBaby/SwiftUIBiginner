//
//  aboutOnTapGesture.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 12.03.2023.
//

import SwiftUI

struct aboutOnTapGesture: View {
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            RoundedRectangle(cornerRadius: 15)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
                
            Button(action: {
                self.isSelected.toggle()
            }, label: {
                Text("Button")
                    .padding()
                    .foregroundColor(Color.white)
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .cornerRadius(15)
            })
            
            Text("OnTapGesture")
                .padding()
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity)
                .background(Color.orange)
                .cornerRadius(15)
                .onTapGesture {
                    self.isSelected.toggle()
                }
            
            Text("Double Tap Gesture")
                .padding()
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity)
                .background(Color.purple)
                .cornerRadius(15)
                .onTapGesture(count: 2){
                    self.isSelected.toggle()
                }
            
            Spacer()
        }
        .padding()
    }
}

struct aboutOnTapGesture_Previews: PreviewProvider {
    static var previews: some View {
        aboutOnTapGesture()
    }
}
