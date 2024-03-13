//
//  aboutForEachLoop.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 26.02.2023.
//

import SwiftUI

struct aboutForEachLoop: View {
    let data: [String] = ["Ice spice", "Lil Baby", "coco"]
    
    var body: some View {
        VStack{
            HStack{
                ForEach(data, id: \.self) { item in
                    Text(item)
                        .font(.title)
                        .bold()
                }
            }
            
            
            HStack{
                ForEach(0..<10) {index in
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [.red, .orange]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                        )
                        .frame(width: 30, height: 30)
                        .overlay(
                            Text("\(index)")
                                .foregroundColor(.white)
                                .font(.headline)
                                .bold()
                        )
                }
            }
        }
    }
}

struct aboutForEachLoop_Previews: PreviewProvider {
    static var previews: some View {
        aboutForEachLoop()
    }
}
