//
//  aboutAnimationTiming.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 02.03.2023.
//

import SwiftUI

struct aboutAnimationTiming: View {
    @State var isAnimating: Bool = false
    
    let timing = 10.0 // можно использовать .linear(duraction: timing), параметр duraction задает скорость анимации
    
    var body: some View {
        VStack{
            Button(action: {
                self.isAnimating.toggle()
            }, label: {
                Text("Animate")
            })
            
            RoundedRectangle(cornerRadius: 15)
                .fill(.orange)
                .frame(width: isAnimating ? 350 : 50, height: 50)
                .animation(.linear, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 15)
                .fill(.orange)
                .frame(width: isAnimating ? 350 : 50, height: 50)
                .animation(.easeIn, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 15)
                .fill(.orange)
                .frame(width: isAnimating ? 350 : 50, height: 50)
                .animation(.easeInOut, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 15)
                .fill(.orange)
                .frame(width: isAnimating ? 350 : 50, height: 50)
                .animation(.easeOut, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 15)
                .fill(.blue)
                .frame(width: isAnimating ? 350 : 50, height: 50)
                .animation(.spring(), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 15)
                .fill(.blue)
                .frame(width: isAnimating ? 350 : 50, height: 50)
                .animation(.spring(
                    response: 1,
                    dampingFraction: 0.7,
                    blendDuration: 1
                ), value: isAnimating)
        }
    }
}

struct aboutAnimationTiming_Previews: PreviewProvider {
    static var previews: some View {
        aboutAnimationTiming()
    }
}
