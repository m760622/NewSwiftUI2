// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/ObservableObjectView.swift
//  ObservableObjectView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2021-02-11.
// https://github.com/m760622

import SwiftUI

struct ObservableObjectView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("How to use the global variable by ObservableObject and EnvironmentObject in SwiftUI 20210211")
                .multilineTextAlignment(.center).font(.title).padding()
            Spacer()
            CountTextView()
            CountBtnView()
            Spacer()
        }//VStack
    }//body
}//ObservableObjectView

struct CountBtnView: View {
    @EnvironmentObject  var countObject: CountObject
    var body: some View {
        VStack(spacing: 30) {
            Button("Plus 1") { countObject.countNr += 3 }
                .font(.title2) .foregroundColor(.white)
                .padding(.vertical, 9) .padding(.horizontal, 30) .background(Color.blue) .cornerRadius(9)
            Button("Reset") { countObject.countNr = 1 }
                .font(.title2) .foregroundColor(.white)
                .padding(.vertical, 9) .padding(.horizontal, 30) .background(Color.blue) .cornerRadius(9)
        }//VStack
    }//body
}//CountBtnView

struct CountTextView: View {
    @EnvironmentObject  var countObject: CountObject
    var body: some View {
        Text("Count = \(countObject.countNr)")
            .font(.title) .padding(.bottom, 20) .foregroundColor(.blue)
    }//body
}//CountTextView

struct ObservableObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ObservableObjectView().environmentObject(CountObject())
    }
}

class CountObject: ObservableObject {
    @Published var countNr:Int = 1
}//class CountObject
