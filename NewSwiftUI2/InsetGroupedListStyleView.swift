// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/InsetGroupedListStyleView.swift
//  InsetGroupedListStyleView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-07-12.
// https://github.com/m760622

import SwiftUI

struct InsetGroupedListStyleView: View {
    var body: some View {
        NavigationView {
            VStack{
                Text(" The old  listStyle" )
                    .padding(.horizontal, 30)
                    .background(Color.blue.opacity(0.5))
                    .clipShape(Capsule())
                    .padding(.top, 20)
                    .font(.title)
                    .foregroundColor(.black).opacity(0.7)

                List(0..<100) { i in
                    Text("Old  listStyle Row Nr. \(i)")
                        .font(.title2)
                        .foregroundColor(.black).opacity(0.7)
                }
                .listStyle(GroupedListStyle()) 

                Text(" The new  listStyle" )
                    .padding(.horizontal, 30)
                    .background(Color.blue.opacity(0.7))
                    .clipShape(Capsule())
                    .padding(.top, 20)
                    .font(.title)
                    .foregroundColor(.white)
                List(0..<100) { i in
                    Text("New  listStyle Row Nr. \(i)")
                        .font(.headline)
                        .foregroundColor(.blue).opacity(0.9)
                }
                .listStyle(InsetGroupedListStyle())

            }//VStack
            .navigationBarTitle(Text("New InsetGroupedListStyle in SwiftUI 2 "), displayMode: .inline)
        }//NavigationView
    }//body
}//InsetGroupedListStyleView

struct InsetGroupedListStyleView_Previews: PreviewProvider {
    static var previews: some View {
        InsetGroupedListStyleView()
    }
}
