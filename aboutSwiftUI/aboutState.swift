//
//  aboutState.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 27.02.2023.
//

import SwiftUI

struct aboutState: View {
    @State var backgroundColor: Color = Color.green
    @State var someTitle: String = "Some Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20){
                Text(someTitle)
                    .foregroundColor(.white)
                    .font(.title)
                Text("Count: \(count)")
                    .foregroundColor(.white)
                    .font(.title2)
                
                HStack{
                    Button(action: {
                        self.backgroundColor = Color.red
                        self.someTitle = "Button 1 has pressed"
                        self.count += 1
                    }, label: {
                        Text("button 1".uppercased())
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal, 10)
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                            )
                    })
                    
                    Button(action: {
                        self.backgroundColor = Color.orange
                        self.someTitle = "Button 2 has pressed"
                        self.count -= 1
                    }, label: {
                        Text("button 1".uppercased())
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal, 10)
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color.cyan)
                            )
                    })
                }
                
                Button(action: {
                    self.backgroundColor = Color.green
                    self.someTitle = "Some Title"
                    self.count = 0
                }, label: {
                    Text("Reset".uppercased())
                        .foregroundColor(.white)
                        .bold()
                        .padding()
                        .padding(.horizontal, 10)
                        .background(
                            Capsule()
                                .fill(Color.black)
                        )
                })
            }
        }
    }
}

struct aboutState_Previews: PreviewProvider {
    static var previews: some View {
        aboutState()
    }
}
