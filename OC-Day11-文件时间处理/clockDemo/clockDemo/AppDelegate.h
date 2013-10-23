//
//  AppDelegate.h
//  clockDemo
//
//  Created by shangdejigou on 13-10-20.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@property(strong,nonatomic)NSTimer *timer;

-(void)onTimer;

@end
