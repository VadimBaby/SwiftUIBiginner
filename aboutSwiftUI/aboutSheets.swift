//
//  aboutSheets.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 04.03.2023.
//

import SwiftUI

struct aboutSheets: View {
    @State var isShowSheet: Bool = false
    
    var body: some View {
        Button(action: {
            self.isShowSheet = true
        }, label: {
            Text("Open Sheet")
        })
        .buttonStyle(.borderedProminent)
//        .fullScreenCover(isPresented: $isShowSheet, content: {
//            SheetScreen(isShowSheet: $isShowSheet)
//        }) // sheet только на весь экран
        .sheet(isPresented: $isShowSheet, content: {
            SheetScreen(isShowSheet: $isShowSheet)
                        // необязательные параметры
                .presentationDetents([.fraction(0.3), .large]) // .fraction(0.3) sheet будем занимать 30% всего экрана
                .presentationDragIndicator(.visible)
        })
    }
}

struct SheetScreen: View {
    @Binding var isShowSheet: Bool
    
    var body: some View {
        ZStack(alignment: .top){
            Color.yellow
                .ignoresSafeArea()
        
            VStack{
                HStack{
                    Button(action: {
                        self.isShowSheet = false
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.title)
                            .foregroundColor(.black)
                    })
                    Spacer()
                }
                .padding()
                Spacer()
                Text("That's Sheet")
                Spacer()
            }
        }
        
    }
}

struct aboutSheets_Previews: PreviewProvider {
    static var previews: some View {
        aboutSheets()
    }
}
