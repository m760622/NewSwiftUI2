//
//  ProgressAView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-06-28.
// https://github.com/m760622

import SwiftUI

struct ProgressAView: View {
    @State private var downloadAmount = 0.0
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        NavigationView {
            VStack {
                ProgressView("Downloading…", value: downloadAmount, total: 100)
                    .padding(.all, 10)
                    .padding(.top, 50)
                Spacer()
            }
            .onReceive(timer) { _ in
                if downloadAmount < 100 {
                    downloadAmount += 2
                }
            }
            .navigationBarTitle(Text("ProgressView"), displayMode: .inline)
        }
    }//body
}//ProgressView

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressAView()
    }
}
