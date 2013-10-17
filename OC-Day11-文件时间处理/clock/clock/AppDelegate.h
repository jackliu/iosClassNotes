//
//  AppDelegate.h
//  clock
//
//  Created by liu on 13-10-17.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

//界面控制器对象
@property(nonatomic,strong)ViewController *vc;

//设置定时器类，让程序一秒钟，重新加载一次
@property (strong, nonatomic) NSTimer *timer;

//计时方法
-(void)onTimer;


@end





