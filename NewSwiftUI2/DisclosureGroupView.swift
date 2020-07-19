// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/DisclosureGroupView.swift
//  DisclosureGroupView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-07-01.
// https://github.com/m760622

import SwiftUI

struct DisclosureGroupView: View {
    var body: some View {
        NavigationView {
            VStack{
                DisclosureGroupSubView()
                DisclosureGroupSubView()
                DisclosureGroupSubView()
                Spacer()

                List {
                    ForEach(1...100, id: \.self) { i in
                        DisclosureGroupSubView()
                    }
                }//List
                
            }//VStack
            .navigationBarTitle(Text("DisclosureGroup View "), displayMode: .inline)
        }//NavigationView
    }//body
}//DisclosureGroupView

struct DisclosureGroupView_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroupView()
    }
}

struct DisclosureGroupSubView: View {
    @State private var showInfo = false

    var body: some View {
        DisclosureGroup("DisclosureGroup info", isExpanded: $showInfo) {
            Text("This is new DisclosureGroup in SwiftUI 2 that you can use it in your app as you need and you can hide it by the raw icon or you can add a Hide Button as i did 😀.")
            Button("Hide"){
                showInfo.toggle()
            }
            .padding(.all, 20)
        }//DisclosureGroup
        .padding(.horizontal, 20)
        .padding(.vertical, 20)
        .background(Color.gray.opacity(0.3))
    }//body
}//DisclosureGroupSubView
