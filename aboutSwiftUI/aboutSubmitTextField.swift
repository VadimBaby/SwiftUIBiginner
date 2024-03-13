//
//  aboutSubmitTextField.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 13.03.2023.
//

import SwiftUI

struct aboutSubmitTextField: View {
    
    enum Submited {
        case route
        case search
        case next
    }
    
    @State var text: String = ""
    @State var onSubmited: Submited?
    
    var body: some View {
        VStack(spacing: 20){
            
            if let onSubmitedTrue = onSubmited {
//                if(onSubmitedTrue == .search){
//                    Text("Submited: search")
//                }else if(onSubmitedTrue == .route){
//                    Text("Submited: route")
//                }else{
//                    Text("Submited: send")
//                }
                
                Text("Submited: \(onSubmitedTrue == .search ? "search" : onSubmitedTrue == .route ? "route" : "next")")
                    .font(.largeTitle)
            }
            
            Spacer()
            
            TextField("Route", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    onSubmited = .route
                    print("OnSubmit")
                }
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 2)
                )
                .padding(.horizontal)
            
            TextField("Search", text: $text)
                .submitLabel(.search)
                .onSubmit {
                    onSubmited = .search
                    print("OnSubmit")
                }
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 2)
                )
                .padding(.horizontal)
            
            TextField("Next", text: $text)
                .submitLabel(.next)
                .onSubmit {
                    onSubmited = .next
                    print("OnSubmit")
                }
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 2)
                )
                .padding(.horizontal)
            Spacer()
            
        }
    }
}

struct aboutSubmitTextField_Previews: PreviewProvider {
    static var previews: some View {
        aboutSubmitTextField()
    }
}
