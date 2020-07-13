// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/SFSymbolsMulticolorView.swift
//  SFSymbolsMulticolorView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-07-13.
// https://github.com/m760622

import SwiftUI

struct SFSymbolsMulticolorView: View {
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                Image(systemName: "cloud.sun.fill")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.blue)
                    .clipShape(Circle())
                Spacer()
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black)
                    .clipShape(Circle())
                Spacer()
                Image(systemName: "cloud.sun.bolt.fill")
                    .renderingMode(.original)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black)
                    .clipShape(Circle())
                Spacer()
                Image(systemName: "cloud.moon.rain.fill")
                    .renderingMode(.original)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black)
                    .clipShape(Circle())
                Spacer()
                Image(systemName: "cloud.sleet.fill")
                    .renderingMode(.original)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.black)
                    .clipShape(Circle())
            }//VStack
            .navigationBarTitle(Text("New SF Symbols Multicolor View in SwiftUI 2"), displayMode: .inline)
        }//NavigationView
        
    }
}

struct SFSymbolsMulticolorView_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolsMulticolorView()
    }
}
