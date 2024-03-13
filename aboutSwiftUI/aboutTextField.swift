//
//  aboutTextField.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 06.03.2023.
//

import SwiftUI

struct aboutTextField: View {
    @State var textField1: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView{
            VStack {
                TextField("First", text: $textField1)
                   // .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(.red)
                    .padding()
                    .background(Color.black.opacity(0.1).cornerRadius(15))
                    .padding(.horizontal, 10)
                    .font(.headline)
                
                Button(action: {
                    if textField1 != "" {
                        dataArray.append(textField1)
                        textField1 = ""
                    }
                }, label: {
                    Text("save".uppercased())
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(textField1.count >= 3 ? Color.blue : Color.gray)
                        .cornerRadius(15)
                        .padding(.horizontal, 10)
                        .font(.headline)
                })
                .disabled(textField1.count < 3)
                
                VStack{
                    ForEach(dataArray, id: \.self){ item in
                        Text(item)
                    }
                }
            }
            .navigationTitle("Cock")
        }
    }
}

struct aboutTextField_Previews: PreviewProvider {
    static var previews: some View {
        aboutTextField()
    }
}
