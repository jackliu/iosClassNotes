//
//  LLLAppDelegate.h
//  ios-05-28-XMLDemo
//
//  Created by liu on 13-5-28.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ProvinceTableViewController;

@interface LLLAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property(strong,nonatomic)UINavigationController *root;
@property (strong, nonatomic) ProvinceTableViewController *viewController;

@end
