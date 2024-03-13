//
//  aboutTransition.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 03.03.2023.
//

import SwiftUI

struct aboutTransition: View {
    @State var isShow: Bool = false

    var body: some View {
        VStack{
            Button(action: {
                withAnimation(.spring()){
                    isShow.toggle()
                }
            }, label: {
                Text("Press Me")
            })
            Spacer()
            if isShow {
                RoundedRectangle(cornerRadius: 35)
                    .fill(Color.blue)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.5)
                   // .transition(AnyTransition.opacity.animation(.spring()))
                   // .transition(.move(edge: .bottom))
                    .transition(.asymmetric(
                        insertion: AnyTransition.opacity.animation(.easeInOut),
                        removal: .move(edge: .bottom)
                    ))
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct aboutTransition_Previews: PreviewProvider {
    static var previews: some View {
        aboutTransition()
    }
}
