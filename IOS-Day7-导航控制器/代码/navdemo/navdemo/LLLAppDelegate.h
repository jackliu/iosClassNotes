//
//  LLLAppDelegate.h
//  navdemo
//
//  Created by liu on 13-4-19.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LLLViewController;

@interface LLLAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) LLLViewController *viewController;
@property(strong,nonatomic) UINavigationController *navController;

@end
