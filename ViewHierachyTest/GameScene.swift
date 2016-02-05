//
//  GameScene.swift
//  ViewHierachyTest
//
//  Created by Bavananth Thavapalan on 6/02/2016.
//  Copyright (c) 2016 Ariyalion. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
		//Trying to add Custom View
		let smallView = NSView(frame: NSRect(origin:CGPoint(x: 100,y: 100),   size: CGSize(width: 200, height: 200)))
		let layer = CALayer()
		layer.backgroundColor = CGColorCreateGenericRGB(1.0, 0.0, 0.0, 0.4)
		smallView.layer = layer
		view.superview!.addSubview(smallView)
    }
    
    override func mouseDown(theEvent: NSEvent) {
        /* Called when a mouse click occurs */
        
        let location = theEvent.locationInNode(self)
        
        let sprite = SKSpriteNode(imageNamed:"Spaceship")
        sprite.position = location;
        sprite.setScale(0.5)
        
        let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
        sprite.runAction(SKAction.repeatActionForever(action))
        
        self.addChild(sprite)
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
