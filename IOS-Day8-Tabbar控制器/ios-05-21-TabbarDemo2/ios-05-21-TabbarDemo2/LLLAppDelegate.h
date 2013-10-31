//
//  LLLAppDelegate.h
//  ios-05-21-TabbarDemo2
//
//  Created by liu on 13-5-21.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LLLAppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

//1 声明 UITabBarController 控制器对象
@property (strong, nonatomic) UITabBarController *tabBarController;

@end






