//
//  MyButton.h
//  touchDemo1
//
//  Created by shangdejigou on 13-11-6.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//  自定义按钮，能够在屏幕上拖动

#import <UIKit/UIKit.h>

@interface MyButton : UIButton


//定义起点
@property(assign,nonatomic)CGPoint beginPoint;

@end
