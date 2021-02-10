// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/LazyVStackVSListView.swift
//  LazyVStackVSListView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2021-02-10.
// https://github.com/m760622

import SwiftUI

struct LazyVStackVSListView: View {
    var body: some View {
        NavigationView {
            VStack{
                Text("How to fix slow List updates in SwiftUI") .font(.title2)
                HStack{
                    VStack{
                        Text("LazyVStack") .font(.title).padding(5).background(Color.green)
                        ScrollView(.vertical, showsIndicators: false) {
                            //  The LazyVStack loading only the rows that showing so its best solution for long list 👍🏽
                            LazyVStack {
                                ForEach(1...10000000, id: \.self, content: SampleVRow.init)
                            }.padding(.vertical, 10)
                        }//ScrollView
                    }.padding(.top, 10)
                    VStack{
                        Text("List") .font(.title).padding(5).background(Color.red)
                        //  The List loading all rows so its bad solution for long list 👎🏻
                        List{
                            ForEach(1...100, id: \.self, content: SampleVRow.init)
                        }.id(UUID())
                    }.padding(.top, 10)
                }//HStack
            }//VStack
            .navigationBarTitle(Text("LazyVStack VS List View"), displayMode: .inline)
        }//NavigationView
    }//body
}//LazyVStackVSListView

struct SampleVRow: View {
    let id: Int
    var body: some View {
        Text("\(id)")
            .frame(width: 100, height: 20)
            .background(Color.blue.opacity(0.7))
            .clipShape(Capsule()) .padding(.vertical, 5)
    }
    init(id: Int) { self.id = id }
}//SampleVRow

struct LazyVStackVSListView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStackVSListView()
    }
}
