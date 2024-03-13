//
//  aboutSafeAreaInsert.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 09.12.2023.
//

import SwiftUI

struct aboutSafeAreaInsert: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 30) {
                    ForEach(0..<30, id: \.self) { _ in
                        Rectangle()
                            .frame(height: 70)
                    }
                }
                .padding()
            }
            .navigationTitle("Title!!!")
//            .safeAreaInset(edge: .bottom, alignment: .center, spacing: nil) {
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .background(Color.yellow)
//            }
            .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    .padding()
                    .background(Color.yellow)
                    .clipShape(Circle())
                    .padding()
            }
            .safeAreaInset(edge: .top, alignment: .center, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow.ignoresSafeArea(edges: .bottom))
            }
        }
    }
}

#Preview {
    aboutSafeAreaInsert()
}
