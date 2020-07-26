// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/SceneStorageView.swift
//  SceneStorageView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-07-24.
// https://github.com/m760622

import SwiftUI

struct SceneStorageView: View {
    @SceneStorage("storage") var text = "Write some thing here"
    
    var body: some View {
        NavigationView {
            VStack{
                TextEditor(text: $text)
                    .font(.title)
                    .foregroundColor(.red)
            }//VStack
            .navigationBarTitle(Text("New SceneStorage View in SwiftUI 2"), displayMode: .inline)
        }//NavigationView
        
    }//body
}//SceneStorageView

struct SceneStorageView_Previews: PreviewProvider {
    static var previews: some View {
        SceneStorageView()
    }
}


