// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/AppStoreOverlayView.swift
//  AppStoreOverlayView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-07-16.
// https://github.com/m760622

import SwiftUI
import StoreKit
struct AppStoreOverlayView: View {
    @State private var goldenQuran = false
    @State private var greatQuran = false
    @State private var bonetider = false
    @State private var alAthkar = false
    @State private var nawawiSe = false
    @State private var unwrap = false
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                Group{
                    Button("Golden Quran\n المصحف الذهبي") {  self.goldenQuran.toggle() }
                        .appStoreOverlay(isPresented: $goldenQuran) {
                            SKOverlay.AppConfiguration(appIdentifier: "852497554", position: .bottom)
                        }
                    Button("Great Quran") {self.greatQuran.toggle()}
                        .appStoreOverlay(isPresented: $greatQuran) {
                            SKOverlay.AppConfiguration(appIdentifier: "1107518818", position: .bottom)}
                    Button("Svenska Bönetider") {self.bonetider.toggle()}
                        .appStoreOverlay(isPresented: $bonetider) {
                            SKOverlay.AppConfiguration(appIdentifier: "999972623", position: .bottom)
                        }
                    Button("AlAthkar الأذكار Åkallelser") {self.alAthkar.toggle()}
                        .appStoreOverlay(isPresented: $alAthkar) {
                            SKOverlay.AppConfiguration(appIdentifier: "723427562", position: .bottom)
                        }
                    Button("40 NawawiSe\n الأربعون النووية") {self.nawawiSe.toggle()}
                        .appStoreOverlay(isPresented: $nawawiSe) {
                            SKOverlay.AppConfiguration(appIdentifier: "1214634895", position: .bottom)
                        }
                    Button("Unwrap") {self.unwrap.toggle()}
                        .appStoreOverlay(isPresented: $unwrap) {
                            SKOverlay.AppConfiguration(appIdentifier: "1440611372", position: .bottom)
                        }
                }//Group
                .foregroundColor(.white)
                .padding(.horizontal, 30)
                .background(Color.blue.opacity(0.7))
                .clipShape(Capsule())
                .padding(.top, 20)
                .font(.title)
                Spacer()
            }//VStack
            .navigationBarTitle(Text("New AppStoreOverlay View in SwiftUI 2"), displayMode: .inline)
        }//NavigationView
    }//body
}//AppStoreOverlayView

struct AppStoreOverlayView_Previews: PreviewProvider {
    static var previews: some View {
        AppStoreOverlayView()
    }
}
