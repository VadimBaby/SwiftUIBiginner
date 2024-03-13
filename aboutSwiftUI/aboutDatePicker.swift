//
//  aboutDatePicker.swift
//  aboutSwiftUI
//
//  Created by Вадим Мартыненко on 10.03.2023.
//

import SwiftUI

struct aboutDatePicker: View {
    @State var datePicker: Date = Date()
    
    let startingDate: Date = Calendar.current.date(
        from: DateComponents(year: 2018)
    ) ?? Date()
    
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack{
            Text("current date")
            Text(dateFormatter.string(from: datePicker))
            
            // DatePicker("Select A Date", selection: $datePicker)
            // DatePicker("Select a date", selection: $datePicker, displayedComponents: [.hourAndMinute])
            // DatePicker("Select a date", selection: $datePicker, displayedComponents: [.date])
             DatePicker("Select a date",
                        selection: $datePicker,
                        in: startingDate...endingDate,
                        displayedComponents: [.date])
                 .tint(Color.red)
                 .datePickerStyle(
                    // WheelDatePickerStyle()
                     CompactDatePickerStyle()
                   //  GraphicalDatePickerStyle()
                 )
        }
    }
}

struct aboutDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        aboutDatePicker()
    }
}
