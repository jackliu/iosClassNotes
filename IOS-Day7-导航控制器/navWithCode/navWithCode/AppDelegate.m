//
//  AppDelegate.m
//  navWithCode
//
//  Created by shangdejigou on 13-10-31.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"

@implementation AppDelegate

@synthesize window,root,nav;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //程序启动，创建我们自己的视图控制器代码
    root= [[RootViewController alloc]initWithNibName:@"RootViewController" bundle:nil];

    //美化导航栏
    //1 添加导航栏的背景图片
    UIImage *backImg1 = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"5-blue-menu-bar" ofType:@"png"]];
    //UIImage *backImg2 = [UIImage imageNamed:@"5-blue-menu-bar.png"];
    [root.navigationController.navigationBar setBackgroundImage:backImg1 forBarMetrics:UIBarMetricsDefault];
    

    
    //把我们的根视图插入到 导航控制器中
    //后面的 root 跳转到的界面，都会由这个导航控制器管理
    nav = [[UINavigationController alloc]initWithRootViewController:root];

    //把导航控制器放入 Window 对象中
    self.window.rootViewController = nav;
    
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

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
