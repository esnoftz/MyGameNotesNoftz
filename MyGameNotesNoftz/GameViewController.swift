//
//  GameViewController.swift
//  MyGameNotesNoftz
//
//  Created by EVANGELINE NOFTZ on 2/13/25.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    // declaring a reference to the GameScene class
    var play: GameScene!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")

        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // add this line of code (getting/initializing a reference to the GameScene)
                play = scene as? GameScene
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        // forces the game to run landscape mode
        return .landscapeRight
        // switch width and height in GameScene purple!
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBAction func jumpAction(_ sender: UIButton) {
        // using play as the reference to the GameScene class
        // pushes the ball up with a vector force of 1000 when button is pushed
        play.ball.physicsBody?.velocity.dy = 600
        
    }
    
}
