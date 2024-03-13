//
//  aboutOnAppear.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 12.03.2023.
//

import SwiftUI

struct aboutOnAppear: View {
    @State var myText: String = "Start text..."
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView{
                Text(myText)
                LazyVStack{
                    ForEach(0..<50){_ in
                        RoundedRectangle(cornerRadius: 15)
                            .frame(height: 200)
                            .onAppear{
                                count += 1
                            }
                            .onDisappear(){
                                count -= 1
                            }
                    }
                }
                .padding()
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                    myText = "This is new text"
                }
            }
            .onDisappear{
                myText = "Ending ..."
            }
            .navigationTitle("On Appear: \(count)")
        }
    }
}

struct aboutOnAppear_Previews: PreviewProvider {
    static var previews: some View {
        aboutOnAppear()
    }
}
