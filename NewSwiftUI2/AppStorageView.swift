// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/AppStorageView.swift
//  AppStorageView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-07-06.
// https://github.com/m760622

import SwiftUI

struct AppStorageView: View {
    @AppStorage("inputText", store: UserDefaults(suiteName: "inputTextUD")) var inputText: String = ""
    let topVal: CGFloat = 20
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Your Text is: \(inputText) ")
                    .font(.body)
                    .frame(width: UIScreen.main.bounds.width - 20)
                    .background(Color.blue.opacity(0.3))
                    .padding()
                Text(inputText)
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 20)
                    .background(Color.blue.opacity(0.5))
                    .clipShape(Capsule())
                    .padding(.top, topVal)
                Text(inputText)
                    .font(.title)
                    .foregroundColor(.white)
                    .background(Color.blue.opacity(0.7))
                    .padding(.vertical, topVal)
                TextField("Enter your text:", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onChange(of: inputText) { newValue in
                        print("Text changed to \(newValue)!")
                    }
                    .padding(.vertical, 20)
                    .padding(.horizontal, 10)
                Button("Change the name") {
                    self.inputText = "Mohammed Abunada"
                }
                Spacer()
            }//VStack
            .navigationBarTitle(Text("New Using @AppStorage with UserDefaults"), displayMode: .inline)
        }//NavigationView
    }//body
}//AppStorageView

struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}
