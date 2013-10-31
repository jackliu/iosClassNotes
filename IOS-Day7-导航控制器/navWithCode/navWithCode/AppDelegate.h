//
//  AppDelegate.h
//  navWithCode
//
//  Created by shangdejigou on 13-10-31.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

//启动程序 UIApplication ，进入根视图
@class RootViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

//新增属性
@property(strong,nonatomic)RootViewController *root;
@property(strong,nonatomic)UINavigationController *nav;

@end






