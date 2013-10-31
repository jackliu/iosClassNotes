//
//  AppDelegate.h
//  tabbarDemo1
//
//  Created by shangdejigou on 13-10-31.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

//新建 tabbar 控制器，连接到 IB
@property(strong,nonatomic)IBOutlet UITabBarController *root;



@end




