//
//  aboutText.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 22.02.2023.
//

import SwiftUI

struct aboutText: View {
    var body: some View {
        VStack {
            Text("I still see your shadows in my room. Can't take the love that I gave you")
                .tracking(5) // letter spacing
                .multilineTextAlignment(.center) // text alignment
                .font(.title)
                .background(.black)
                .foregroundColor(.white)
                .lineSpacing(30)
                .baselineOffset(15) // spacing between text and underline
                .lineLimit(3)
                .truncationMode(.middle) // место где текст будет сокращаться и вместо него ставятся три точки
                .fontWeight(.heavy)
               // .bold()
               // .underline()
                .underline(true, color: Color.red)
                .italic()
                //.strikethrough()
                .strikethrough(true, color: Color.yellow)
            Spacer()
            Text("Hello World!".uppercased()) // .uppercased means that all letter are capital
                .font(.system(size: 37, weight: .medium, design: .rounded))
                .padding()
                .background(Color.yellow)
                .padding()
                .background(Color.red)
            Spacer()
            Text("I could see a whole city from this balcony. Back in 2019 I was outside freely but now they got it out for me".capitalized) // every word start with capital letter
                .font(.title)
                .frame(width: 200, height: 170, alignment: .center)
                .minimumScaleFactor(0.1) // минимальный scale до которого может уменьшится текст
        }
        .padding()
    }
}

struct aboutText_Previews: PreviewProvider {
    static var previews: some View {
        aboutText()
    }
}
