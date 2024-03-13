//
//  aboutActionSheet.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 06.03.2023.
//

import SwiftUI

struct aboutActionSheet: View {
    @State var isShowActionSheet: Bool = false
    @State var backgroundColor: Color = Color.white
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            Button("Press Me"){
                self.isShowActionSheet = true
            }
            .confirmationDialog("first", isPresented: $isShowActionSheet, actions: {
                Button("Red"){
                    backgroundColor = Color.red
                }
                
                Button("Reset", role: .destructive){
                    backgroundColor = Color.white
                }
                
                Button("Cancel", role: .cancel){
                    isShowActionSheet = false
                }
            },
            message: { // не обязательный параментр
                Text("Select a background color".capitalized)
            })

        }
    }
}

struct aboutActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        aboutActionSheet()
    }
}
