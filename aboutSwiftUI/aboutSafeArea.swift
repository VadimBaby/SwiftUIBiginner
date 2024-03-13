//
//  aboutSafeArea.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 27.02.2023.
//

import SwiftUI

struct aboutSafeArea: View {
    var body: some View {
        ScrollView{
            Text("There are titles")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(.leading, 10)
                .frame(maxWidth: .infinity, alignment: .leading)
            ForEach(0..<10){index in
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white)
                    .frame(height: 200)
                    .shadow(radius: 15)
                    .padding()
            }
        }
        .background(Color.cyan, ignoresSafeAreaEdges: .all)
        
       // .edgesIgnoringSafeArea(.all) - is old method
        
        
        
//        ZStack{
//            Color.blue
//                .ignoresSafeArea()
//
//            Text("Ice Spice")
//                .font(.largeTitle)
//                .foregroundColor(.white)
//        }
    }
}

struct aboutSafeArea_Previews: PreviewProvider {
    static var previews: some View {
        aboutSafeArea()
    }
}
