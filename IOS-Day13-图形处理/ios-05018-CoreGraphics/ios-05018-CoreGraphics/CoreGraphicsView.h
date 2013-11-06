//
//  CoreGraphicsView.h
//  ios-05018-CoreGraphics
//
//  Created by liu on 13-5-18.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CoreGraphicsView : UIView
{
    //定义整个视图唯一的一个上下文对象 
    CGContextRef context;
}

@end





