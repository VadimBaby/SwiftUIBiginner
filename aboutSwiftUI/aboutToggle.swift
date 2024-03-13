//
//  aboutToggle.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 07.03.2023.
//

import SwiftUI

struct aboutToggle: View {
    @State var isOnline = false
    
    var body: some View {
        VStack{
            HStack{
                Text("Status:")
                Text(isOnline ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(isOn: $isOnline, label: {
                HStack{
                    Text("Change status".capitalized)
                    Image(systemName: "heart.fill")
                }
            })
            .tint(Color.purple)
            
            Spacer()
        }
        .padding()
    }
}

struct aboutToggle_Previews: PreviewProvider {
    static var previews: some View {
        aboutToggle()
    }
}
