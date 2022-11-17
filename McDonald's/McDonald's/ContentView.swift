//
//  ContentView.swift
//  McDonald's
//
//  Created by Francesca De Rogatis on 16/11/22.
//

import SwiftUI
import SpriteKit

struct ContentView: View {
    var scene: SKScene {
        let scene = GameScene()
        scene.size = CGSize (width: 216, height: 216)
        scene.scaleMode = .fill
        return scene
    }
    var body: some View {
        SpriteView(scene:self.scene)
            .frame(width: 1200, height: 1700)
            .ignoresSafeArea()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
