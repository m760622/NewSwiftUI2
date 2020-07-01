// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/ExpandingListsView.swift
//  ExpandingListsView.westBank
//  NewwestBankUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-07-01.
// https://github.com/m760622

import SwiftUI

struct ExpandingListsView: View {
    let items: [Landscape] = [.item1, .item2, .item3, .item4]
    var body: some View {
        NavigationView {
            VStack{
                Text("Palestinians refusing occupied West Bank annexation move")
                    .padding(.vertical, 30)
                    .font(.largeTitle)
                Text("Many Palestinians would argue that the annexation is merely a formality for what has already been happening on the ground in the West Bank for years. 20200701")
                    .font(.headline)
            List(items, children: \.items) { row in
                Image(systemName: row.icon)
                Text(row.name)
            }//List
            .padding(.top, 30)
            }//VStack
            .navigationBarTitle(Text("ExpandingLists View"), displayMode: .inline)
        }//NavigationView
    }//body
}//ExpandingListsView

struct ExpandingListsView_Previews: PreviewProvider {
    static var previews: some View {
        ExpandingListsView()
    }
}

struct Landscape: Identifiable {
    let id = UUID()
    let name: String
    let description: String = ""
    let icon: String
    var items: [Landscape]?
    
    static let palestine = Landscape(name: "Palestine", icon: "flag.circle")
    static let alAqsa = Landscape(name: "AlAqsa", icon: "cloud.moon")
    static let westBank = Landscape(name: "WestBank", icon: "cloud.sun.rain.fill")
    static let gaza = Landscape(name: "Gaza", icon: "cloud.sun")
    
    static let item1 = Landscape(name: "Favorites", icon: "star", items: [Landscape.palestine, Landscape.alAqsa, Landscape.westBank, Landscape.gaza])
    static let item2 = Landscape(name: "Recent", icon: "timer", items: [Landscape.palestine, Landscape.alAqsa, Landscape.westBank, Landscape.gaza])
    static let item3 = Landscape(name: "Recommended", icon: "heart.fill", items: [Landscape.palestine, Landscape.alAqsa, Landscape.westBank, Landscape.gaza])
    static let item4 = Landscape(name: "Read", icon: "graduationcap", items: [Landscape.palestine, Landscape.alAqsa, Landscape.westBank, Landscape.gaza])
}//Landscape
