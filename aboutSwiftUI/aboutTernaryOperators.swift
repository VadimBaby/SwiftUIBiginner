//
//  aboutTernaryOperators.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 01.03.2023.
//

import SwiftUI

struct aboutTernaryOperators: View {
    @State var justToggle: Bool = false
    
    var body: some View {
        VStack{
            Text("State justToggle: \(self.justToggle.description)")
                .font(.title)
                .padding(.bottom, 20)
            
            Button(action: {
                withAnimation(.linear){
                    self.justToggle.toggle()
                }
            }, label: {
                Text("Toggle justToggle")
            })
            RoundedRectangle(cornerRadius: justToggle ? 35 : 5)
                .fill(justToggle ? .white : .black)
                .frame(width: 150, height: 150)
                .shadow(radius: justToggle ? 15 : 0)
        }
    }
}

struct aboutTernaryOperators_Previews: PreviewProvider {
    static var previews: some View {
        aboutTernaryOperators()
    }
}
