//
//  main.m
//  ViewChanges
//
//  Created by shangdejigou on 13-10-29.
//  Copyright (c) 2013年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        //UIApplicationMain 管理启动时 UIApplication 和 UIApplicationDelegate 对象
        //UIApplication 代表整个应用程序，一个程序只有一个该对象
        //UIApplicationDelegate 协议定义了整个应用程序的生命周期-创建、调用、销毁等过程,一个程序只有一个 代理类对象
        //UIApplicationMain 帮助我们制定 该程序的代理类对象  AppDelegate
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}








