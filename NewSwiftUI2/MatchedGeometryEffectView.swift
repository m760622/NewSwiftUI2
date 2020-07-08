//
//  MatchedGeometryEffectView.swift
//  NewSwiftUI2
//
//  Created by Mohammed Abunada on 2020-07-08.
//

import SwiftUI

struct MatchedGeometryEffectView: View {
    var body: some View {
        NavigationView {
            VStack{
                FlippView()
                    .padding(.top, 30)
                ZoomView()
            }
            .navigationBarTitle(Text("New Matched geometry effects  in SwiftUI 2"), displayMode: .inline)
        }//NavigationView
        
    }//body
}

struct MatchedGeometryEffectView_Previews: PreviewProvider {
    static var previews: some View {
        MatchedGeometryEffectView()
    }
}



struct FlippView: View {
    @Namespace private var animation
    @State private var isFlipped = false
    
    var body: some View {
        VStack {
            if isFlipped {
                Circle()
                    .fill(Color.red)
                    .frame(width: 44, height: 44)
                    .matchedGeometryEffect(id: "Shape", in: animation)
                Text("Mohammed Abunada - 1976")
                    .matchedGeometryEffect(id: "AlbumTitle", in: animation)
                    .font(.headline)
            } else {
                Text("Mohammed Abunada - 1976")
                    .matchedGeometryEffect(id: "AlbumTitle", in: animation)
                    .font(.headline)
                Circle()
                    .fill(Color.blue)
                    .frame(width: 44, height: 44)
                    .matchedGeometryEffect(id: "Shape", in: animation)
            }
        }
        .onTapGesture {
            withAnimation {
                self.isFlipped.toggle()
            }
        }//onTapGesture
    }//body
}//FlippView



struct ZoomView: View {
    @Namespace private var animation
    @State private var isZoomed = false
    var frame: CGFloat {
        isZoomed ? 400 : 44
    }
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                        .frame(width: frame, height: frame)
                        .padding(.top, isZoomed ? 20 : 0)
                    if isZoomed == false {
                        Text("Mohammed Abunada - 1976")
                            .matchedGeometryEffect(id: "AlbumTitle", in: animation)
                            .font(.headline)
                        Spacer()
                    }
                }
                if isZoomed == true {
                    Text("Mohammed Abunada - 1976")
                        .matchedGeometryEffect(id: "AlbumTitle", in: animation)
                        .font(.headline)
                        .padding(.bottom, 60)
                    Spacer()
                }
            }
            .onTapGesture {
                withAnimation(.spring()) {
                    self.isZoomed.toggle()
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .frame(height: isZoomed ? 400 : 60)
            .background(Color(white: 0.9))
        }
    }//body
}//ZoomView
