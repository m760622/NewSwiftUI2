// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/TextFieldOnChangeView.swift
//  TextFieldOnChangeView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-07-04.
// https://github.com/m760622
import SwiftUI

struct TextFieldOnChangeView: View {
    @State private var inputText = ""
    let topVal: CGFloat = 20
    var body: some View {
        NavigationView {
            VStack{
                Text(inputText)
                    .font(.body)
                    .frame(width: UIScreen.main.bounds.width - 20)
                    .background(Color.blue.opacity(0.3))
                    .padding(.top, topVal)
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
                        print("Name changed to \(newValue)!")
                    }
                Spacer()
            }//VStack
            .navigationBarTitle(Text("New TextField OnChange View"), displayMode: .inline)
        }//NavigationView
    }//body
}//TextFieldOnChangeView

struct TextFieldOnChangeView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldOnChangeView()
    }
}



