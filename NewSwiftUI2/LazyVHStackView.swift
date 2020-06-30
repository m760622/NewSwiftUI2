// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/LazyVHStackView.swift
//  LazyVHStackView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-06-29.
// https://github.com/m760622

import SwiftUI

struct LazyVHStackView: View {
    var body: some View {
        NavigationView {
            VStack{
                ScrollView {
                    LazyVStack {
                        ForEach(1...1000, id: \.self, content: SampleRow.init)
                    }//LazyVStack
                    .padding(.vertical, 10)
                }//ScrollView
                
                ScrollView(.horizontal) {
                    LazyHStack(spacing: 10) {
                        ForEach(0..<1000) { index in
                            Text("\(index)")
                                .frame(width: 50, height: 300)
                                .background(Color.blue.opacity(0.9))
                                .clipShape(Capsule())
                        }
                    }//LazyHStack
                    .padding(.horizontal, 10)
                }//ScrollView
            }//VStack
            .navigationBarTitle(Text("New LazyVStack and  LazyHStack View"), displayMode: .inline)
        }//NavigationView
    }//body
}//LazyVHStackView

struct SampleRow: View {
    let id: Int
    var body: some View {
        Text("\(id)")
            .frame(width: 300, height: 30)
            .background(Color.blue.opacity(0.7))
            .clipShape(Capsule())
            .padding(.vertical, 5)
    }
    
    init(id: Int) {
        print("Loading row \(id)")
        self.id = id
    }
}//SampleRow

struct LazyVHStackView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVHStackView()
    }
}

