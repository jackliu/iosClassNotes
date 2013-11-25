/***
 * Excerpted from "iOS Recipes",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material, 
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose. 
 * Visit http://www.pragmaticprogrammer.com/titles/cdirec for more book information.
***/
//
//  PRPViewTransition.h
//  OpeningTransition
//
//  Created by Paul Warren on 2/15/11.
//  Copyright 2011 Primitive Dog Software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "UIView+PRPCompositedView.h"



@interface PRPViewTransition : UIView {
    
    int count;
    int layerNum;
    CGFloat width;
    CGFloat height;
    CGFloat unitSize;
    CGFloat duration;
    int numLayers;
}

@property (nonatomic, retain) CALayer *transform;
@property (nonatomic, retain) CALayer *stripLayer;
@property (nonatomic, assign)  CGFloat duration;
@property (nonatomic, assign)  int numLayers;

+ (PRPViewTransition *) viewWithView:(UIView *)view splitInto:(int)layers;
- (void)cutLayersFromImage:(UIImage *)image;
- (void) createRotatingLayers;
- (void) SwitchLayers;

@end
