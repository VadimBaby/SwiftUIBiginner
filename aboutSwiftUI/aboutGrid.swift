//
//  aboutGrid.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 26.02.2023.
//

import SwiftUI

struct aboutGrid: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 10, alignment: nil),
        GridItem(.flexible(), spacing: 10, alignment: nil),
        GridItem(.flexible(), spacing: 10, alignment: nil)
    ]
    
    var body: some View {
        ScrollView{
            Rectangle()
                .fill(Color.orange)
                .frame(height: 450)
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]
            ){
                Section(header:
                    Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                        .background(Color.purple)
                                
                ){
                    ForEach(0..<50){index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
                Section(header:
                    Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                        .background(Color.yellow)
                ){
                    ForEach(0..<50){index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
            }
        }
    }
}

struct aboutGrid_Previews: PreviewProvider {
    static var previews: some View {
        aboutGrid()
    }
}
