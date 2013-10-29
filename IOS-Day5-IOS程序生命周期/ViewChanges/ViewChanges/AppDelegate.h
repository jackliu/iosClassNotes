//
//  AppDelegate.h
//  ViewChanges
//
//  Created by shangdejigou on 13-10-29.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

//AppDelegate 实现了 UIApplicationDelegate 协议，
//它就是 UIApplication 的代理对象
//AppDelegate 可以控制整个程序的生命周期 , 这些状态由 IOS 系统管理
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property(strong,nonatomic)RootViewController *root;



@end






