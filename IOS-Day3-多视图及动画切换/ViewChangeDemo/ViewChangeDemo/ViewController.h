//
//  ViewController.h
//  ViewChangeDemo
//
//  Created by shangdejigou on 13-10-25.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>
//import 不管是否 使用，编译时会默认全部导入
//#import "FirstViewController.h"

//ViewController 是第一个启动的界面----根视图  rootView
//使用 rootView ，作为其他多个界面的切换控制器

//头文件中，不用 import 导入，可以使用 @class 声明
//FirstViewController 在本工程中定义过
@class FirstViewController;
@class SecondViewController;
@class ThirdViewController;

//当前类是 视图控制器类，
//控制 ViewController.xib 生成的视图
@interface ViewController : UIViewController

//希望显示 FirstViewController.xib，
//需要创建 FirstViewController 控制器对象
//三个视图，都需要插入到  root View 中
@property(nonatomic,retain)FirstViewController *first;
@property(nonatomic,retain)SecondViewController *second;
@property(nonatomic,retain)ThirdViewController *third;


//切换界面  按钮的操作
- (IBAction)toFiestView:(UIButton *)sender;

- (IBAction)toSecondView:(id)sender;

- (IBAction)toThirdView:(UIButton *)sender;


//统一的切换界面方法
-(void)toggleView:(int) tag;


@end





