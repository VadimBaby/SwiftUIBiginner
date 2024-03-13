//
//  aboutList.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 06.03.2023.
//

import SwiftUI

struct aboutList: View {
    @State var fruits: [String] = [
        "banana", "apple", "pineapple", "strawberry", "orange"
    ]
    
    @State var veggies: [String] = [
        "carrrot", "potato", "tomato"
    ]
    
    var body: some View {
        NavigationView{
            List{
                Section(header:
                    HStack {
                        Text("Fruits")
                        Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                    .foregroundColor(.orange)
                ){
                    ForEach(fruits, id: \.self, content: {fruit in
                        Text(fruit.capitalized)
                            .foregroundColor(.white)
                    })
                    .onDelete(perform: {indexSet in
                        delete(indexSet: indexSet, select: .fruits)
                    })
                    .onMove(perform: {indexSet, newOffset in
                        move(indexSet: indexSet, newOffset: newOffset, select: .fruits)
                    })
                    .listRowBackground(Color.black.opacity(0.3))
                }
                
                Section(header: Text("Vegatables")){
                    ForEach(veggies, id: \.self, content: {veg in
                        Text(veg.capitalized)
                    })
                    .onDelete(perform: {indexSet in
                        delete(indexSet: indexSet, select: .vegatables)
                    })
                    .onMove(perform: {indexSet, newOffset in
                        move(indexSet: indexSet, newOffset: newOffset, select: .vegatables)
                    })
                }
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Some Shit")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                    EditButton()
                }
                
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Add", action: add)
                }
            })
        }
        .tint(.red)
    }
    
    enum select {
        case fruits
        case vegatables
    }
    
    func delete(indexSet: IndexSet, select: select){
        if(select == .fruits){
            fruits.remove(atOffsets: indexSet)
        } else {
            veggies.remove(atOffsets: indexSet)
        }
    }
    
    func move(indexSet: IndexSet, newOffset: Int, select: select){
        if(select == .fruits){
            fruits.move(fromOffsets: indexSet, toOffset: newOffset)
        }else{
            veggies.move(fromOffsets: indexSet, toOffset: newOffset)
        }
    }
    
    func add(){
        withAnimation(.linear){
            veggies.append("Another Banana")
        }
    }
}

struct aboutList_Previews: PreviewProvider {
    static var previews: some View {
        aboutList()
    }
}
