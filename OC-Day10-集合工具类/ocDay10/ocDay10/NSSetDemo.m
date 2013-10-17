//
//  NSSetDemo.m
//  ocDay10
//
//  Created by liu on 13-10-16.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "NSSetDemo.h"
#import "Car.h"

@implementation NSSetDemo

//演示  堆 对象的创建和迭代
-(void)demo1
{
    Car *c1 =[[Car alloc]init];
    [c1 setName:@"哈佛H4"];
    [c1 setPrice:[NSNumber numberWithInt:8]];
    
    Car *c2 =[[Car alloc]init];
    [c2 setName:@"奔腾X80"];
    [c2 setPrice:[NSNumber numberWithInt:18]];
    
    Car *c3 =[[Car alloc]init];
    [c3 setName:@"丰田RAV4"];
    [c3 setPrice:[NSNumber numberWithInt:21]];

    
    //方法一、类方法，重复的元素自动清理 Car 对象默认继承 NSObject
    //NSObject 协议中规定了 compare 方法,Set 对象自动调用 放入对象的 比较方法
    NSSet *set1 = [NSSet setWithObjects:c1,c2,c3,c1,nil];
    
    //方法二、初始化方法
    
    
    //其他取值方法，没有  key   index
    //随便取出一个值
    Car *cc= [set1 anyObject];
    NSLog(@"随便取的值是 ：  %@  %@",[cc name],[cc price]);
    
    
    //取值只能使用 迭代器，因为 Set 没有  index 索引
    NSEnumerator *en = [set1 objectEnumerator];
    Car *temp = nil;
    while ((temp = [en nextObject])) {
        NSLog(@"%@  %@",[temp name],[temp price]);
    }
    
    
}

@end







