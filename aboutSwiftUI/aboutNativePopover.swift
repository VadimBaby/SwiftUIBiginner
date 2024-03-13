//
//  aboutNativePopover.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 09.12.2023.
//

import SwiftUI

struct aboutNativePopover: View {
    
    @State private var show: Bool = false
    let feedbackOptions = ["Cool 👍", "So so 🫥", "Bad as fuck 🤬"]
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            Button(action: {
                show.toggle()
            }, label: {
                Text("Your Feedback")
                    .foregroundStyle(Color.white)
            })
            .popover(isPresented: $show, attachmentAnchor: .point(.top), content: {
                ScrollView {
                    VStack(spacing: 10) {
                        ForEach(feedbackOptions, id: \.self) { option in
                            Button(option) {}
                                .foregroundStyle(Color.black)
                        }
                    }
                }
                    .padding()
                    .presentationCompactAdaptation(.popover)
            })
        }
    }
}
#Preview {
    aboutNativePopover()
}
