//
//  GameScene.swift
//  IOSSpriteKitMoveSpritePathTutorial
//
//  Created by 邹俊 on 2019/1/11.
//  Copyright © 2019 邹俊. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        let logo = SKSpriteNode(imageNamed: "SwiftLogo")
        logo.position = CGPoint(x: frame.width / 2, y: frame.height / 2)
        addChild(logo)
        
        let path = CGMutablePath()
        path.move(to: CGPoint(x: 0, y: 0))
        
        path.addLine(to: CGPoint(x: 50, y: 100))

        let followLine = SKAction.follow(path, speed: 3.0)
        
        let reverseLine = followLine.reversed()
        
        let square = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 100, height: 100))
        let followSquare = SKAction.follow(square.cgPath, asOffset: true, orientToPath: false, duration: 5.0)
        
        
        
        let circle = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: 100, height: 100), cornerRadius: 100)
        let followCircle = SKAction.follow(circle.cgPath, asOffset: true, orientToPath: false, duration: 5.0)
        
        logo.run(SKAction.sequence([followLine, reverseLine, followSquare, followCircle]))
        
        
        
        
        
        
        
        
    }
}
