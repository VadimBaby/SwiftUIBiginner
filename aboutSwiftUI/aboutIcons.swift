//
//  aboutIcons.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 23.02.2023.
//

import SwiftUI

struct aboutIcons: View {
    var body: some View {
        Image(systemName: "square.and.arrow.up.circle.fill")
            .renderingMode(.original)
            .resizable()
            // .aspectRatio(contentMode: .fit)
            // .scaledToFill() // its the same with .aspectRatio(contentMode: .fill)
            .scaledToFit() // its the same with .aspectRatio(contentMode: .fit)
            //.font(.system(size: 200))
            .foregroundColor(.green)
            .frame(width: 300, height: 300) // to work frame it needs use .resizable()
            // .clipped() cut image that is out the frame

    }
}

struct aboutIcons_Previews: PreviewProvider {
    static var previews: some View {
        aboutIcons()
    }
}
