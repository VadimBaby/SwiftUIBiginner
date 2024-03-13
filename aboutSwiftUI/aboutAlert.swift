//
//  aboutAlert.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 06.03.2023.
//

import SwiftUI

struct aboutAlert: View {
    @State var isShowAlert: Bool = false
    @State var backgroundColor: Color = Color.yellow
    
    @State var titleAlert: String = ""
    @State var messageAlert: String = ""
    
    enum changeAlert {
        case succes
        case error
    }

    @State var selectAlert: changeAlert = .succes
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 10) {
                Button("Show alert 1"){
                  //  titleAlert = "Alert Title 1💝"
                  //  messageAlert = "Alert message 1".capitalized
                    
                    selectAlert = .succes
                    
                    self.isShowAlert = true
                }
                Button("Show alert 2"){
//                    titleAlert = "alert title 2".capitalized
//                    messageAlert = "alert message 2".capitalized
                    
                    selectAlert = .error
                    self.isShowAlert = true
                }
            }
        }
        .alert(isPresented: $isShowAlert){
            // Alert(title: Text("Wassup"))
            
//            Alert(
//                title: Text("That's title"),
//                message: Text("Here is message"),
//                primaryButton: .destructive(Text("Delete")),
//                secondaryButton: .cancel()
//            )
            
//            Alert(
//                title: Text("That's title"),
//                message: Text("Here is message"),
//                primaryButton: .destructive(Text("Delete")){
//                    backgroundColor = Color.red
//                },
//                secondaryButton: .cancel()
//            )
            
//            Alert(
//                title: Text(titleAlert),
//                message: Text(messageAlert),
//                primaryButton: .destructive(Text("Delete")){
//                    backgroundColor = Color.red
//                },
//                secondaryButton: .cancel()
//            )
            
            switch selectAlert {
                
            case .error:
                return Alert(
                    title: Text("error"),
                    message: Text("error"),
                    primaryButton: .destructive(Text("Delete")){
                        backgroundColor = Color.red
                    },
                    secondaryButton: .cancel()
                )
            case .succes:
                return Alert(
                    title: Text("success"),
                    message: Text("success"),
                    primaryButton: .destructive(Text("Delete")){
                        backgroundColor = Color.yellow
                    },
                    secondaryButton: .cancel()
                )
            }
        }
    }
}

struct aboutAlert_Previews: PreviewProvider {
    static var previews: some View {
        aboutAlert()
    }
}
