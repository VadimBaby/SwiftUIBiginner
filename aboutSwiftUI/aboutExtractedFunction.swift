//
//  aboutExtractedFunction.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 28.02.2023.
//

import SwiftUI

struct aboutExtractedFunction: View {
    @State var backgroundColor: Color = Color.orange
    
    func changeBackground(){
        backgroundColor = Color.yellow
    }
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack{
            Text("Title")
                .font(.title)
                .foregroundColor(.white)
            Button(action: changeBackground, label: {
                Text("press me".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(15)
            })
        }
    }

}

struct aboutExtractedFunction_Previews: PreviewProvider {
    static var previews: some View {
        aboutExtractedFunction()
    }
}
