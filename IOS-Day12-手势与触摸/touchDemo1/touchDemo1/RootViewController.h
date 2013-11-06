//
//  RootViewController.h
//  touchDemo1
//
//  Created by shangdejigou on 13-11-6.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

//定义用户滑动最少多少像素算一个 手势
#define kMinSwipLength 25
//定义滑动时，偏移最多多少像素的误差
#define kMaxVariance  6


//在当前界面中添加可以移动的按钮

@class MyButton;

@interface RootViewController : UIViewController

//状态
@property (strong, nonatomic) IBOutlet UILabel *lbl1;
//手指数
@property (strong, nonatomic) IBOutlet UILabel *lbl2;
//点击数
@property (strong, nonatomic) IBOutlet UILabel *lbl3;
//手指坐标点
@property (strong, nonatomic) IBOutlet UILabel *lbl4;
//手指移动的方向
@property (strong, nonatomic) IBOutlet UILabel *lbl5;

//定义触摸的开始点
@property(assign,nonatomic)CGPoint popBegin;

//自定义按钮
@property(strong,nonatomic)MyButton *mButton;

//显示所有的 手指数目和点击次数
-(void)getTouchsAndTaps:(NSSet *)touches;



@end





