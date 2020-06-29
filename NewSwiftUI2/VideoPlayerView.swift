// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/VideoPlayerView.swift
//  VideoPlayerView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-06-28.
// https://github.com/m760622

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var body: some View {
        NavigationView {
            VideoPlayer(player: AVPlayer(url:  URL(string: "https://cutt.ly/QiXfZqw")!)) {
                
                VStack {
                    Text("Aerial Shot of Beach and Palm Trees")
                        .font(.body)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 5)
                        .foregroundColor(.white)
                        .background(Color.blue.opacity(0.7))
                        .clipShape(Capsule())
                    Spacer()
                }//VStack
                
            }//VideoPlayer
            .navigationBarTitle(Text("VideoPlayer View"), displayMode: .inline)
        }//NavigationView
    }//body
}//VideoPlayerView

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView()
    }
}
