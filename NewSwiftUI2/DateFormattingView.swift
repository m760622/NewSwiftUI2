// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/DateFormattingView.swift
//  DateFormattingView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-07-11.
// https://github.com/m760622

import SwiftUI

struct DateFormattingView: View {
    let screenWidth: CGFloat = UIScreen.main.bounds.width - 40
    
    var body: some View {
        NavigationView {
            VStack (alignment: .leading, spacing: 10){
                Spacer()
                Text(" How to format dates inside text views" )
                    .multilineTextAlignment(.center)
                    .font(.largeTitle)
                
                Spacer()
                Group{
                    //                    60 = 1 minute
                    Text(Date()...Date().addingTimeInterval(600))
                    
                    Text(" Show just the date\n \(Date().addingTimeInterval(1), style: .date) " )
                    
                    Text(" Show just the time\n \(Date().addingTimeInterval(1), style: .time) " )
                    
                    Text(" Show just the offset, automatically updating\n \(Date().addingTimeInterval(60), style: .offset) " )
                    
                    Text(" Show the relative distance from now, automatically updating\n \(Date().addingTimeInterval(600), style: .relative) " )
                    
                    Text(" Make a timer style, automatically updating\n \(Date().addingTimeInterval(600), style: .timer) " )
                }//Group
                .frame(width: screenWidth, alignment: .leading)
                .font(.headline)
                .padding(.vertical, 20)
                
            }//VStack
            .navigationBarTitle(Text("Date formatting in text in SwiftUI 2 "), displayMode: .inline)
        }//NavigationView
        
    }
}

struct DateFormattingView_Previews: PreviewProvider {
    static var previews: some View {
        DateFormattingView()
    }
}
