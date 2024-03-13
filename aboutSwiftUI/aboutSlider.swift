//
//  aboutSlider.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 11.03.2023.
//

import SwiftUI

struct aboutSlider: View {
    @State var sliderValue: Double = 1
    @State var secondSliderValue: Double = 45
    @State var thirdSliderValue: Double = 3
    @State var fourSliderValue: Double = 10
    @State var colorText: Color = Color.red
    @State var checkThatShit: Bool = false
    
    var body: some View {
        VStack{
            Text("\(sliderValue)")
                .opacity(sliderValue)
            Slider(value: $sliderValue)
                .tint(.red)
            
            Text(
                String(format: "%.2f", secondSliderValue)
            )
            
            Slider(value: $secondSliderValue, in: 0...100)
                .tint(.green)
            
            Text(
                String(format: "%.1f", thirdSliderValue)
            )
            
            Slider(value: $thirdSliderValue, in: 0...5, step: 0.5)
            
            Text(
                String(format: "%.2f", fourSliderValue)
            )
            .foregroundColor(colorText)
            
            Slider(
                value: $fourSliderValue,
                in: 0...20,
                step: 0.25,
                label: {
                    Text("Title")
                },
                minimumValueLabel: {
                    Text("1")
                },
                maximumValueLabel: {
                    Text("20")
                },
                onEditingChanged: { isEditing in
                    if isEditing {
                        colorText = Color.green
                    }else{
                        colorText = Color.red
                    }
                }
            )
            .tint(Color.purple)
        }
        .padding(.horizontal)
    }
}

struct aboutSlider_Previews: PreviewProvider {
    static var previews: some View {
        aboutSlider()
    }
}
