// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/ScrollViewReaderView.swift
//  ScrollViewReaderView.swift
//  NewSwiftUI2
//  m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-07-10.
//  https://github.com/m760622

import SwiftUI

struct ScrollViewReaderView: View {
    let colors: [Color] = [.red, .green, .pink, .gray, .purple, .blue, .orange, .yellow]
    let screenWidth: CGFloat = UIScreen.main.bounds.width - 40
    let screenHeight: CGFloat = UIScreen.main.bounds.height * 0.7
    
    var body: some View {
        NavigationView {
            
            ScrollView {
                ScrollViewReader { value in
                    Button("Jump to #13") {
                        value.scrollTo(13, anchor: .top)
                    }
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .clipShape(Capsule())
                    .padding(.top, 20)
                    
                    ForEach(0..<24) { i in
                        Text("The value of \n \(i) % \(colors.count) = \(i % colors.count)")
                            .frame(width: screenWidth, height: screenHeight)
                            .background(colors[i % colors.count])
                            .padding()
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .id(i)
                    }
                }//ScrollViewReader
            }//ScrollView
            .navigationBarTitle(Text("New ScrollViewReaderView in SwiftUI 2"), displayMode: .inline)
        }//NavigationView
        
    }//body
}//ScrollViewReaderView

struct ScrollViewReaderView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderView()
    }
}



