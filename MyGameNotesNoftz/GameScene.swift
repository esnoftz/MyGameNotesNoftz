//
//  GameScene.swift
//  MyGameNotesNoftz
//
//  Created by EVANGELINE NOFTZ on 2/13/25.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var ball: SKSpriteNode!
    let cam = SKCameraNode()
    
    // like viewDidLoad
    override func didMove(to view: SKView) {
        // initiallizing ball
        ball = self.childNode(withName: "ball") as! SKSpriteNode
        
        self.camera = cam
        
        physicsWorld.contactDelegate = self
    }
    
    // Called before each frame is rendered
    override func update(_ currentTime: TimeInterval) {
        // can follow just x position or just y position or both or offset
        cam.position.x = ball.position.x + 400
        ball.physicsBody?.velocity.dx = 200
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        print("Collision happened")
    }
}
