//
//  aboutScrollView.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 26.02.2023.
//

import SwiftUI

struct aboutScrollView: View {
    var body: some View {
        ScrollView{
            LazyVStack{ // LazyVStack и LazyHStack не создают элементы которых нет на экране, только при сколле будут создаваться оставшиеся элементы
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHStack{
                            ForEach(0..<20){index in
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(.white)
                                    .frame(width: 250, height: 200)
                                    .shadow(radius: 15)
                                    .padding()
                            }
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.top, 30)
        }
    }
}

struct aboutScrollView_Previews: PreviewProvider {
    static var previews: some View {
        aboutScrollView()
    }
}
