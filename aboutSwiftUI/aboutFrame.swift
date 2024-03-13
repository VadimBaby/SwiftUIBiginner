//
//  aboutFrame.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 24.02.2023.
//

import SwiftUI

struct aboutFrame: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
          //  .background(.red)
           // .frame(width: 300, height: 300, alignment: .bottomTrailing)
           // .background(.green)
            //.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.red)
            .frame(height: 100, alignment: .top)
            .background (Color.orange)
            .frame(width: 150)
            .background (Color .purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background (Color.pink)
            .frame(height: 400)
            .background (Color.green)
            .frame(maxHeight: .infinity, alignment: .bottom)
            .background (Color.yellow)
    }
}

struct aboutFrame_Previews: PreviewProvider {
    static var previews: some View {
        aboutFrame()
    }
}
