// https://github.com/m760622/NewSwiftUI2App
//  ContentView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-06-27.
// https://github.com/m760622

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List (){
                Section(header: Text("Colore")
                            .font(.body)) {
                    Group {
                        NavigationLink(destination: ColorPickerView()) {
                            Text("ColorPickerView")
                        }
                    }//Group
                }//Section
                
                Section(header: Text("Design")
                            .font(.body)) {
                    Group {
                        NavigationLink(destination: ProgressAView()) {
                            Text("ProgressAView")
                        }
                        NavigationLink(destination: VideoPlayerView()) {
                            Text("VideoPlayerView")
                        }
                        NavigationLink(destination: LazyVHStackView()) {
                            Text("LazyVHStackView")
                        }

                        
                    }//Group
                }//Section
            }//List
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("New SwiftUI 2") , displayMode: .inline)
            
        }//NavigationView
    }//body
}//ContentView


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
