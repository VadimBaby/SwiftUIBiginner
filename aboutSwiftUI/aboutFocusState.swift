//
//  aboutFocusState.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 13.03.2023.
//

import SwiftUI

struct aboutFocusState: View {
    enum FocusTextField: Hashable {
        case username
        case password
    }
    
    @State var text: String = ""
    @State var password: String = ""
    
    @FocusState var focusOnUserName: Bool
    @FocusState var focusOnPassword: Bool
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("Your name".capitalized, text: $text)
                    .focused($focusOnUserName)
                    .padding(.leading)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.brightness(0.3))
                    .cornerRadius(15)
                    .padding(.horizontal)
                
                SecureField("Password", text: $password)
                    .focused($focusOnPassword)
                    .padding(.leading)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.brightness(0.3))
                    .cornerRadius(15)
                    .padding(.horizontal)
                
                Button(action: {
                    if !text.isEmpty && !password.isEmpty {
                        focusOnPassword = false
                        focusOnUserName = false
                        print("Sing Up")
                    } else if text.isEmpty {
                        focusOnPassword = false
                        focusOnUserName = true
                    } else {
                        focusOnUserName = false
                        focusOnPassword = true
                    }
                }, label: {
                    Text("Sign Up📲")
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(15)
                })
                
                Button(action: {
                    self.focusOnUserName.toggle()
                }, label: {
                    Text("Toggle Focus")
                        .tint(Color.white)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(15)
                })
                
                NavigationLink(
                    destination: HowElseWeCanUserFocusState(),
                    label: {
                        Text("Another case with FocusState".capitalized)
                            .padding()
                            .tint(Color.white)
                            .background(Color.primary)
                            .cornerRadius(15)
                    })
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                    self.focusOnUserName = true
                }
        }
        }
    }
}

struct HowElseWeCanUserFocusState: View {
    enum FocusTextField: Hashable {
        case username
        case password
    }
    
    @State var text: String = ""
    @State var password: String = ""
    
    @FocusState var focusedOnTextField: FocusTextField?
    
    var body: some View {
            VStack{
                TextField("Your name".capitalized, text: $text)
                    .focused($focusedOnTextField, equals: .username)
                    .padding(.leading)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.brightness(0.3))
                    .cornerRadius(15)
                    .padding(.horizontal)
                
                SecureField("Password", text: $password)
                    .focused($focusedOnTextField, equals: .password)
                    .padding(.leading)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.brightness(0.3))
                    .cornerRadius(15)
                    .padding(.horizontal)
                
                Button(action: {
                    if !text.isEmpty && !password.isEmpty {
                        focusedOnTextField = nil
                        print("Sing Up")
                    } else if text.isEmpty {
                        focusedOnTextField = .username
                    } else {
                        focusedOnTextField = .password
                    }
                }, label: {
                    Text("Sign Up📲")
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(15)
                })
                
                Button(action: {
                    if focusedOnTextField == nil {
                        focusedOnTextField = .username
                    }else{
                        focusedOnTextField = nil
                    }
                }, label: {
                    Text("Toggle Focus")
                        .tint(Color.white)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(15)
                })
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                    focusedOnTextField = .username
                }
        }
    }
}

struct aboutFocusState_Previews: PreviewProvider {
    static var previews: some View {
        aboutFocusState()
    }
}
