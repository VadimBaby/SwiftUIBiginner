//
//  aboutDarkMode.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 12.03.2023.
//

import SwiftUI

struct aboutDarkMode: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            VStack{
                Text(colorScheme == .dark ? "Now Is Dark Theme" : "Now Is Light Theme")
                    .font(.largeTitle)
                    .padding()
                
                Text("This color is primary".capitalized)
                    .foregroundColor(.primary)
                
                Text("this color is secondary".capitalized)
                    .foregroundColor(.secondary)
                
                Text("this color is black".capitalized)
                    .foregroundColor(.black)
                
                Text("this color is white".capitalized)
                    .foregroundColor(.white)
                
                Text("this color is orange".capitalized)
                    .foregroundColor(Color.orange)
                
                Text("this color is adaptiveColor".capitalized)
                    .foregroundColor(Color("adaptiveColor"))
                
            }
            .navigationTitle("Dark Mode")
        }
    }
}

struct aboutDarkMode_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            aboutDarkMode()
                .preferredColorScheme(.light)
            
            aboutDarkMode()
                .preferredColorScheme(.dark)
        }
    }
}
