// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/ToolbarItemView.swift
//  ToolbarItemView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-07-19.
// https://github.com/m760622

import SwiftUI

struct ToolbarItemView: View {
    @State private var inputText = "Press the Toolbar Item"
    
    var body: some View {
        NavigationView {
            Text(inputText).padding()
                .font(.largeTitle)
                
                .toolbar {
                    ToolbarItem(placement: .bottomBar) {
                        HStack {
                            Group{
                                Button("First") {
                                    inputText = "First Pressed"
                                }
                                Button("Second") {
                                    inputText = "Second Pressed"
                                }
                                Button("Third") {
                                    inputText = "Third Pressed"
                                }
                            }//Group
                            .font(.largeTitle)
                            .padding(.horizontal, 15)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .clipShape(Capsule())
                            
                        }//HStack
                    }//ToolbarItem
                }//toolbar
                
                .navigationBarTitle(Text("New ToolbarItemView in SwiftUI 2"), displayMode: .inline)
        }//NavigationView
    }//body
}//ToolbarItemView

struct ToolbarItemView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarItemView()
    }
}
