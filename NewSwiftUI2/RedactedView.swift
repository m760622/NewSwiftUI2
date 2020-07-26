// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/RedactedView.swift
//  RedactedView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-07-26.
// https://github.com/m760622

import SwiftUI
struct RedactedView: View {
    var body: some View {
        NavigationView {
            VStack{
//                Spacer()
                IDArView()
                Divider()
                IDView()
                Spacer()
            }//VStack
            .padding(.horizontal, 20)
            .navigationBarTitle(Text("New Redacted View in SwiftUI 2"), displayMode: .inline)
        }//NavigationView
    }//body
}//RedactedView
class IDObservObj: ObservableObject { let idVal = "19480101-2020" }
struct IDArView: View {
    @State private var isRedacted: Bool = true
    @StateObject var idObservObj = IDObservObj()
    var body: some View {
        VStack(alignment: .trailing, spacing: 10 ){
            Toggle(isOn: $isRedacted, label: {
                Text("تشفير") .font(.headline)
            }) .padding(.vertical, 30)
            HStack {
                Text(idObservObj.idVal) .font(.title)
                    .redacted(reason: isRedacted ? .placeholder : .init())
                Text("الرقم الشخصي") .font(.headline)
            }//HStack
        }//VStack
    }//body
}//IDArView
struct IDView: View {
    @State private var isRedacted: Bool = true
    @StateObject var idObservObj = IDObservObj()
    var body: some View {
        VStack(spacing: 10) {
            Toggle(isOn: $isRedacted, label: {
                Text("Redacted") .font(.headline)
            }) .padding(.vertical, 30)
            HStack {
                Text("ID") .font(.title)
                Text(idObservObj.idVal) .font(.title)
                    .redacted(reason: isRedacted ? .placeholder : .init())
            }//HStack
        }//VStack
    }//body
}//IDView

struct RedactedView_Previews: PreviewProvider {
    static var previews: some View {
        RedactedView()
    }
}
