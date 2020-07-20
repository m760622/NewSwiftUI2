// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/ScaledMetricView.swift
//  ScaledMetricView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-07-20.
// https://github.com/m760622

import SwiftUI

struct ScaledMetricView: View {
    @ScaledMetric var imageFrame1: CGFloat = 100
    @ScaledMetric(relativeTo: .largeTitle) var imageFrame2: CGFloat = 150

    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                Image(systemName: "cloud.sun")
                    .resizable()
                    .frame(width: imageFrame1, height: imageFrame1)
                Spacer()
                Image(systemName: "cloud.sun.fill")
                    .resizable()
                    .foregroundColor(.red)
                    .frame(width: imageFrame2, height: imageFrame2)
                Spacer()
                Image(systemName: "cloud.moon.rain.fill")
                    .resizable()
                    .foregroundColor(.green)
                    .frame(width: imageFrame2, height: imageFrame2)
                Spacer()
                Image(systemName: "cloud.sleet.fill")
                    .resizable()
                    .foregroundColor(.white)
                    .background(Color.black)
                    .frame(width: imageFrame2, height: imageFrame2)
                Spacer()
            }//VStack
            .navigationBarTitle(Text("New ScaledMetric View in SwiftUI 2"), displayMode: .inline)
        }//NavigationView
        
    }//body
}//ScaledMetricView

struct ScaledMetricView_Previews: PreviewProvider {
    static var previews: some View {
        ScaledMetricView()
    }
}
