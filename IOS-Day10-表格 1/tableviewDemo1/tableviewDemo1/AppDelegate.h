//
//  AppDelegate.h
//  tableviewDemo1
//
//  Created by shangdejigou on 13-11-5.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>


@class RootViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
//创建根视图属性
@property(nonatomic,strong)UINavigationController *nav;
@property(nonatomic,strong)RootViewController *root;


@end







