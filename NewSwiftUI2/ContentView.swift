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
                        NavigationLink(destination: DatePickerView()) {
                            Text("DatePickerView")
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
                        NavigationLink(destination: linkView()) {
                            Text("linkView")
                        }
                        NavigationLink(destination: DisclosureGroupView()) {
                            Text("DisclosureGroupView")
                        }
                        NavigationLink(destination: ExpandingListsView()) {
                            Text("ExpandingListsView")
                        }
                        NavigationLink(destination: TextFieldOnChangeView()) {
                            Text("TextFieldOnChangeView")
                        }
                        NavigationLink(destination: AppStorageView()) {
                            Text("AppStorageView")
                        }
                        NavigationLink(destination: MatchedGeometryEffectView()) {
                            Text("MatchedGeometryEffectView")
                        }
                        NavigationLink(destination: ScrollViewReaderView()) {
                            Text("ScrollViewReaderView")
                        }
                    }//Group
                    
                    Group{
                        NavigationLink(destination: FullScreenCoverView()) {
                            Text("FullScreenCoverView")
                        }
                        NavigationLink(destination: DateFormattingView()) {
                            Text("DateFormattingView")
                        }
                        NavigationLink(destination: InsetGroupedListStyleView()) {
                            Text("InsetGroupedListStyleView")
                        }
                        NavigationLink(destination: SFSymbolsMulticolorView()) {
                            Text("SFSymbolsMulticolorView")
                        }
                        NavigationLink(destination: ExportActionView()) {
                            Text("ExportActionView")
                        }
                        NavigationLink(destination: AppStoreOverlayView()) {
                            Text("AppStoreOverlayView")
                        }
                        NavigationLink(destination: SpriteKitView()) {
                            Text("SpriteKitView")
                        }
                        NavigationLink(destination: ToolbarItemView()) {
                            Text("ToolbarItemView")
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
