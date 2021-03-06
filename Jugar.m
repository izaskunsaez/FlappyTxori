//
//  Jugar.m
//  FlappyTxori
//
//  Created by Berganza on 08/09/14.
//  Copyright (c) 2014 Berganza. All rights reserved.
//

#import "Jugar.h"

@implementation Jugar

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        
        
        self.scaleMode = SKSceneScaleModeAspectFit;
        [self addChild:self.volver];
        
    }
    return self;
}


- (SKLabelNode *)volver {
    SKLabelNode *volver = [SKLabelNode labelNodeWithFontNamed:@"Futura-Medium"];
    volver.text = @"volver";
    volver.fontSize = 24;
    volver.zPosition = 2;
    volver.position = CGPointMake(CGRectGetMidX(self.frame),CGRectGetMidY(self.frame));
    volver.name = @"volver";
    return volver;
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    SKNode *node = [self nodeAtPoint:location];
    
    if ([node.name isEqualToString:@"volver"]) {
        
        
        SKTransition *reveal = [SKTransition doorsCloseVerticalWithDuration:2];
        Menu * escena = [Menu sceneWithSize:self.frame.size];
        [self.view presentScene:escena transition: reveal];
    }
}

@end
