//
//  aboutSpacer.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 26.02.2023.
//

import SwiftUI

struct aboutSpacer: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.largeTitle)
            .padding(.horizontal, 10)
            Spacer()
            Rectangle()
                .frame(height: 50)
        }
    }
}

struct aboutSpacer_Previews: PreviewProvider {
    static var previews: some View {
        aboutSpacer()
    }
}
