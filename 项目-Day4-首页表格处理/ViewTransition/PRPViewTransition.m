/***
 * Excerpted from "iOS Recipes",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material, 
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose. 
 * Visit http://www.pragmaticprogrammer.com/titles/cdirec for more book information.
***/
//
//  PRPViewTransition.m
//  OpeningTransition
//
//  Created by Paul Warren on 2/15/11.
//  Copyright 2011 Primitive Dog Software. All rights reserved.
//

#import "PRPViewTransition.h"
#define SIDES 6

@implementation PRPViewTransition

@synthesize transform;
@synthesize stripLayer;
@synthesize duration;
@synthesize numLayers;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        duration = 1.0;
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

+ (PRPViewTransition *) viewWithView:(UIView *)view splitInto:(int)parts {  
    PRPViewTransition *tempView = [[PRPViewTransition alloc] 
                                        initWithFrame:view.frame];
    tempView.numLayers = parts;
    [tempView cutLayersFromImage:[view PRPCompositeView]];

    return [tempView autorelease];
}

- (void)didMoveToSuperview {
    [self createRotatingLayers];
    [self SwitchLayers];
}

- (void)cutLayersFromImage:(UIImage *)image {
    
    width = self.bounds.size.width/numLayers;
    height = self.bounds.size.height;
    unitSize = 1.0/numLayers;
    stripLayer = [CALayer layer];
    [self.layer addSublayer:stripLayer];
    for (int i = 0; i < numLayers; i++) {
        CALayer *layer = [CALayer layer];
        layer.contents = (id)image.CGImage;
        CGRect posRect = CGRectMake(width*i, 0, width, height);
        layer.contentsRect = CGRectMake(unitSize*i, 0, unitSize, 1);
        layer.frame = posRect;
        [stripLayer addSublayer:layer];
    }    
}

- (void) createRotatingLayers {
    transform = [CALayer layer];
    transform.frame = CGRectMake(self.bounds.size.width-width/2, 0, 1, 1);
    transform.backgroundColor = [UIColor whiteColor].CGColor;
    [self.layer addSublayer:transform];
    CATransform3D t = CATransform3DMakeTranslation(-width/2, 0, 0);
    for (int i=0; i < SIDES ; i++) {
        CALayer *rotLayer = [CALayer layer];
        rotLayer.anchorPoint = CGPointMake(1, 1);
        rotLayer.frame = CGRectMake(0, 0, width, height);
        rotLayer.zPosition = -width*0.866;
        rotLayer.transform = t;
        [transform addSublayer:rotLayer];
        
        t = CATransform3DRotate(t, -M_PI*2/SIDES, 0, 1, 0);
        t = CATransform3DTranslate(t, width, 0, 0);
    }
    count = 0;
    layerNum = 0;
}

- (void) animateLayers {
    CABasicAnimation *anim = [CABasicAnimation 
                    animationWithKeyPath:@"sublayerTransform.rotation.y"];
    anim.fromValue = [NSNumber numberWithFloat:-M_PI*2/SIDES*count];
    anim.toValue = [NSNumber numberWithFloat:-M_PI*2/SIDES*(count+1)];
    anim.duration = duration/numLayers;
    anim.removedOnCompletion = NO;
    anim.fillMode = kCAFillModeBoth;
    anim.delegate = self;    
    [transform addAnimation:anim forKey:@"subRot"];
    anim = [CABasicAnimation 
                animationWithKeyPath:@"sublayerTransform.translation.x"];
    anim.fromValue = [NSNumber numberWithFloat:-width*count];
    anim.toValue = [NSNumber numberWithFloat:-width*(count+1)];
    anim.duration = duration/numLayers*0.98;
    anim.removedOnCompletion = NO;
    anim.fillMode = kCAFillModeBoth;
    [transform addAnimation:anim forKey:@"subTrans"];
    count++;
}

- (void) SwitchLayers {
    CALayer *oldLayer = [stripLayer.sublayers objectAtIndex:
                                    numLayers-count-1];
    CALayer * tLayer = [transform.sublayers objectAtIndex:layerNum];
    [CATransaction setValue:(id)kCFBooleanTrue
                     forKey:kCATransactionDisableActions];
    tLayer.contents = oldLayer.contents;
    [oldLayer removeFromSuperlayer];
    tLayer.contentsRect = CGRectMake(unitSize*(numLayers-count-1), 
                                     0, unitSize, 1);
    [self animateLayers];
    layerNum--;
    if (layerNum < 0) layerNum = SIDES-1;
}

- (void)animationDidStop:(CAAnimation *)theAnimation finished:(BOOL)flag {
    if (count < numLayers) {        
        [self SwitchLayers];
    } else if (count == numLayers) {        
        [self animateLayers]; 
    } else {  // Reached the end        
        [self removeFromSuperview];
    }    
}


@end
