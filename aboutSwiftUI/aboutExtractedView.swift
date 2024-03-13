//
//  aboutExtractedView.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 28.02.2023.
//

import SwiftUI

struct aboutExtractedView: View {
    var body: some View {
        ZStack{
            Color.mint
                .ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack{
            ItemView(title: "Apples", count: 3, backgroundColor: Color.red)
            ItemView(title: "Orange", count: 5, backgroundColor: Color.orange)
            ItemView(title: "Lime", count: 2, backgroundColor: Color.green)
        }
    }
}

struct ItemView: View {
    let title: String
    let count: Int
    let backgroundColor: Color
    
    var body: some View {
        VStack(spacing: 10){
            Text(title)
                .font(.title)
                .foregroundColor(.white)
            Text("Count: \(count)")
                .font(.headline)
                .foregroundColor(.white)
        }
        .padding()
        .background(backgroundColor)
        .cornerRadius(5)
    }
}

struct aboutExtractedView_Previews: PreviewProvider {
    static var previews: some View {
        aboutExtractedView()
    }
}
