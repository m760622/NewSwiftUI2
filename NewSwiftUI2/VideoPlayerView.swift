//
//  VideoPlayerView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-06-28.
// https://github.com/m760622

import SwiftUI
import AVKit

//https://bit.ly/swswift
struct VideoPlayerView: View {
    var body: some View {
        NavigationView {
            
            VideoPlayer(player: AVPlayer(url:  URL(string: "https://cutt.ly/NiGD0d8")!)) {
                VStack {
                    Text("Niagara Falls, Canada")
                        .font(.body)
                        .padding(.all, 10)
                        .foregroundColor(.white)
                        .background(Color.blue.opacity(0.7))
                        .clipShape(Capsule())
                    Spacer()
                }//VStack
            }//VideoPlayer
            .navigationBarTitle(Text("VideoPlayer View"), displayMode: .inline)
        }
        
    }//body
}//VideoPlayerView

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView()
    }
}
