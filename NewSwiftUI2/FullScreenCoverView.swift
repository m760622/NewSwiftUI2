// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/FullScreenCoverView.swift
//  FullScreenCoverView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-07-10.
// https://github.com/m760622

import SwiftUI

struct FullScreenCoverView: View {
    @State private var isPresented = false
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text("مسجد ايا صوفيا ")
                        .font(.system(size: 40)).fontWeight(.heavy)
                        .padding(.vertical, 30)
                    Text("Masjed Ayasofya")
                        .font(.system(size: 35)).fontWeight(.heavy)
                    Text("🕌")
                        .font(.system(size: 250))
                    Text("20200710")
                        .font(.system(size: 50)).fontWeight(.heavy)
                    Group {
                        Text("Istanbul  Turkey")
                        Text("تركيا  اسطنبول ")
                    }
                    .font(.largeTitle)
                    .padding(.vertical, 10)
                }//VStack
                .onTapGesture {
                    self.isPresented.toggle()
                }
                                    
                    .fullScreenCover(isPresented: $isPresented, content: FullScreenModalView.init)
            }//VStack
            
            .navigationBarTitle(Text("New FullScreenCoverView in SwiftUI 2"), displayMode: .inline)
        }//NavigationView
        
    }//body
}//FullScreenCoverView

struct FullScreenCoverView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenCoverView()
    }
}


struct FullScreenModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                Text("مسجد ايا صوفيا ")
                    .font(.system(size: 40)).fontWeight(.heavy)
                Text("تركيا  اسطنبول ")
                    .font(.system(size: 40)).fontWeight(.heavy)
                Text("🕌")
                    .font(.system(size: 350)).fontWeight(.light)
                Text("Masjed Ayasofya")
                    .font(.system(size: 35)).fontWeight(.heavy)
                Text("Istanbul  Turkey")
                    .font(.system(size: 35)).fontWeight(.heavy)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
                presentationMode.wrappedValue.dismiss()
            }
            .navigationBarTitle(Text("20200710"), displayMode: .inline)
        }//NavigationView
        
    }//body
}//FullScreenModalView
