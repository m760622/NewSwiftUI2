// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/LabelView.swift
//  LabelView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-08-23.
// https://github.com/m760622

import SwiftUI

struct LabelView: View {
    let imageName: String = "applewatch.radiowaves.left.and.right"
    
    var labelImage: some View {
        Label("Label with Image", systemImage: imageName)
            .font(.title)
            .padding()
            .background(Color.green)

    }//labelImage
    
    var labelIcon: some View {
        Label {
            Text("Label with Icon")
                .foregroundColor(.primary)
                .font(.largeTitle)
                .padding()
                .background(Color.gray.opacity(0.2))
                .clipShape(Capsule())
        }
        icon: {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue)
                .frame(width: 60, height: 60)
                .offset(y: 20.0)
        }
    }//labelIcon
    
    var body: some View {
        NavigationView {
            VStack{
                labelImage
                    .padding(.vertical, 20)
                    .padding(.horizontal)
                    .background(Color.red)
                labelIcon
                    .padding()
                    .background(Color.black.opacity(0.1))

                Spacer()
            }//VStack
            .navigationBarTitle(Text("New Label contains Icon and text in SwiftUI 2"), displayMode: .inline)
        }//NavigationView
    }//body
}//LabelView

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}

