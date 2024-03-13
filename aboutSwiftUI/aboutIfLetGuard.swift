//
//  aboutIfLetGuard.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 12.03.2023.
//

import SwiftUI

struct aboutIfLetGuard: View {
    @State var currentUserID: String? = nil
    @State var dataText: String? = nil
    @State var isLoading: Bool = true
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Some Text")
                
                if let newData = dataText {
                    Text(newData)
                        .multilineTextAlignment(.center)
                        .font(.title)
                }
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
                
                Button(action: {
                    currentUserID = "VadimBaby228"
                    dataText = nil
                    getData()
                }, label: {
                    Text("Set UserID")
                        .padding()
                        .tint(Color.white)
                        .background(Color.black)
                        .cornerRadius(15)
                })
            }
            .onAppear{
                getData()
            }
            .navigationTitle("If Let Guard")
        }
    }
    
    func getData(){
        isLoading = true
        if let userID = currentUserID {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                dataText = "This is new data, UserID: \(userID)"
                isLoading = false
            }
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                dataText = "Error!!! You dont have UserID"
                isLoading = false
            }
        }
    }
}

struct aboutIfLetGuard_Previews: PreviewProvider {
    static var previews: some View {
        aboutIfLetGuard()
    }
}
