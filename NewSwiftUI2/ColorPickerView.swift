//
//  ColorPickerView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-06-28.
// https://github.com/m760622

import SwiftUI

struct ColorPickerView: View {
    @State private var bgColor = Color.red
    var items = ["Item 1", "Item 2", "Item 3"]
    
    var body: some View {
        NavigationView {
            VStack {
                ColorPicker("Opacity True", selection: $bgColor)
                ColorPicker("Opacity False", selection: $bgColor, supportsOpacity: false)
            }
            .padding(.all, 10)
            .navigationBarTitle(Text("ColorPicker View"), displayMode: .inline)
        }
    }//body
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
