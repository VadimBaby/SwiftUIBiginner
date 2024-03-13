//
//  aboutModel.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 12.03.2023.
//

import SwiftUI

struct UserModel: Identifiable {
    let id = UUID()
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct aboutModel: View {
    @State var users: [UserModel] = [
        UserModel(
            displayName: "Vadim",
            userName: "vadimbaby228",
            followerCount: 1925185,
            isVerified: true
        ),
        
        UserModel(
            displayName: "Denis",
            userName: "den220",
            followerCount: 3425,
            isVerified: true
        ),
        
        UserModel(
            displayName: "Australia",
            userName: "a22stalia",
            followerCount: 35351241,
            isVerified: false
        ),
        
        UserModel(
            displayName: "Nick",
            userName: "nick360",
            followerCount: 124643,
            isVerified: false
        ),
        
        UserModel(
            displayName: "Drizzy",
            userName: "drake",
            followerCount: 1912959192,
            isVerified: true
        ),
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15) {
                        HStack{
                            Circle()
                                .frame(width: 35, height: 35)
                                .foregroundColor(.primary.opacity(0.7))
                            VStack(alignment: .leading) {
                                Text(user.displayName)
                                    .font(.title3)
                                    .foregroundColor(.primary)
                                Text("@\(user.userName)")
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                            
                            if user.isVerified {
                                Image(systemName: "checkmark.seal.fill")
                                    .font(.title3)
                                    .foregroundColor(Color.blue)
                            }
                            
                            VStack(alignment: .trailing){
                                Text("\(user.followerCount)")
                                    .foregroundColor(.primary)
                                Text("Folowers")
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .navigationTitle("Users")
        }
    }
}

struct aboutModel_Previews: PreviewProvider {
    static var previews: some View {
        aboutModel()
    }
}
