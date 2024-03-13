//
//  aboutNavigationView.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 04.03.2023.
//

import SwiftUI

struct aboutNavigationView: View {
    @State var isShowSheet: Bool = false
    
    var body: some View {
        NavigationView{
            ScrollView{
                NavigationLink("21 Savage", destination: SecondScreen())
                ForEach(0..<50){ index in
                    Text("21 Savage")
                        .font(.largeTitle)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                }
            }
            .navigationTitle("First Screen")
            .navigationBarTitleDisplayMode(.large)
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading, content: {
                    Button(action: {
                        self.isShowSheet = true
                    }, label: {
                        Image(systemName: "person.fill")
                            .tint(.black)
                    })
                    .sheet(isPresented: $isShowSheet, content: {
                        VStack{
                            HStack{
                                Button(action: {
                                    self.isShowSheet = false
                                }, label: {
                                    Image(systemName: "xmark")
                                        .font(.title)
                                        .tint(.black)
                                })
                                Spacer()
                            }
                            .padding()
                            Spacer()
                            Text("Here we go again")
                            Spacer()
                        }
                    })
                })
                
                ToolbarItem(placement: .navigationBarTrailing, content: {
                    NavigationLink(destination: Text("Setting Screen"), label:
                    {
                        Image(systemName: "gear")
                            .tint(.black)
                    })
                })
            })
        }
    }
}

struct SecondScreen: View {
    @State var isShowSheet: Bool = false
    @Environment(\.dismiss) var dismiss // also we ca use it with sheet
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Back"){
                dismiss()
            }
            
            NavigationLink("Click here", destination: Text("Damn"))
            
        }
        .navigationTitle("Wow")
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarTrailing, content: {
                Button(action: {
                    self.isShowSheet = true
                }, label: {
                    Image(systemName: "heart.fill")
                        .tint(.red)
                })
                .sheet(isPresented: $isShowSheet, content: {sheetForSecondScreen()})
            })
        })
        .navigationBarBackButtonHidden(true)
    }
}

struct sheetForSecondScreen: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Color.purple.opacity(0.4)
                .ignoresSafeArea()
            
            VStack{
                HStack{
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.title)
                            .tint(.white)
                    })
                    Spacer()
                }
                .padding()
                
                Spacer()
                Text("Wassup again")
                    .foregroundColor(.white)
                Spacer()
            }
        }
    }
}

struct aboutNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        aboutNavigationView()
        
    }
}
