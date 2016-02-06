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
		let dispatchTime: dispatch_time_t = dispatch_time(DISPATCH_TIME_NOW, Int64(0.1 * Double(NSEC_PER_SEC)))
		dispatch_after(dispatchTime, dispatch_get_main_queue(), {
			let smallView = NSView(frame: NSRect(origin:CGPoint(x: 0,y: 0),   size: CGSize(width: 200, height: 200)))
			let layer = CALayer()
			layer.backgroundColor = CGColorCreateGenericRGB(1.0, 0.0, 0.0, 0.4)
			smallView.layer = layer
			self.view!.addSubview(smallView)
			smallView.wantsLayer = true
		})
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
