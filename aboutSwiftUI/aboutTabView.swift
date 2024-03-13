//
//  aboutTabView.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 11.03.2023.
//

import SwiftUI

struct aboutTabView: View {
    @State var selection: Int = 1
    
    var body: some View {
        TabView(selection: $selection){
            FirstScreen(selection: $selection)
                .tabItem {
                    Image(systemName: "gear")
                    Text("First Screen")
                }
                .tag(0)
            
            SecondScreenForIt()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Second Screen")
                }
                .tag(1)
            
            ThirdScreen()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Third Screen")
                }
                .tag(2)
        }
        .tint(Color.red)
    }
}

struct FirstScreen: View {
    @Binding var selection: Int
    
    var body: some View {
        ZStack{
            Color.red
                .edgesIgnoringSafeArea(.top)
            
            VStack{
                Text("First Screen")
                    .foregroundColor(Color.white)
                Button(action: {
                    selection = 2
                }, label: {
                    Text("Go To Third Screen")
                        .font(.title3)
                        .foregroundColor(.red)
                        .padding()
                        .background(Color.white.cornerRadius(15))
                })
            }
        }
    }
}

struct SecondScreenForIt: View {
    @State var selection: Int = 0
    
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                TabView(selection: $selection){
                    Rectangle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(
                                    colors: [Color.red, Color.orange]
                                ),
                                startPoint: .leading,
                                endPoint: .trailing)
                        )
                        .overlay{
                            Image(systemName: "heart.fill")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.white)
                                .padding(50)
                        }
                        .tag(0)
                    
                    Rectangle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(
                                    colors: [Color.red, Color.orange]
                                ),
                                startPoint: .trailing,
                                endPoint: .leading)
                        )
                        .overlay{
                            Image(systemName: "person.fill")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.white)
                                .padding(50)
                        }
                        .tag(1)
                    
                    Rectangle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(
                                    colors: [Color.red, Color.orange]
                                ),
                                startPoint: .leading,
                                endPoint: .trailing)
                        )
                        .overlay{
                            Image(systemName: "gear")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.white)
                                .padding(50)
                        }
                        .tag(2)
                }
                .frame(height: 300)
                .tabViewStyle(PageTabViewStyle())
                
                Button(action: {
                    withAnimation(.linear){
                        selection = 2
                    }
                }, label: {
                    Text("Go To Last")
                        .foregroundColor(.green)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                })
            }
            
        }
    }
}


struct ThirdScreen: View {
    var body: some View {
        ZStack{
            Color.yellow
                .edgesIgnoringSafeArea(.top)
            
            ScrollView{
                ForEach(0..<20){ index in
                    Text("Index: \(index)")
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical)
                        .background(Color.red)
                        .cornerRadius(15)
                        .padding()
                }
            }
        }
    }
}


struct aboutTabView_Previews: PreviewProvider {
    static var previews: some View {
        aboutTabView()
    }
}
