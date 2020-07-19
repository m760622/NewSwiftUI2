// https://github.com/m760622/NewSwiftUI2/blob/main/NewSwiftUI2/SpriteKitView.swift
//  SpriteKitView.swift
//  NewSwiftUI2
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-07-17.
// https://github.com/m760622

import SwiftUI
import SpriteKit

struct SpriteKitView: View {
    let screenWidth: CGFloat = UIScreen.main.bounds.width - 40
    let screenHeight: CGFloat = UIScreen.main.bounds.height * 0.7

    var scene: SKScene {
        let scene = GameScene()
        scene.size = CGSize(width: screenWidth, height: screenHeight)
        scene.scaleMode = .fill
        return scene
    }//scene
    
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                SpriteView(scene: scene)
                    .frame(width: screenWidth, height: screenHeight)
                    .edgesIgnoringSafeArea(.all)
            }//VStack
            .navigationBarTitle(Text("New SpriteKit View in SwiftUI 2"), displayMode: .inline)
        }//NavigationView
    }//body
}//SpriteKitView

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let box = SKSpriteNode(color: UIColor.red, size: CGSize(width: 50, height: 50))
        box.position = location
        box.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 50))
        addChild(box)
    }
}//GameScene


struct SpriteKitView_Previews: PreviewProvider {
    static var previews: some View {
        SpriteKitView()
    }
}

