//
//  AppDelegate.m
//  clock
//
//  Created by liu on 13-10-17.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize vc,timer;

//计时方法
-(void)onTimer
{
    //更新界面中的   时间标签
    [vc updateLabel];
}

//didFinishLaunchingWithOptions 程序启动，第一个调用的方法
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    //创建计时器
    timer = [NSTimer scheduledTimerWithTimeInterval:(1.0) target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.vc = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    self.window.rootViewController = self.vc;
    [self.window makeKeyAndVisible];

    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

//程序终止，调用的方法
- (void)applicationWillTerminate:(UIApplication *)application
{
    //终止计时器对象
    [timer invalidate];
}

@end
