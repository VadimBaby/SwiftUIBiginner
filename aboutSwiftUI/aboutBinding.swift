//
//  aboutBinding.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 01.03.2023.
//

import SwiftUI

struct aboutBinding: View {
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 10){
                Text(title)
                    .foregroundColor(.white)
                    .font(.title)
                
                buttonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct buttonView: View {
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    @State var buttonColor: Color = Color.blue
    
    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            buttonColor = Color.red
            title = "New Title"
        }, label: {
            Text("Press Me")
                .foregroundColor(.white)
                .font(.headline)
                .padding()
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}

struct aboutBinding_Previews: PreviewProvider {
    static var previews: some View {
        aboutBinding()
    }
}
