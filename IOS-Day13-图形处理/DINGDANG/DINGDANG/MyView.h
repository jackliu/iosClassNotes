//
//  MyView.h
//  DINGDANG
//
//  Created by shangdejigou on 13-5-18.
//  Copyright (c) 2013年 zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyView : UIView
{
    CGContextRef myContext;
    NSMutableArray *muarr;
}

//接收主界面传递过来的滑块角度值
@property(nonatomic)CGFloat faceValue;

@end







