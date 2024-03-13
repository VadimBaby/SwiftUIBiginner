//
//  aboutFullScreenCover.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 09.12.2023.
//

import SwiftUI

struct aboutFullScreenCover: View {
    @State private var show: Bool = false
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            Button(action: {
                show.toggle()
            }, label: {
                Text("Click Me")
                    .foregroundStyle(Color.white)
            })
        }
        .fullScreenCover(isPresented: $show, content: {
            FulScreenCoverView()
        })
    }
}

struct FulScreenCoverView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image(systemName: "xmark")
                    .font(.title)
                    .onTapGesture {
                        dismiss()
                    }
            }
            .padding()
            Spacer()
            Text("Full Screen Cover")
            Spacer()
        }
    }
}
#Preview {
    aboutFullScreenCover()
}
