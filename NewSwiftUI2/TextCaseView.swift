// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/TextCaseView.swift
//  TextCaseView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-07-14.
// https://github.com/m760622

import SwiftUI

struct TextCaseView: View {
    @State private var name = "Mohammed Abunada"

    var body: some View {
        NavigationView {
            VStack{
                TextField("Enter your text", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    .padding(.vertical)

                TextField("Enter your text", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .textCase(.uppercase)
                    .padding(.horizontal)

                TextField("Enter your text", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .textCase(.lowercase)
                    .padding(.horizontal)

                Spacer()
            }//VStack
            .navigationBarTitle(Text("New TextCase View in SwiftUI 2"), displayMode: .inline)
        }//NavigationView

    }//body
}//TextCaseView

struct TextCaseView_Previews: PreviewProvider {
    static var previews: some View {
        TextCaseView()
    }
}
