//
//  aboutShapes.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 22.02.2023.
//

import SwiftUI

struct aboutShapes: View {
    var body: some View {
        VStack{
            Circle()
                //.fill(.green) // circle color, fill can be gradient
                // .foregroundColor(.yellow) // circle color, foregroundColor cant be gradient
                // .stroke()
                // .stroke(.red)
                // .stroke(.green, lineWidth: 30)
                //.stroke(.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
                .trim(from: 0.2, to: 0.8)
                .stroke(.purple, lineWidth: 20)
                .frame(width: 170)
                .padding(.top)
            Spacer()
            Ellipse()
                //.fill(.green) // circle color
                // .foregroundColor(.yellow) // circle color
                // .stroke()
                // .stroke(.red)
                // .stroke(.green, lineWidth: 30)
                //.stroke(.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
               /* .trim(from: 0.2, to: 0.8)
                .stroke(.purple, lineWidth: 20) */
                .frame(width: 200, height: 100)
            Spacer()
            Capsule(style: .circular)
                .fill(.green) // circle color
                // .foregroundColor(.yellow) // circle color
                // .stroke()
                // .stroke(.red)
                // .stroke(.green, lineWidth: 30)
                //.stroke(.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
               /* .trim(from: 0.2, to: 0.8)
                .stroke(.purple, lineWidth: 20) */
                .frame(width: 200, height: 100)
            Spacer()
            Rectangle()
                //.fill(.green) // circle color
                 .foregroundColor(.yellow) // circle color
                // .stroke()
                // .stroke(.red)
                // .stroke(.green, lineWidth: 30)
                //.stroke(.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
               /* .trim(from: 0.2, to: 0.8)
                .stroke(.purple, lineWidth: 20) */
                .frame(width: 200, height: 100)
            Spacer()
            RoundedRectangle(cornerRadius: 25)
                //.fill(.green) // circle color
                // .foregroundColor(.yellow) // circle color
                // .stroke()
                // .stroke(.red)
                 .stroke(.green, lineWidth: 10)
                //.stroke(.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [30]))
               /* .trim(from: 0.2, to: 0.8)
                .stroke(.purple, lineWidth: 20) */
                .frame(width: 200, height: 100)
        }
        
    }
}

struct aboutShapes_Previews: PreviewProvider {
    static var previews: some View {
        aboutShapes()
    }
}
