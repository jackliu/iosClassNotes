//
//  Teacher.m
//  ocDay5
//
//  Created by liu on 13-10-10.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher


//知识点二：方法的重写
-(void)printMessage
{
    NSLog(@"这里是 Teacher 类");
}


//知识点六：方法的重载
//在同一个类中，方法名称相同，参数不同的多个方法叫 ---- 重载
-(void)say
{
    NSLog(@"hello");
}

-(void)say:(NSString *)content
{
    NSLog(@"hello  %@ ",content);
}

-(void)say:(NSString *)content :(int)time
{
    for (int i=0; i<time; i++) {
        [self say:content];
    }
}



@end
