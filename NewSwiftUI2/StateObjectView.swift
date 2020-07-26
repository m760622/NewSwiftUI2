// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/StateObjectView.swift
//  StateObjectView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-07-24.
// https://github.com/m760622

import SwiftUI
class ObservObj: ObservableObject {
    var textValAr = "20200724 \n أول صلاة جمعة في مسجد آيا صوفيا"
    var textVal = "20200724 \nSalat AlGomaa first time in Aya Sofia Masjed"
    let topVal: CGFloat = 30
}
struct StateObjectView: View {
    @StateObject var observObj = ObservObj()
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                TextExtraArView()
                Spacer()
                TextExtraView()
                Spacer()
                Text("\(observObj.textVal)").font(.title).foregroundColor(.red)
                    .padding()
                Spacer()
            }//VStack
            .navigationBarTitle(Text("New StateObject View in SwiftUI 2"), displayMode: .inline)
        }//NavigationView
    }//body
}//StateObjectView
struct TextExtraArView: View {
    @StateObject var observObj = ObservObj()
    var body: some View {
                Text("\(observObj.textValAr)").font(.largeTitle).foregroundColor(.pink)
                    .frame(width: UIScreen.main.bounds.width - 10)
                    .padding(.vertical, observObj.topVal)
                    .background(Color.blue.opacity(0.3))
                    .multilineTextAlignment(.trailing)
        }//body
    }//TextExtraArView
struct TextExtraView: View {
    @StateObject var observObj = ObservObj()
    var body: some View {
                Text("\(observObj.textVal)").font(.title).foregroundColor(.purple)
                    .frame(width: UIScreen.main.bounds.width - 20)
                    .padding(.vertical, observObj.topVal)
                    .background(Color.blue.opacity(0.5))
        }//body
    }//TextExtraView
struct StateObjectView_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectView()
    }
}


