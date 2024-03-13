//
//  aboutMenu.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 09.12.2023.
//

import SwiftUI

struct aboutMenu: View {
    var body: some View {
        Menu("Click Me") {
            Button("First") { }
            Button("Second") { }
            Button("Third") { }
        }
    }
}

#Preview {
    aboutMenu()
}
