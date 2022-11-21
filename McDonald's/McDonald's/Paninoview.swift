//
//  InterfaceView.swift
//  McDonald's
//
//  Created by Francesca De Rogatis on 18/11/22.
//

import SwiftUI
import SpriteKit

struct Paninoview: View {
    var scene: SKScene {
        let scene = GameScene()
        scene.size = CGSize (width: 216, height: 216)
        scene.scaleMode = .fill
        return scene
    }
    var body: some View {
        SpriteView(scene:self.scene)
            .frame(width: 600, height: 900)
            .ignoresSafeArea()
        
    }
}

struct Paninoview_Previews: PreviewProvider {
    static var previews: some View {
        Paninoview()
    }
}
