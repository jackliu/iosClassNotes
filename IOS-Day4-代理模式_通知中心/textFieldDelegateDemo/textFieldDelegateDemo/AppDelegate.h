//
//  AppDelegate.h
//  textFieldDelegateDemo
//
//  Created by shangdejigou on 13-10-28.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

//启动将要调用的 根视图
@class RootViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property(strong,nonatomic)RootViewController *root;


@end




