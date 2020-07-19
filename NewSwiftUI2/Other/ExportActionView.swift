// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/ExportActionView.swift
//  ExportActionView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-07-16.
// https://github.com/m760622

import SwiftUI

struct ExportActionView: View {
    @Environment(\.exportFiles) var exportAction
    var body: some View {
        List(0..<100) { i in
            Text("New  listStyle Row Nr. \(i)")
                .font(.headline)
                .foregroundColor(.blue).opacity(0.9)
        }
        .listStyle(InsetGroupedListStyle())
        

//        Link("google", destination: URL(string: "http://www.google.com")!)
                
        Button("Export File") {
            let url = Bundle.main.url(forResource: "symbols", withExtension: "json")!
            exportAction(moving: url) { result in
                switch result {
                case .success(let url):
                    print("Success! \(url)")
                case .failure(let error):
                    print("Oops: \(error.localizedDescription)")
                case .none:
                    print("Cancelled")
                }
            }
        }//Button
        
        .onAppear {
            UITableView.appearance().separatorColor = .clear
        }
    }//body
}//ExportActionView

struct ExportActionView_Previews: PreviewProvider {
    static var previews: some View {
        ExportActionView()
    }
}
