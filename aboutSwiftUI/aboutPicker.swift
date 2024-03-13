//
//  aboutPicker.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 07.03.2023.
//

import SwiftUI

struct aboutPicker: View {
    @State var selectFirstPicker: Int = 18
    @State var selectSecondPicker: Int = 1

    let filterOptions: [String] = [
        "Most Popular", "Most Recent", "Most Liked"
    ]
    
    @State var selectThirdPicker: String = "Most Popular"
    
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.orange
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor: UIColor.white
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        VStack {
            VStack {
                HStack{
                    Text("Age:")
                    Text("\(selectFirstPicker)")
                }
                
                Picker(
                    selection: $selectFirstPicker,
                    label: Text("First Picker")) {
                        ForEach(18..<100){ number in
                            Text("\(number)")
                                .tag(number)
                        }
                    }
                .pickerStyle(WheelPickerStyle())
            }
            
            Picker(
                selection: $selectSecondPicker,
                label: Text("Second Picker")
            ){
                ForEach(1..<10){ number in
                    Text("\(number)")
                        .tag(number)
                }
            }
            .pickerStyle(MenuPickerStyle())
            
            Picker(
                selection: $selectThirdPicker,
                label: Text("Third Picker")
            ){
                ForEach(filterOptions, id: \.self){ item in
                    Text(item)
                        .tag(item)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}

struct aboutPicker_Previews: PreviewProvider {
    static var previews: some View {
        aboutPicker()
    }
}
