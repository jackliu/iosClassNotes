//
//  UseString.m
//  objc-demo
//
//  Created by liu on 13-4-26.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "UseString.h"

@implementation UseString


//创建字符串
-(void)createString
{
    //经典创建,OC 中默认按照 UTF-8 编码集创建文字
    NSString *str1 = @"helloさくらااشااصت";
    NSLog(str1);
    NSLog(@"输出字符串为 %@ ",str1);
    
    
    //类方法创建
    //NSString *str2 = [NSString stringWithString:@"hello"];
    
    //初始化
    NSString *st3 = [[NSString alloc]initWithFormat:@"%@ %i %@",@"hello",120,@"boy"];
    
    //格式化创建，格式类似于  NSLog()  ，可以拼接各种类型值为一个字符串
    NSString *str4 = [NSString stringWithFormat:@"aaa %@ %@  %i",@"bbb",@"ccc",200];
    NSLog(@"str4 = %@ ",str4);
    
}


@end





