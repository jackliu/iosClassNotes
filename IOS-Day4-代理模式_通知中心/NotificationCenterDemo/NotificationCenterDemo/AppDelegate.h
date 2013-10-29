//
//  AppDelegate.h
//  NotificationCenterDemo
//
//  Created by shangdejigou on 13-10-29.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

//启动默认创建的窗口对象
@property (strong, nonatomic) UIWindow *window;
//启动希望第一个加载的 根视图
@property(strong,nonatomic)RootViewController *root;


@end




