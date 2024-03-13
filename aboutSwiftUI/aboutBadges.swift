//
//  aboutBadges.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 13.03.2023.
//

import SwiftUI

struct aboutBadges: View {
    var body: some View {
        TabView{
            Color.red
                .edgesIgnoringSafeArea(.top)
                .tabItem{
                    Image(systemName: "heart.fill")
                    Text("Likes")
                }
                .badge(5)
            Color.yellow
                .edgesIgnoringSafeArea(.top)
                .tabItem{
                    Image(systemName: "gear")
                    Text("Settings")
                }
                .badge("New")
            OpenIt()
                .tabItem{
                    Image(systemName: "checkmark")
                    Text("OPEN IT")
                }
        }
        .tint(Color.black)
    }
}

struct OpenIt: View {
    var body: some View {
        List{
            Text("Some Item")
                .badge(3)
            Text("Some Item")
            Text("Some Item")
                .badge("NEW")
            Text("Some Item")
        }
    }
}

struct aboutBadges_Previews: PreviewProvider {
    static var previews: some View {
        aboutBadges()
    }
}
