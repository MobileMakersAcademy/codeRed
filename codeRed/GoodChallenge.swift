//
//  GoodChallenge.swift
//  codeRed
//
//  Created by Dave Krawczyk on 9/20/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import SpriteKit

class GoodChallenge: Obstacle
{

    init(positionOne xPosition: CGFloat, yPosition: CGFloat, theSpeed: NSTimeInterval, theScene: SKScene)
    {
        let color = UIColor()
        let texture = SKTexture(imageNamed: kGoodChallengeImage)
        let size = texture.size()
        super.init(texture: texture, color: color, size: size)

        self.position = CGPointMake(xPosition, yPosition)
        theScene.addChild(self)
        speed(theSpeed, yPosition: yPosition)
    }

    func speed(itemSpeed: NSTimeInterval, yPosition: CGFloat)
    {
        let actionMove = SKAction.moveTo(CGPointMake(self.size.width/2, yPosition), duration: itemSpeed)

        let actionMoveDone = SKAction.removeFromParent()
        self.runAction(SKAction.sequence([actionMove, actionMoveDone]))
    }
}
