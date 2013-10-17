//
//  SCJDAppDelegate.m
//  TimeToMidnight
//
//  Created by liu on 13-2-23.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "SCJDAppDelegate.h"

#import "SCJDViewController.h"

@implementation SCJDAppDelegate

//实现头文件中声明过的属性
@synthesize window;
@synthesize viewController;
@synthesize timer;



- (void)onTimer {
	[viewController updateLabel];
}

- (void)applicationWillTerminate:(UIApplication *)application {
	[timer invalidate];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //添加计时器控制
 timer = [NSTimer scheduledTimerWithTimeInterval:(1.0) target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController = [[SCJDViewController alloc] initWithNibName:@"SCJDViewController" bundle:nil];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{

}



@end
