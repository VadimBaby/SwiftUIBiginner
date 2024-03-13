//
//  aboutInitializer.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 26.02.2023.
//

import SwiftUI

struct aboutInitializer: View {
    
    enum Fruits: String {
        case apple = "Apple"
        case orange = "Orange"
        case banana = "Banana"
    }
    
    let backgroundColor: Color
    let count: String
    let fruct: Fruits
    
    init(count: Int, fruct: Fruits) {
        self.count = "\(count)"
        self.fruct = fruct
        
        switch fruct {
            
        case .apple:
            self.backgroundColor = .red
        case .orange:
            self.backgroundColor = .orange
        case .banana:
            self.backgroundColor = .yellow
        
        }
    }
    
    var body: some View {
        VStack(spacing: 12){
            Text(count)
                .foregroundColor(.white)
                .font(.largeTitle)
                .underline()
            Text(fruct.rawValue)
                .foregroundColor(.white)
                .font(.headline)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(15)
    }
}

struct aboutInitializer_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            Spacer()
            aboutInitializer(count: 15, fruct: .orange)
            Spacer()
            aboutInitializer(count: 2, fruct: .banana)
            Spacer()
            aboutInitializer(count: 10, fruct: .apple)
            Spacer()
        }
    }
}
