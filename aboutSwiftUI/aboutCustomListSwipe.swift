//
//  aboutCustomListSwipe.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 13.03.2023.
//

import SwiftUI

struct aboutCustomListSwipe: View {
    @State var fructs: [String] = [
        "banana", "orange", "apple", "lime"
    ]
    
    var body: some View {
        List{
            ForEach(fructs, id: \.self) { fruct in
                Text(fruct)
                    .swipeActions(edge: .trailing, allowsFullSwipe: false){
                        Button("Archive"){
                            
                        }
                        .tint(Color.green)
                        
                        Button("Save"){
                            
                        }
                        .tint(Color.blue)
                        
                        Button("Junk"){
                            
                        }
                        .tint(Color.red)
                    }
                
                    .swipeActions(edge: .leading, allowsFullSwipe: true){
                        Button("Pin"){
                            
                        }
                        .tint(Color.orange)
                    }
            }
        }
    }
}

struct aboutCustomListSwipe_Previews: PreviewProvider {
    static var previews: some View {
        aboutCustomListSwipe()
    }
}
