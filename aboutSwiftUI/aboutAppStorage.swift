//
//  aboutAppStorage.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 12.03.2023.
//

import SwiftUI

struct aboutAppStorage: View {
    @State var name: String = ""
    @AppStorage("name") var appStorageName: String?
    
    var body: some View {
        VStack(spacing: 5){
            Text("Your name: \(name)")
            
            if let savedName = appStorageName {
                Text("Saved name: \(savedName)")
            }
            
            TextField("Your Name", text: $name)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 2)
                )
                .padding()
            
            Button("save".capitalized){
              //  UserDefaults.standard.set(name, forKey: "name")
                appStorageName = name
            }
            
            Button("reset".capitalized){
                name = ""
                // UserDefaults.standard.set("", forKey: "name")
                appStorageName = nil
            }
        }
        .onAppear{
           // name = UserDefaults.standard.string(forKey: "name") ?? ""
            name = appStorageName ?? ""
        }
    }
}

struct aboutAppStorage_Previews: PreviewProvider {
    static var previews: some View {
        aboutAppStorage()
    }
}
