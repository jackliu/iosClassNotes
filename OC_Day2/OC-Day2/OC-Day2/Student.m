//
//  Student.m
//  OC-Day2
//
//  Created by liu on 13-10-8.
//  Copyright (c) 2013年 liu. All rights reserved.
//

#import "Student.h"

@implementation Student

//实现 属性的  getter/setter 方法
//用  @synthesize  同步关键字
@synthesize name,age,number;

//自定义初始化方法，
//自己把 NSObject 中的 init 方法，重写一遍
//自定义的不带参数的 init ，不管你是否需要，都定义一个固定的值
-(id)init
{
    //判断，固定语法,判断父类是否帮助你初始化过
    if (self == [super init]) {
        //如果没有，自己动手
        name = @"小米";
        age = 5;
        number = @"红米";
    }
    
    return self;
}


//如果手动释放内存，重写一遍  dealloc
//这个方法，写完，放这，不用管合适调用
- (void)dealloc
{
    //把各个属性的值设置为原始状态
    name =nil;
    age = 0;
    number = nil;
}


-(void)print
{
    NSLog(@"姓名:%@ , 年龄 :%d , 学号:%@ ",self.name,[self age],[self number]);
}

@end



