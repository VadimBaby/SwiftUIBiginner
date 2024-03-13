//
//  aboutTextEditor.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 07.03.2023.
//

import SwiftUI

struct aboutTextEditor: View {
    @State var textEditor: String = ""
    @State var saveTextEditor: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $textEditor)
                    .frame(height: 250)
                    .overlay{
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(lineWidth: 2)
                    }
                    
                Button(action: {
                    if textEditor.count > saveTextEditor.count {
                        saveTextEditor = textEditor
                    }
                }, label: {
                    Text("save".uppercased())
                        .tint(Color.white)
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(15)
                })
                Text(saveTextEditor)
                Spacer()
            }
            .padding()
            .navigationTitle("Text Editor")
        }
    }
}

struct aboutTextEditor_Previews: PreviewProvider {
    static var previews: some View {
        aboutTextEditor()
    }
}
