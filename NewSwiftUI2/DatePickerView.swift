// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/DatePickerView.swift
//  DatePickerView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-07-03.
// https://github.com/m760622
import SwiftUI

struct DatePickerView: View {
    var body: some View {
        NavigationView {
            VStack{
                DatePickerBirthdayView()
                Spacer()
                DatePickerFormatterView()
                Spacer()
            }//VStack
            .navigationBarTitle(Text("New DatePicker View"), displayMode: .inline)
        }//NavigationView
        
    }//body
}//DatePickerView

struct DatePickerBirthdayView: View {
    @State private var date = Date()
    var body: some View {
            VStack{
                Text("Enter your birthday")
                    .font(.title)
                DatePicker("Enter your birthday", selection: $date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .frame(height: 400)
            }//VStack
    }//body
}//DatePickerBirthdayView

struct DatePickerFormatterView: View {
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        return formatter
    }
    @State private var birthDate = Date()
    var body: some View {
        VStack {
            DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date) {
                Text("Select the date")
            }
            .frame(width: 240, height: 30)
            .padding(.horizontal, 50)
            Text("Date is: \n\(birthDate, formatter: dateFormatter)")
                .font(.title)
        }//VStack
    }//body
}//DatePickerFormatterView

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DatePickerView()
            DatePickerView()
                .preferredColorScheme(.dark)
        }//Group
    }
}
