//
//  SCJDAppDelegate.h
//  TimeToMidnight
//
//  Created by liu on 13-2-23.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SCJDViewController;

@interface SCJDAppDelegate : NSObject <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) SCJDViewController *viewController;


//设置定时器类，让程序一秒钟，重新加载一次
@property (strong, nonatomic) NSTimer *timer;

-(void)onTimer;


@end







