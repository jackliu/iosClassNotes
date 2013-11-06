//
//  LLLViewController.h
//  ios-05018-CoreGraphics
//
//  Created by liu on 13-5-18.
//  Copyright (c) 2013年 liu. All rights reserved.
//  如果希望自己绘图，不能在 UIViewController 类中编写代码
//  要新建一个 UIView 的子类，重写 -drawRect: (重绘)
//  该方法能够把整个屏幕，按照 -drawRect: 中的代码，重新刷新

#import <UIKit/UIKit.h>

//希望能够显示自己绘制的视图
@class CoreGraphicsView;

@interface LLLViewController : UIViewController

//自定义的视图
@property(nonatomic,strong)CoreGraphicsView *cview;

@end











