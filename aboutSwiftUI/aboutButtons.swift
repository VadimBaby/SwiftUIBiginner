//
//  aboutButtons.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 27.02.2023.
//

import SwiftUI

struct aboutButtons: View {
    @State var count: Int = 0
    @State var isHeart: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            Text("Count: \(count)")
                .font(.largeTitle)
            
            Button("Add Count"){
                if self.isHeart {
                    self.count -= 1
                }else{
                    self.count += 1
                }
            }
            .accentColor(.red)
            
            Button(action: {
                if self.isHeart {
                    self.count -= 1
                }else{
                    self.count += 1
                }
            }, label: {
                RoundedRectangle(cornerRadius: 15)
                    .fill(.blue)
                    .frame(width: 150, height: 70)
                    .overlay(
                        Text("Count number 2")
                            .foregroundColor(.white)
                    )
                    .shadow(radius: 15)
            })
            
            Button(action: {
                self.isHeart.toggle()
            }, label: {
                Circle()
                    .stroke(lineWidth: 3)
                    .fill(self.isHeart ? .red : .black)
                    .frame(width: 100, height: 100)
                    .overlay(
                        Image(
                            systemName: self.isHeart ? "heart.fill" : "heart"
                        )
                            .font(.title)
                            .foregroundColor(self.isHeart ? .red : .black)
                    )
            })
            
            Button(action: {
                if self.isHeart {
                    self.count -= 1
                }else{
                    self.count += 1
                }
            }, label: {
                Text("count that shit".capitalized)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .fill(.blue)
                    )
            })
        }
    }
}

struct aboutButtons_Previews: PreviewProvider {
    static var previews: some View {
        aboutButtons()
    }
}
