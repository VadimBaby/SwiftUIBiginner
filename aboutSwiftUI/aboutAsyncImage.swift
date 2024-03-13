//
//  aboutAsyncImage.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 12.03.2023.
//

import SwiftUI

struct aboutAsyncImage: View {
    let url = URL(string: "https://picsum.photos/400")
    @State var count: Int = 0
    var body: some View {
        VStack{
            AsyncImage(url: url){ phase in
                switch phase {
                    
                case .empty:
                    ProgressView()
                case .success(let returnedImage):
                    returnedImage
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .cornerRadius(15)
                case .failure:
                    Image(systemName: "questionmark")
                default:
                    Image(systemName: "questionmark")
                }
            }
            
            Spacer()
            
            AsyncImage(url: url) { returnedImage in
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .cornerRadius(15)
            } placeholder: {
                ProgressView()
            }

        }
    }
}

struct aboutAsyncImage_Previews: PreviewProvider {
    static var previews: some View {
        aboutAsyncImage()
    }
}
