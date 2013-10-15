//
//  ZhuMing.m
//  objc-demo
//
//  Created by liu on 13-4-28.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "ZhuMing.h"

@implementation ZhuMing


//协议中规定必须实现的方法   @required 要求，命令
-(void)useObjectiveC
{
    NSLog(@"精通 Objective-C ....");
}

-(void)useXCode
{
    NSLog(@"熟练使用 XCode ....");
}

-(void)useCocoa
{
    NSLog(@"精通 Cocoa 框架 ....");
}

//协议中规定可以不实现，可以选方法  @optional
-(void)usePhotoShop
{
    NSLog(@"会美工");
}

-(void)workOverTime
{
    NSLog(@"愿意适当的 加班");
}

-(void)serveForBoss
{
    NSLog(@"为老板服务");
}


@end
