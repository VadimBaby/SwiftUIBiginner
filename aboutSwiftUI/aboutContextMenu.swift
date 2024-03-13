//
//  aboutContextMenu.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 06.03.2023.
//

import SwiftUI

struct aboutContextMenu: View {
    @State var backgroundColor: Color = Color.red
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(backgroundColor)
            )
            .contextMenu(menuItems: {
                Button(action: {
                    backgroundColor = Color.green
                }, label: {
                    Label("Green", systemImage: "heart.fill")
                })
                
                Button(action: {
                    backgroundColor = Color.yellow
                }, label: {
                    Text("Yellow")
                })
                
                Button(action: {
                    backgroundColor = Color.red
                }, label: {
                    HStack {
                        Text("Red")
                        Image(systemName: "person.fill")
                    }
                })
            })
    }
}

struct aboutContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        aboutContextMenu()
    }
}
