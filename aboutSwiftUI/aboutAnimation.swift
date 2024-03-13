//
//  aboutAnimation.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 02.03.2023.
//

import SwiftUI

struct aboutAnimation: View {
    @State var isAnimated: Bool = false
    @State var opacity = 1.0
    
    var body: some View {
        VStack(spacing: 0){
            Button(action: {
                withAnimation(
                    Animation
                        .default // вид анимации
                       // .delay(2) // задержка в 2 секунды
                       // .repeatCount(5, autoreverses: true) // количество повторений
                       // .repeatForever(autoreverses: true) // бесконечное повторение
                ){
                    isAnimated.toggle()
                }
                
                if opacity > 0 {
                    opacity -= 0.5
                }else {
                    opacity += 0.5
                }
                
            }, label: {
                Text("Press me")
            })
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 5 : 35)
                .fill(isAnimated ? .green : .blue)
                .frame(
                    width: isAnimated ? 150 : 300,
                    height: isAnimated ? 150 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
            Spacer()
            
            Image(systemName: isAnimated ? "heart.fill" : "heart")
                .foregroundColor(Color.red)
                .font(.largeTitle)
                .opacity(opacity)
                .animation(.easeIn, value: opacity) // .animation когда мы хотим анимировать определенный компонент и определенное свойство
        }
    }
}

struct aboutAnimation_Previews: PreviewProvider {
    static var previews: some View {
        aboutAnimation()
    }
}
