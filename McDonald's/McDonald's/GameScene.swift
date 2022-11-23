//
//  GameScene.swift
//  McDonald's
//
//  Created by Francesca De Rogatis on 16/11/22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var player: SKSpriteNode!
    
    private var playerAtlas: SKTextureAtlas {
        return SKTextureAtlas(named: "Player")
    }
    
    private var playerTexture: SKTexture {
        return playerAtlas.textureNamed("Player")
    }
    
    private var playerIdleTextures: [SKTexture] {
        return [
            playerAtlas.textureNamed("Idle_ 0"),
            playerAtlas.textureNamed("Idle_ 1"),
            playerAtlas.textureNamed("Idle_ 2"),
            playerAtlas.textureNamed("Idle_ 3"),
            playerAtlas.textureNamed("Idle_ 4"),
            playerAtlas.textureNamed("Idle_ 5"),
            playerAtlas.textureNamed("Idle_ 6"),
            playerAtlas.textureNamed("Idle_ 7"),
            playerAtlas.textureNamed("Idle_ 8"),
            playerAtlas.textureNamed("Idle_ 9"),
            playerAtlas.textureNamed("Idle_ 10"),
            playerAtlas.textureNamed("Idle_ 11"),
            playerAtlas.textureNamed("Idle_ 12"),
            playerAtlas.textureNamed("Idle_ 13"),
            playerAtlas.textureNamed("Idle_ 14"),
            playerAtlas.textureNamed("Idle_ 15"),
            playerAtlas.textureNamed("Idle_ 16"),
            playerAtlas.textureNamed("Idle_ 17"),
            playerAtlas.textureNamed("Idle_ 18"),
            playerAtlas.textureNamed("Idle_ 19"),
            playerAtlas.textureNamed("Idle_ 20"),
        ]
    }
    
    private func setupPlayer () {
        player = SKSpriteNode(texture: playerTexture, size: CGSize(width: 140, height: 100))
        let rectangle = SKSpriteNode(color: UIColor(named: "Color")!, size: CGSize(width: 300, height: 40))
        rectangle.position = CGPoint(x:frame.width/2, y: frame.height/2)
        player.position = CGPoint(x:frame.width/2, y: frame.height/2+10)

        addChild(rectangle)
        addChild(player)
    }
    
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.white
        self.setupPlayer()
        self.startIdleAnimation()
        
    }
    
    func startIdleAnimation() {
        let Idleanimation = SKAction.animate(with: playerIdleTextures, timePerFrame: 0.20)
        
        player.run(SKAction.repeat(Idleanimation, count: 1), withKey: ("playerIdleAnimation"))
    }
    
    
    
  }
//

    
    
