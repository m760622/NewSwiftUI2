// // https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/linkView.swift
//  linkView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-06-30.
// https://github.com/m760622

import SwiftUI

struct linkView: View {
    @Environment(\.openURL) var openURL
    let urlString: String =  "https://www.facebook.com/SwiftUIArabic"
    let titleString: String =  "SwiftUIArabic"

    var body: some View {

        NavigationView {
            VStack{
                Link(destination: URL(string: urlString)!) {
                    Image(systemName: "link.circle.fill")
                        .font(.largeTitle)
                }
                .padding(.top, 30)

                Link("\(titleString) Link", destination: URL(string: urlString)!)
                    .padding(.top, 30)
                
                Link("\(titleString) Link color",
                      destination: URL(string: urlString)!)
                    .font(.title)
                    .foregroundColor(.purple)
                    .padding(.top, 30)

                Button("\(titleString) Button") {
                    openURL(URL(string: urlString)!)
                }
                .padding(.top, 30)
                Spacer()
            }//VStack
            .navigationBarTitle(Text("New linkView"), displayMode: .inline)
        }//NavigationView
    }//body
}//linkView

struct linkView_Previews: PreviewProvider {
    static var previews: some View {
        linkView()
    }
}
