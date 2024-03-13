//
//  aboutStepper.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 11.03.2023.
//

import SwiftUI

struct aboutStepper: View {
    @State var count: Int = 0
    @State var widthRectangle: CGFloat = 300
    
    var body: some View {
        VStack {
            Stepper("Count: \(count)", value: $count)
                .padding()
            
            RoundedRectangle(cornerRadius: 15)
                .frame(width: widthRectangle, height: 100)
            
            Stepper("Change width") {
                incrementWidth(amount: 20)
            } onDecrement: {
                incrementWidth(amount: -20)
            }
            .padding()
            Text("\(widthRectangle)")

        }
    }
    
    func incrementWidth(amount: CGFloat){
        if(widthRectangle > 0 || amount > 0){
            withAnimation(.linear){
                widthRectangle += amount
            }
        }
    }
}

struct aboutStepper_Previews: PreviewProvider {
    static var previews: some View {
        aboutStepper()
    }
}
