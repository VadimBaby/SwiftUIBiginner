//
//  aboutIfElse.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 01.03.2023.
//

import SwiftUI

struct aboutIfElse: View {
    @State var isLoading: Bool = true
    @State var isShowCircle: Bool = false
    @State var colorToggle: Bool = false
    
    var body: some View {
        VStack{
            if self.isLoading {
                Button(action: {
                    self.isLoading = false
                }, label: {
                    Text("Stop Loading")
                })
                
                ProgressView()
            } else {
                Button(action: {
                    self.isShowCircle.toggle()
                }, label: {
                    Text("show circle: ".capitalized + "\(self.isShowCircle ? "Yes" : "No")")
                        .padding(5)
                })
                
                if self.isShowCircle {
                    Button(action: {
                        self.colorToggle.toggle()
                    }, label: {
                        Text("Change Color")
                            .padding(5)
                    })
                    
                    Circle()
                        .fill(self.colorToggle ? Color.red : Color.green)
                        .frame(width: 150, height: 150)
                }
            }
            Spacer()
        }
    }
}

struct aboutIfElse_Previews: PreviewProvider {
    static var previews: some View {
        aboutIfElse()
    }
}
