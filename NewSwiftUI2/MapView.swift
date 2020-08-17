// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/MapView.swift
//  MapView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-08-11.
// https://github.com/m760622

import SwiftUI
import MapKit

struct MapView: View {
    let screenWidth: CGFloat = UIScreen.main.bounds.width
    let screenHeight: CGFloat = UIScreen.main.bounds.height
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 55.5, longitude: 13),
        span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        NavigationView {
            VStack{
                Map(coordinateRegion: $region)
                    .frame(width: screenWidth - 20, height: screenHeight * 0.8, alignment: .center)
                    .cornerRadius(20)
                    .hueRotation(.degrees(0))
            }//VStack
            .navigationBarTitle(Text("New MapView View in SwiftUI 2 20200811"), displayMode: .inline)
        }//NavigationView
    }//body
}//MapView

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}


