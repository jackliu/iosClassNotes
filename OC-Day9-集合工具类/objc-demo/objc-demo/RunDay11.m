//
//  RunDay11.m
//  objc-demo
//
//  Created by liu on 13-4-28.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "RunDay11.h"
#import "ZhuMing.h"

@implementation RunDay11


-(void)run
{
    @autoreleasepool {
        [self demo1];
    }
}

-(void)demo1
{
    //创建 朱明 对象，看看他是否能够做程序员的工作
    ZhuMing *z = [[ZhuMing alloc]init];
    [z eat];
    
    //判断 某个对象是否实现了协议中的方法(必须实现 @required)
    if ([z conformsToProtocol:@protocol(IOSCoder)]) {
        NSLog(@" z  对象，没有实现协议中的 必选方法..");
    }
    
    //判断 对象是否实现了某个协议中的方法
    if ([z respondsToSelector:@selector(workOverTime)]) {
        NSLog(@"z 对象，实现了某个方法 ");
        [z workOverTime];
    }
        
    
}


@end





