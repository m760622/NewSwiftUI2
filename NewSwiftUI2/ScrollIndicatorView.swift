// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/ScrollIndicatorView.swift
//  ScrollIndicatorView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-08-18.
// https://github.com/m760622

import SwiftUI

struct ScrollIndicatorView: View {
    var body: some View {
        NavigationView {
            VStack{
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack {
                        ForEach(1...100, id: \.self, content: ScrollRow.init)
                    }//LazyVStack
                    .padding(.top, 10)
                }//ScrollView
                
                List(1..<100) { i in
                    Text("List Row Nr. \(i)")
                        .font(.headline)
                        .foregroundColor(.blue).opacity(0.9)
                }
                .listStyle(InsetGroupedListStyle())
                Spacer()
            }//VStack
            .navigationBarTitle(Text("Hide the Scroll Indicator in ScrollView"), displayMode: .inline)
        }//NavigationView
        .onAppear {
            UITableView.appearance().showsVerticalScrollIndicator = false
        }
    }//body
}//ScrollIndicatorView

struct ScrollRow: View {
    let id: Int
    var body: some View {
        Text("ScrollRow Nr. \(id)")
            .frame(width: 300, height: 30)
            .background(Color.blue.opacity(0.7))
            .clipShape(Capsule())
            .padding(.vertical, 5)
    }
    init(id: Int) {
        print("Loading row \(id)")
        self.id = id
    }
}//ScrollRow

struct ScrollIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollIndicatorView()
    }
}
