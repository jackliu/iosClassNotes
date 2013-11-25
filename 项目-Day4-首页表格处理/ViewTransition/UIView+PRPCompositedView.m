/***
 * Excerpted from "iOS Recipes",
 * published by The Pragmatic Bookshelf.
 * Copyrights apply to this code. It may not be used to create training material, 
 * courses, books, articles, and the like. Contact us if you are in doubt.
 * We make no guarantees that this code is fit for any purpose. 
 * Visit http://www.pragmaticprogrammer.com/titles/cdirec for more book information.
***/
//
//  UIView+PRPCompositedView.m
//  CompositedTransformations
//
//  Created by Paul Warren on 9/7/10.
//  Copyright 2010 Primitive Dog Software. All rights reserved.
//

#import "UIView+PRPCompositedView.h"
#import <QuartzCore/QuartzCore.h>


@implementation UIView (PRPCompositedView)

- (UIImage *)PRPCompositeView {
    
    UIGraphicsBeginImageContextWithOptions(self.layer.bounds.size, NO, 0);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];      
    UIImage *compoundImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return compoundImage;
}

@end
