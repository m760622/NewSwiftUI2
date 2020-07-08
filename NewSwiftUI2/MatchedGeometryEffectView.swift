// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/MatchedGeometryEffectView.swift
//  MatchedGeometryEffectView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-07-08.
// https://github.com/m760622

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
}//MatchedGeometryEffectView

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
                    .frame(width: 77, height: 77)
                    .matchedGeometryEffect(id: "Circle", in: animation)
                Text("محمد أبو ندى - 1976")
                    .matchedGeometryEffect(id: "Text", in: animation)
                    .font(.largeTitle)
            } else {
                Text("Mohammed Abunada - 1976")
                    .matchedGeometryEffect(id: "Text", in: animation)
                    .font(.title)
                Circle()
                    .fill(Color.blue)
                    .frame(width: 44, height: 44)
                    .matchedGeometryEffect(id: "Circle", in: animation)
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
    let screenWidth: CGFloat = UIScreen.main.bounds.width
    
    var frame: CGFloat {
        isZoomed ? screenWidth - 40 : 44
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
                        Text("محمد أبو ندى - 1976")
                            .matchedGeometryEffect(id: "Text", in: animation)
                            .font(.title)
                            .foregroundColor(.white)
                        Spacer()
                    }
                }//HStack
                if isZoomed == true {
                    Text("Mohammed Abunada - 1976")
                        .matchedGeometryEffect(id: "Text", in: animation)
                        .font(.headline)
                }
            }//VStack
            .onTapGesture {
                withAnimation(.spring()) {
                    self.isZoomed.toggle()
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .frame(height: isZoomed ? screenWidth + 20 : 60)
            .background(Color.blue.opacity(0.5))
        }
    }//body
}//ZoomView
