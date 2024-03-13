//
//  aboutImage.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 23.02.2023.
//

import SwiftUI

struct aboutImage: View {
    var body: some View {
        VStack{
            Image("polog")
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 300)
               // .cornerRadius(300)
                .clipShape(
                    //RoundedRectangle(cornerRadius: 50)
                    Circle()
                )
                //.background(.black)
                .shadow(radius: 50)
                //.clipped()
            Spacer()
            
            Image("apple")
                .renderingMode(.template) // now we can change color of our svg image using foreground
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .foregroundColor(.red)
        }
    }
}

struct aboutImage_Previews: PreviewProvider {
    static var previews: some View {
        aboutImage()
    }
}
