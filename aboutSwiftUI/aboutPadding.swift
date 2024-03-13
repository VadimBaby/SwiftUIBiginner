//
//  aboutPadding.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 26.02.2023.
//

import SwiftUI

struct aboutPadding: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Let go".capitalized)
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 5)
            Text("I loved you untill you try to get in my head, that's why i lost respect. You doin the most to get my attention but I'm not impressed. I changed my bedsheets but I still smell your flash")
                .foregroundColor(.gray)
        }
        .padding()
        .background(
            Color.white
                .cornerRadius(15)
                .shadow(
                    color: .black.opacity(0.3),
                    radius: 10,
                    x: 0,
                    y: 10
                )
        )
        .padding(.horizontal, 15)
    }
}

struct aboutPadding_Previews: PreviewProvider {
    static var previews: some View {
        aboutPadding()
    }
}
