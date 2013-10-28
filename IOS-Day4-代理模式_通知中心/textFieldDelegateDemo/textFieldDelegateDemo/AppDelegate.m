//
//  AppDelegate.m
//  textFieldDelegateDemo
//
//  Created by shangdejigou on 13-10-28.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import "AppDelegate.h"
//创建根视图对象，必须导入
#import "RootViewController.h"

@implementation AppDelegate

@synthesize root,window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //用户看到的屏幕中组成:
    //UIScreen 屏幕，不分状态栏、导航栏的，提供了尺寸,类似窗洞
    //UIWindow 窗口，不负责显示，管理所有的 view，所有的 view 放在 window 内部
    //类似与 窗洞上安装得 框子
    //UIView   视图，负责显示
    
    //根据 屏幕的尺寸(Frame)，创建一个 窗口
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //设置窗口的背景颜色
    //self.window.backgroundColor = [UIColor whiteColor];
    
    //创建根视图对象
    //按照 RootViewController.m 初始化，按照 控制器代码初始化
    //root = [[RootViewController alloc]init];
    //root.view.backgroundColor = [UIColor greenColor];
    //按照 RootViewController.xib 初始化，按照 视图IB 文件初始化
    root = [[RootViewController alloc]initWithNibName:@"RootViewController" bundle:nil];
     
    
    //把根视图添加到窗口中，让窗口作为根视图进行管理，窗口一开就显示RootView
    self.window.rootViewController = root;
    
    //设置，让窗口可见
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
